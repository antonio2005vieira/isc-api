import NetInfo from "@react-native-community/netinfo";
import { syncLeiturasOffline } from "./syncService";

let isSyncing = false;

/**
 * Inicia monitoramento de internet
 */
export function startAutoSync() {
  NetInfo.addEventListener(async (state) => {
    if (state.isConnected && !isSyncing) {
      isSyncing = true;

      try {
        console.log("🌐 Internet detectada - iniciando sync automático");

        const result = await syncLeiturasOffline();

        console.log("🔄 Sync concluído:", result);
      } catch (err) {
        console.log("Erro auto sync:", err);
      }

      isSyncing = false;
    }
  });
}
