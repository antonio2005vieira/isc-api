import { BluetoothEscposPrinter } from "react-native-bluetooth-escpos-printer";
import { log } from "../utils/logger";

let isPrinting = false;

/**
 * ==============================
 * 🔄 RESET IMPRESSORA
 * ==============================
 */
async function resetPrinter() {
  await BluetoothEscposPrinter.printText("\x1B\x40", {});
}

/**
 * ==============================
 * 🖨️ IMPRIMIR LEITURA
 * ==============================
 */
export async function imprimirLeitura(dados) {
  if (isPrinting) {
    log("PRINTER", "⏳ Impressão já em andamento");
    return;
  }

  isPrinting = true;

  try {
    log("PRINTER", "🖨️ Iniciando impressão", dados);

    await resetPrinter();

    // ================= HEADER =================
    await BluetoothEscposPrinter.printText("ISC SANEP\n", {
      encoding: "UTF-8",
      fonttype: 1,
    });

    await BluetoothEscposPrinter.printText("----------------------\n", {});

    // ================= DADOS =================
    await BluetoothEscposPrinter.printText(
      `Imóvel: ${dados?.imovel ?? "N/A"}\n`,
      {}
    );

    await BluetoothEscposPrinter.printText(
      `Leitura atual: ${dados?.leitura ?? 0} m³\n`,
      {}
    );

    if (dados?.leituraAnterior !== undefined && dados?.leituraAnterior !== null) {
      await BluetoothEscposPrinter.printText(
        `Leitura anterior: ${dados.leituraAnterior} m³\n`,
        {}
      );
    }

    await BluetoothEscposPrinter.printText(
      `Consumo: ${dados?.consumo ?? 0} m³\n`,
      {}
    );

    await BluetoothEscposPrinter.printText(
      `Valor: R$ ${(Number(dados?.valor || 0)).toFixed(2)}\n`,
      {}
    );

    // ================= DATA =================
    await BluetoothEscposPrinter.printText(
      `Data: ${new Date().toLocaleString()}\n`,
      {}
    );

    await BluetoothEscposPrinter.printText("----------------------\n", {});

    // ================= RODAPÉ =================
    await BluetoothEscposPrinter.printText("Operador: ISC MOBILE\n", {});
    await BluetoothEscposPrinter.printText("\n\n\n", {});

    log("PRINTER", "✅ Impressão concluída");

  } catch (err) {
    log("ERROR", "❌ Erro na impressão", {
      erro: err?.message || err,
    });

    throw err;

  } finally {
    isPrinting = false;
  }
}

/**
 * ==============================
 * 🧪 TESTE DA IMPRESSORA
 * ==============================
 */
export async function testarImpressora() {
  if (isPrinting) return;

  isPrinting = true;

  try {
    log("PRINTER", "🧪 Teste de impressão");

    await resetPrinter();

    await BluetoothEscposPrinter.printText("TESTE ISC SANEP\n", {
      encoding: "UTF-8",
      fonttype: 1,
    });

    await BluetoothEscposPrinter.printText("Impressora OK\n", {});
    await BluetoothEscposPrinter.printText("\n\n\n", {});

    log("PRINTER", "✅ Teste concluído");

  } catch (err) {
    log("ERROR", "❌ Erro no teste da impressora", {
      erro: err?.message || err,
    });

    throw err;

  } finally {
    isPrinting = false;
  }
}
