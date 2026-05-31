// config/api.js

// URL oficial da API (produção)
export const API_URL = "https://isc-api.onrender.com";

// Timeout padrão para requisições (15s)
export const REQUEST_TIMEOUT = 15000;

// Ambiente atual (útil para debug/log)
export const ENV = "production";

// Função utilitária: monta URL completa
export function getUrl(endpoint) {
  if (!endpoint.startsWith("/")) {
    endpoint = "/" + endpoint;
  }
  return `${API_URL}${endpoint}`;
}
