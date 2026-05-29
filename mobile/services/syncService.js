import NetInfo from "@react-native-community/netinfo";
import api from "./api";
import db from "../database/sqlite";
import { log } from "../utils/logger";

let isSyncRunning = false;

// ==============================
// 🔄 SYNC PRINCIPAL
// ==============================
export async function syncLeituras() {
  if (isSyncRunning) {
    log("SYNC", "Sync já em execução, ignorando...");
    return;
  }

  isSyncRunning = true;

  log("SYNC", "🚀 Iniciando sincronização...");

  try {
    const net = await NetInfo.fetch();

    if (!net.isConnected) {
      log("SYNC", "❌ Sem internet");
      isSyncRunning = false;
      return { success: false, offline: true };
    }

    const leituras = await db.getAllAsync(
      "SELECT * FROM leituras WHERE sync = 0"
    );

    if (!leituras.length) {
      log("SYNC", "✅ Nenhuma leitura pendente");
      isSyncRunning = false;
      return { success: true, empty: true };
    }

    log("SYNC", `📦 ${leituras.length} pendentes`);

    let enviados = 0;
    let erros = 0;

    for (const leitura of leituras) {
      try {
        log("SYNC", "📤 Enviando", { id: leitura.id });

        const response = await api.post("/leituras", {
          local_id: leitura.id,
          imovel_id: leitura.imovel_id,
          leitura: leitura.leitura,
          data: leitura.data,
          observacao: leitura.observacao,
        });

        // ✅ sucesso real OU já existe (backend protegido)
        if (
          response?.data?.success ||
          response?.data?.message === "Leitura já sincronizada"
        ) {
          await db.runAsync(
            "UPDATE leituras SET sync = 1 WHERE id = ?",
            [leitura.id]
          );

          enviados++;

          log("SYNC", "✅ Sincronizado", { id: leitura.id });
        } else {
          erros++;

          log("ERROR", "⚠️ Falha lógica", {
            id: leitura.id,
            response: response?.data,
          });
        }
      } catch (err) {
        erros++;

        log("ERROR", "❌ Erro envio", {
          id: leitura.id,
          erro: err?.message,
        });

        // ⚠️ não marca como sync (continua pendente)
      }
    }

    const resultado = {
      success: true,
      enviados,
      erros,
      total: leituras.length,
    };

    log("SYNC", "📊 Resultado final", resultado);

    isSyncRunning = false;
    return resultado;
  } catch (err) {
    log("ERROR", "🔥 Erro geral no sync", {
      erro: err?.message,
    });

    isSyncRunning = false;

    return {
      success: false,
      error: true,
    };
  }
}

// ==============================
// 🌐 AUTO SYNC (internet voltou)
// ==============================
export function startAutoSync() {
  log("SYNC", "🌐 Monitorando conexão...");

  const unsubscribe = NetInfo.addEventListener((state) => {
    if (state.isConnected) {
      log("SYNC", "📶 Internet detectada → iniciar sync");
      syncLeituras();
    }
  });

  return unsubscribe;
}

// ==============================
// 🔁 SYNC MANUAL (botão)
// ==============================
export async function syncManual() {
  log("SYNC", "👆 Sync manual acionado");

  return await syncLeituras();
}

// ==============================
// ⏱ SYNC AUTOMÁTICO POR TEMPO
// ==============================
export function startIntervalSync(interval = 60000) {
  log("SYNC", `⏱ Sync automático a cada ${interval / 1000}s`);

  const timer = setInterval(() => {
    syncLeituras();
  }, interval);

  return () => clearInterval(timer);
}
