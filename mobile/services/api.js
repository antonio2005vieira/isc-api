import axios from "axios";
import AsyncStorage from "@react-native-async-storage/async-storage";

// 🔧 CONFIGURÁVEL (trocar fácil depois)
const BASE_URL = "https://isc-api.onrender.com";

const api = axios.create({
  baseURL: BASE_URL,
  timeout: 15000,
});

// ================= INTERCEPTOR REQUEST =================
api.interceptors.request.use(
  async (config) => {
    try {
      const token = await AsyncStorage.getItem("token");

      if (token) {
        config.headers.Authorization = `Bearer ${token}`;
      }
    } catch (err) {
      console.log("Erro ao pegar token:", err);
    }

    return config;
  },
  (error) => Promise.reject(error)
);

// ================= INTERCEPTOR RESPONSE =================
api.interceptors.response.use(
  (response) => response,
  async (error) => {
    const status = error?.response?.status;

    // 🔐 Token expirado ou inválido
    if (status === 401) {
      console.log("Token inválido ou expirado");

      await AsyncStorage.removeItem("token");

      // ⚠️ Aqui você pode forçar logout depois
    }

    // 🌐 Sem internet / timeout
    if (error.message === "Network Error") {
      console.log("Sem conexão com servidor");
    }

    if (error.code === "ECONNABORTED") {
      console.log("Timeout da requisição");
    }

    return Promise.reject(error);
  }
);

export default api;
