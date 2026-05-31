import AsyncStorage from "@react-native-async-storage/async-storage";
import { v4 as uuidv4 } from "uuid";

const QUEUE_KEY = "@sync_queue";

/**
 * ============================
 * 🧠 BUSCAR FILA COMPLETA
 * ============================
 */
export async function getQueue() {
  try {
    const data = await AsyncStorage.getItem(QUEUE_KEY);
    return data ? JSON.parse(data) : [];
  } catch (err) {
    console.log("Erro getQueue:", err);
    return [];
  }
}

/**
 * ============================
 * ➕ ADICIONAR NA FILA
 * ============================
 */
export async function addToQueue(item) {
  try {
    const queue = await getQueue();

    const newItem = {
      id: uuidv4(),
      status: "PENDENTE",
      created_at: new Date().toISOString(),
      retries: 0,
      ...item,
    };

    queue.push(newItem);

    await AsyncStorage.setItem(QUEUE_KEY, JSON.stringify(queue));

    return newItem;
  } catch (err) {
    console.log("Erro addToQueue:", err);
  }
}

/**
 * ============================
 * 📤 LISTAR PENDENTES
 * ============================
 */
export async function getPendingQueue() {
  const queue = await getQueue();
  return queue.filter((item) => item.status === "PENDENTE");
}

/**
 * ============================
 * ✔ MARCAR COMO ENVIADO
 * ============================
 */
export async function markAsSent(id) {
  try {
    const queue = await getQueue();

    const updated = queue.map((item) => {
      if (item.id === id) {
        return {
          ...item,
          status: "ENVIADO",
          sent_at: new Date().toISOString(),
        };
      }
      return item;
    });

    await AsyncStorage.setItem(QUEUE_KEY, JSON.stringify(updated));
  } catch (err) {
    console.log("Erro markAsSent:", err);
  }
}

/**
 * ============================
 * 🔁 MARCAR FALHA (RETRY)
 * ============================
 */
export async function markAsFailed(id) {
  try {
    const queue = await getQueue();

    const updated = queue.map((item) => {
      if (item.id === id) {
        return {
          ...item,
          status: "FALHOU",
          retries: (item.retries || 0) + 1,
        };
      }
      return item;
    });

    await AsyncStorage.setItem(QUEUE_KEY, JSON.stringify(updated));
  } catch (err) {
    console.log("Erro markAsFailed:", err);
  }
}

/**
 * ============================
 * 🧹 LIMPAR FILA (OPCIONAL)
 * ============================
 */
export async function clearQueue() {
  try {
    await AsyncStorage.removeItem(QUEUE_KEY);
  } catch (err) {
    console.log("Erro clearQueue:", err);
  }
}

/**
 * ============================
 * 📊 STATUS DA FILA
 * ============================
 */
export async function getQueueStatus() {
  const queue = await getQueue();

  return {
    total: queue.length,
    pendentes: queue.filter((q) => q.status === "PENDENTE").length,
    enviados: queue.filter((q) => q.status === "ENVIADO").length,
    falhas: queue.filter((q) => q.status === "FALHOU").length,
  };
}
