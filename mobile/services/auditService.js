import AsyncStorage from "@react-native-async-storage/async-storage";

const KEY = "APP_LOGS";
const MAX_LOGS = 200;

// ==============================
// 🧠 ADICIONAR LOG
// ==============================
export const addLog = async (
  type = "INFO",
  message = "",
  data = null
) => {
  try {
    const logs = await getLogs();

    const newLog = {
      id: Date.now().toString(),
      type, // INFO | ERROR | SYNC | PRINT | SYSTEM | WARNING
      message,
      data,
      createdAt: new Date().toISOString(),
    };

    logs.unshift(newLog);

    // limitar crescimento (performance real)
    const limitedLogs = logs.slice(0, MAX_LOGS);

    await AsyncStorage.setItem(KEY, JSON.stringify(limitedLogs));
  } catch (err) {
    console.log("addLog error:", err);
  }
};

// ==============================
// 📥 PEGAR LOGS
// ==============================
export const getLogs = async () => {
  try {
    const data = await AsyncStorage.getItem(KEY);
    return data ? JSON.parse(data) : [];
  } catch (err) {
    console.log("getLogs error:", err);
    return [];
  }
};

// ==============================
// 🔍 FILTRAR LOGS POR TIPO
// ==============================
export const getLogsByType = async (type) => {
  try {
    const logs = await getLogs();
    return logs.filter((log) => log.type === type);
  } catch (err) {
    console.log("getLogsByType error:", err);
    return [];
  }
};

// ==============================
// 📊 ESTATÍSTICAS DO SISTEMA
// ==============================
export const getLogStats = async () => {
  try {
    const logs = await getLogs();

    return {
      total: logs.length,
      errors: logs.filter((l) => l.type === "ERROR").length,
      sync: logs.filter((l) => l.type === "SYNC").length,
      print: logs.filter((l) => l.type === "PRINT").length,
      system: logs.filter((l) => l.type === "SYSTEM").length,
    };
  } catch (err) {
    console.log("getLogStats error:", err);
    return {
      total: 0,
      errors: 0,
      sync: 0,
      print: 0,
      system: 0,
    };
  }
};

// ==============================
// 🧹 LIMPAR LOGS
// ==============================
export const clearLogs = async () => {
  try {
    await AsyncStorage.removeItem(KEY);
  } catch (err) {
    console.log("clearLogs error:", err);
  }
};
