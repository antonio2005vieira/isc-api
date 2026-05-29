import axios from "axios";

import {
  listarLeiturasPendentes,
  atualizarStatusLeitura
} from "../database/sqlite";

import { logError } from "../utils/errorHandler";

// ================= CONFIG =================
const API_URL = "http://SEU_SERVIDOR/api";

// trava anti execução dupla
let isSyncRunning = false;

// ================= SYNC PRINCIPAL =================
export async function sincronizarLeituras() {

  if (isSyncRunning) return;

  isSyncRunning = true;

  try {

    const leituras = await listarLeiturasPendentes();

    if (!leituras || leituras.length === 0) {
      console.log("📭 Nenhuma leitura para sincronizar");
      return;
    }

    console.log(`🔄 Sync iniciando: ${leituras.length} leituras`);

    for (const leitura of leituras) {

      try {

        await axios.post(`${API_URL}/leituras`, leitura, {
          timeout: 10000
        });

        await atualizarStatusLeitura(leitura.id, "sent");

        console.log("✔ Sync OK:", leitura.id);

      } catch (err) {

        console.log("❌ Sync FAIL:", leitura.id);

        logError("SyncService - leitura", err, leitura);

        await atualizarStatusLeitura(leitura.id, "error");
      }
    }

    console.log("✅ Sync finalizado");

  } catch (err) {

    logError("SyncService - geral", err);

  } finally {

    isSyncRunning = false;
  }
}

// ================= SYNC AUTO =================
export async function syncAuto() {

  try {

    await sincronizarLeituras();

  } catch (err) {

    logError("SyncService - auto", err);
  }
}

// ================= SYNC ON START =================
export async function syncOnStart() {

  try {

    setTimeout(() => {
      sincronizarLeituras();
    }, 3000);

  } catch (err) {

    logError("SyncService - start", err);
  }
}
