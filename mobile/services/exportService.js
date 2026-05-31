import AsyncStorage from "@react-native-async-storage/async-storage";
import * as Print from "expo-print";
import * as Sharing from "expo-sharing";
import * as FileSystem from "expo-file-system";

// ==============================
// 📥 PEGAR DADOS DA FILA
// ==============================
const getQueue = async () => {
  try {
    const data = await AsyncStorage.getItem("SYNC_QUEUE");
    return data ? JSON.parse(data) : [];
  } catch (err) {
    console.log("getQueue export error:", err);
    return [];
  }
};

// ==============================
// 📄 EXPORTAR PDF (RELATÓRIO COMPLETO)
// ==============================
export const exportPDF = async () => {
  try {
    const data = await getQueue();

    if (!data.length) {
      console.log("PDF export: sem dados");
      return;
    }

    const html = `
      <html>
        <head>
          <style>
            body { font-family: Arial; padding: 20px; }
            h1 { text-align: center; }
            table { width: 100%; border-collapse: collapse; margin-top: 20px; }
            th, td { border: 1px solid #ccc; padding: 8px; text-align: left; }
            th { background: #f2f2f2; }
            .status-done { color: green; }
            .status-pending { color: orange; }
            .status-error { color: red; }
          </style>
        </head>
        <body>
          <h1>Relatório de Leituras</h1>

          <table>
            <tr>
              <th>Imóvel</th>
              <th>Leitura Atual</th>
              <th>Consumo</th>
              <th>Valor</th>
              <th>Status</th>
            </tr>

            ${data
              .map((item) => {
                return `
                <tr>
                  <td>${item.imovel || "-"}</td>
                  <td>${item.leituraAtual || "-"}</td>
                  <td>${item.consumo || "-"}</td>
                  <td>R$ ${item.valor || "0"}</td>
                  <td class="status-${item.status}">
                    ${item.status || "pending"}
                  </td>
                </tr>
              `;
              })
              .join("")}

          </table>
        </body>
      </html>
    `;

    const { uri } = await Print.printToFileAsync({ html });

    await Sharing.shareAsync(uri);

    return uri;
  } catch (err) {
    console.log("exportPDF error:", err);
  }
};

// ==============================
// 📊 EXPORTAR CSV (EXCEL)
// ==============================
export const exportCSV = async () => {
  try {
    const data = await getQueue();

    if (!data.length) {
      console.log("CSV export: sem dados");
      return;
    }

    let csv = "imovel,leituraAtual,consumo,valor,status\n";

    data.forEach((item) => {
      csv += `${item.imovel || ""},${item.leituraAtual || ""},${item.consumo || ""},${item.valor || ""},${item.status || ""}\n`;
    });

    const fileUri = FileSystem.documentDirectory + "relatorio_leituras.csv";

    await FileSystem.writeAsStringAsync(fileUri, csv, {
      encoding: FileSystem.EncodingType.UTF8,
    });

    await Sharing.shareAsync(fileUri);

    return fileUri;
  } catch (err) {
    console.log("exportCSV error:", err);
  }
};

// ==============================
// 📊 EXPORTAÇÃO RESUMIDA (ESTATÍSTICA)
// ==============================
export const exportSummary = async () => {
  try {
    const data = await getQueue();

    const summary = {
      total: data.length,
      pendentes: data.filter((d) => d.status === "pending").length,
      sincronizados: data.filter((d) => d.status === "done").length,
      erros: data.filter((d) => d.status === "error").length,
      geradoEm: new Date().toISOString(),
    };

    const fileUri =
      FileSystem.documentDirectory + "resumo_sistema.json";

    await FileSystem.writeAsStringAsync(
      fileUri,
      JSON.stringify(summary, null, 2)
    );

    await Sharing.shareAsync(fileUri);

    return summary;
  } catch (err) {
    console.log("exportSummary error:", err);
  }
};
