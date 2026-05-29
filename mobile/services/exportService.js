import * as FileSystem from "expo-file-system";
import * as Sharing from "expo-sharing";

import { listarLeiturasOffline } from "../database/sqlite";
import { logError } from "../utils/errorHandler";

// ================= EXPORT CSV =================
export async function exportarLeiturasCSV() {

  try {

    const dados = await listarLeiturasOffline();

    if (!dados || dados.length === 0) {
      return {
        success: false,
        message: "Nenhuma leitura para exportar"
      };
    }

    let csv = "id,imovel_id,leitura,status,created_at\n";

    dados.forEach(item => {
      csv += `${item.id},${item.imovel_id},${item.leitura},${item.status},${item.created_at}\n`;
    });

    const fileUri =
      FileSystem.documentDirectory + "leituras_export.csv";

    await FileSystem.writeAsStringAsync(fileUri, csv);

    await Sharing.shareAsync(fileUri);

    return {
      success: true,
      file: fileUri
    };

  } catch (err) {

    logError("exportService", err);

    return {
      success: false,
      error: err
    };
  }
}
