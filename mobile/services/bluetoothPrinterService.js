import {
  BluetoothManager,
  BluetoothEscposPrinter,
} from "react-native-bluetooth-escpos-printer";

import AsyncStorage from "@react-native-async-storage/async-storage";
import { log } from "../utils/logger";

const PRINTER_KEY = "ISC_PRINTER";

// ==============================
// 📡 LISTAR DISPOSITIVOS
// ==============================
export async function listarImpressoras() {
  try {
    const devices = await BluetoothManager.getDeviceList();
    log("BLUETOOTH", "📡 Dispositivos encontrados", devices);
    return devices;
  } catch (err) {
    log("ERROR", "Erro ao listar Bluetooth", err);
    return [];
  }
}

// ==============================
// 🔗 CONECTAR IMPRESSORA
// ==============================
export async function conectarImpressora(address) {
  try {
    await BluetoothManager.connect(address);
    log("BLUETOOTH", "🔗 Conectado na impressora", address);
    return true;
  } catch (err) {
    log("ERROR", "Erro conexão Bluetooth", err);
    return false;
  }
}

// ==============================
// 💾 SALVAR IMPRESSORA PADRÃO
// ==============================
export async function salvarImpressora(device) {
  try {
    await AsyncStorage.setItem(PRINTER_KEY, JSON.stringify(device));
    log("BLUETOOTH", "💾 Impressora salva", device);
  } catch (err) {
    log("ERROR", "Erro salvar impressora", err);
  }
}

// ==============================
// 📥 PEGAR IMPRESSORA SALVA
// ==============================
export async function getImpressoraSalva() {
  try {
    const data = await AsyncStorage.getItem(PRINTER_KEY);
    return data ? JSON.parse(data) : null;
  } catch (err) {
    return null;
  }
}

// ==============================
// 🖨️ IMPRIMIR TESTE NA SALVA
// ==============================
export async function imprimirTesteSalvo() {
  try {
    await BluetoothEscposPrinter.printText("TESTE ISC SANEP\n\n", {});
  } catch (err) {
    log("ERROR", "Erro teste impressão", err);
  }
}
