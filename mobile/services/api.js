import axios from "axios";
import AsyncStorage from "@react-native-async-storage/async-storage";

// 🌐 URL DA API (Render)
const BASE_URL = "https://isc-api.onrender.com";

const api = axios.create({
  baseURL: BASE_URL,
  timeout: 20000, // ⏱ maior por causa do Render (cold start)
});

// ================= REQUEST =================
api.interceptors.request.use(
  async (config) => {
    try {
      const token = await AsyncStorage.getItem("token");

      if (token) {
        config.headers.Authorization = `Bearer ${token}`;
      }

      config.headers["Content-Type"] = "application/json";
    } catch (err) {
      console.log("Erro ao pegar token:", err);
    }

    return config;
  },
  (error) => Promise.reject(error)
);

// ================= RESPONSE =================
api.interceptors.response.use(
  (response) => response,
  async (error) => {
    const status = error?.response?.status;

    // 🔐 Token inválido ou expirado
    if (status === 401) {
      console.log("Token inválido ou expirado");

      await AsyncStorage.removeItem("token");

      // 👉 opcional: redirecionar pro login
    }

    // 🌐 Render dormindo ou sem internet
    if (error.message === "Network Error") {
      console.log("Servidor indisponível ou sem internet");
    }

    // ⏱ Timeout (Render cold start)
    if (error.code === "ECONNABORTED") {
      console.log("Servidor demorou para responder (cold start)");
    }

    // 🔥 DEBUG MELHORADO
    console.log("Erro API:", {
      url: error.config?.url,
      method: error.config?.method,
      status,
      data: error.response?.data,
    });

    return Promise.reject(error);
  }
);

export default api;
