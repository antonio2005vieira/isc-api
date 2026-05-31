import NetInfo from "@react-native-community/netinfo";
import axios from "axios";

import {
  getPendingQueue,
  markAsSent,
  markAsFailed,
} from "./syncQueue";

/**
 * ============================
 * 🌐 API PRODUÇÃO (SEM LOCALHOST)
 * ============================
 */
const API_URL = "https://isc-api.onrender.com";

/**
 * ============================
 * 🔒 controle de execução
 * ============================
 */
let isSyncRunning = false;

/**
 * ============================
 * 🌐 verificar internet
 * ============================
 */
export async function isOnline() {
  try {
    const state = await NetInfo.fetch();

    return (
      state.isConnected === true &&
      state.isInternetReachable !== false
    );
  } catch (err) {
    console.log("NetInfo error:", err);
    return false;
  }
}

/**
 * ============================
 * 🚀 sync principal
 * ============================
 */
export async function runSync(token) {
  if (isSyncRunning) {
    console.log("⏳ Sync já em execução");
    return;
  }

  isSyncRunning = true;

  try {
    const online = await isOnline();

    if (!online) {
      console.log("📴 Offline - sync cancelado");
      return;
    }

    if (!token) {
      console.log("⚠️ Token ausente");
      return;
    }

    const queue = await getPendingQueue();

    if (!queue || queue.length === 0) {
      console.log("✔ Nada para sincronizar");
      return;
    }

    console.log(`🔄 Sync iniciado (${queue.length})`);

    for (const item of queue) {
      await processItem(item, token);
    }

    console.log("✔ Sync finalizado");

  } catch (err) {
    console.log("❌ runSync error:", err?.message || err);
  } finally {
    isSyncRunning = false;
  }
}

/**
 * ============================
 * 📤 processar item
 * ============================
 */
async function processItem(item, token) {
  const headers = {
    Authorization: `Bearer ${token}`,
    "Content-Type": "application/json",
  };

  try {
    switch (item.tipo) {

      /**
       * ======================
       * LEITURA
       * ======================
       */
      case "LEITURA":
        await axios.post(
          `${API_URL}/leituras`,
          item.payload,
          {
            headers,
            timeout: 10000,
          }
        );
        break;

      default:
        throw new Error("Tipo inválido: " + item.tipo);
    }

    await markAsSent(item.id);

  } catch (err) {
    console.log("❌ erro item:", item.id);

    await markAsFailed(item.id);

    if (err?.response?.status === 401) {
      console.log("🔒 Token inválido - interrompendo sync");
      throw err;
    }
  }
}

/**
 * ============================
 * 🔁 auto sync
 * ============================
 */
export function startAutoSync(token, interval = 30000) {
  setInterval(() => {
    runSync(token);
  }, interval);
}
