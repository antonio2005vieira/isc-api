import axios from "axios";

// 🌐 URL DA API (produção)
const API_URL = "https://isc-api.onrender.com";

// 🔧 instancia
export const api = axios.create({
  baseURL: API_URL,
  timeout: 10000,
});

// 🔐 INTERCEPTOR DE REQUEST (ENVIA TOKEN)
api.interceptors.request.use(
  async (config) => {
    const token = localStorage.getItem("token");

    if (token) {
      config.headers.Authorization = `Bearer ${token}`;
    }

    return config;
  },
  (error) => Promise.reject(error)
);

// 🚨 INTERCEPTOR DE RESPOSTA (TRATAMENTO GLOBAL)
api.interceptors.response.use(
  (response) => response,
  (error) => {
    // 🔐 token expirado ou inválido
    if (error.response?.status === 401) {
      localStorage.removeItem("token");

      // evita loop infinito
      if (window.location.pathname !== "/login") {
        alert("Sessão expirada. Faça login novamente.");
        window.location.href = "/login";
      }
    }

    // 🔴 erro de servidor
    if (error.response?.status === 500) {
      console.log("Erro interno:", error.response.data);
    }

    // 🌐 sem conexão
    if (!error.response) {
      alert("Sem conexão com servidor");
    }

    return Promise.reject(error);
  }
);
