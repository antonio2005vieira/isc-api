import AsyncStorage from "@react-native-async-storage/async-storage";

const KEY = "ROTEIRO_ATUAL";

// ==============================
// 📥 SALVAR ROTEIRO
// ==============================
export const saveRoteiro = async (roteiro) => {
  try {
    if (!Array.isArray(roteiro)) {
      throw new Error("Roteiro inválido");
    }

    const payload = {
      version: 1,
      createdAt: new Date().toISOString(),
      total: roteiro.length,
      data: roteiro.map((item) => ({
        id: item.id || `${item.imovel}-${Date.now()}`,
        imovel: item.imovel || "",
        leituraAnterior: item.leituraAnterior || "0",
        rota: item.rota || "default",
        status: "pending", // pending | done (futuro sync de leitura)
      })),
    };

    await AsyncStorage.setItem(KEY, JSON.stringify(payload));
  } catch (err) {
    console.log("saveRoteiro error:", err);
  }
};

// ==============================
// 📦 PEGAR ROTEIRO
// ==============================
export const getRoteiro = async () => {
  try {
    const data = await AsyncStorage.getItem(KEY);

    if (!data) return null;

    return JSON.parse(data);
  } catch (err) {
    console.log("getRoteiro error:", err);
    return null;
  }
};

// ==============================
// 🧹 LIMPAR ROTEIRO
// ==============================
export const clearRoteiro = async () => {
  try {
    await AsyncStorage.removeItem(KEY);
  } catch (err) {
    console.log("clearRoteiro error:", err);
  }
};

// ==============================
// 🔍 BUSCAR IMÓVEL NO ROTEIRO
// ==============================
export const findImovel = async (imovelId) => {
  try {
    const roteiro = await getRoteiro();

    if (!roteiro || !roteiro.data) return null;

    return roteiro.data.find((item) => item.imovel === imovelId);
  } catch (err) {
    console.log("findImovel error:", err);
    return null;
  }
};

// ==============================
// 📊 ESTATÍSTICAS DO ROTEIRO
// ==============================
export const getRoteiroStats = async () => {
  try {
    const roteiro = await getRoteiro();

    if (!roteiro) {
      return {
        total: 0,
      };
    }

    return {
      total: roteiro.total || 0,
      rotas: [
        ...new Set(roteiro.data.map((r) => r.rota)),
      ],
    };
  } catch (err) {
    console.log("getRoteiroStats error:", err);
    return {
      total: 0,
      rotas: [],
    };
  }
};
