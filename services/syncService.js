import AsyncStorage from "@react-native-async-storage/async-storage";
import { apiFetch } from "./api";

/**
 * Salva leitura offline com segurança
 */
export async function saveOfflineLeitura(leitura) {
  try {
    const data = await AsyncStorage.getItem("leituras_offline");
    const lista = data ? JSON.parse(data) : [];

    lista.push({
      ...leitura,
      synced: false,
      createdAt: new Date().toISOString(),
    });

    await AsyncStorage.setItem(
      "leituras_offline",
      JSON.stringify(lista)
    );

    return true;
  } catch (error) {
    console.log("Erro ao salvar offline:", error);
    return false;
  }
}

/**
 * Sincroniza leituras offline com o servidor
 */
export async function syncLeiturasOffline() {
  try {
    const data = await AsyncStorage.getItem("leituras_offline");
    let lista = data ? JSON.parse(data) : [];

    if (lista.length === 0) {
      return { success: true, synced: 0 };
    }

    let synced = 0;
    const pendentes = [];

    for (const item of lista) {
      try {
        const res = await apiFetch("/leituras", {
          method: "POST",
          body: JSON.stringify(item),
        });

        if (res.success) {
          synced++;
        } else {
          // mantém item na fila se falhar
          pendentes.push(item);
        }
      } catch (err) {
        // erro de rede → mantém todos restantes
        pendentes.push(item);
      }
    }

    // atualiza fila offline com pendentes
    await AsyncStorage.setItem(
      "leituras_offline",
      JSON.stringify(pendentes)
    );

    return {
      success: true,
      total: lista.length,
      synced,
      pending: pendentes.length,
    };
  } catch (error) {
    console.log("Erro no sync:", error);
    return {
      success: false,
      synced: 0,
      error: "SYNC_ERROR",
    };
  }
}

/**
 * Verifica se há dados offline pendentes
 */
export async function hasOfflineData() {
  try {
    const data = await AsyncStorage.getItem("leituras_offline");
    const lista = data ? JSON.parse(data) : [];
    return lista.length > 0;
  } catch {
    return false;
  }
}

/**
 * Limpa fila offline manualmente (uso emergencial)
 */
export async function clearOfflineData() {
  await AsyncStorage.removeItem("leituras_offline");
}
