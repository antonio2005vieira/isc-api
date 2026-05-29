import {
  listarImoveisOffline,
  listarLeiturasOffline,
  salvarImoveisOffline
} from "../database/sqlite";

import { logError, logWarning } from "../utils/errorHandler";

// ================= IMÓVEIS =================
export async function getImoveisSafe() {

  try {

    const data = await listarImoveisOffline();

    if (!data || data.length === 0) {
      logWarning("OFFLINE", "Nenhum imóvel encontrado offline");
      return [];
    }

    return data;

  } catch (err) {

    logError("offlineService - getImoveisSafe", err);

    return [];
  }
}

// ================= LEITURAS =================
export async function getLeiturasSafe() {

  try {

    const data = await listarLeiturasOffline();

    if (!data || data.length === 0) {
      logWarning("OFFLINE", "Nenhuma leitura offline");
      return [];
    }

    return data;

  } catch (err) {

    logError("offlineService - getLeiturasSafe", err);

    return [];
  }
}

// ================= SINCRONIZAÇÃO LOCAL =================
export async function syncLocalCache(imoveis = []) {

  try {

    if (!imoveis || imoveis.length === 0) {
      logWarning("OFFLINE SYNC", "Lista vazia para cache");
      return false;
    }

    await salvarImoveisOffline(imoveis);

    console.log("📦 Cache offline atualizado");

    return true;

  } catch (err) {

    logError("offlineService - syncLocalCache", err);

    return false;
  }
}
