import AsyncStorage from "@react-native-async-storage/async-storage";
import { API_URL, REQUEST_TIMEOUT } from "../config/api";
import { handleError } from "./errorHandler";

/**
 * API Fetch padrão do sistema ISC
 * - injeta token automaticamente
 * - controla timeout
 * - padroniza resposta
 * - evita crash no app
 */
export async function apiFetch(endpoint, options = {}) {
  const controller = new AbortController();
  const timeoutId = setTimeout(() => controller.abort(), REQUEST_TIMEOUT);

  try {
    const token = await AsyncStorage.getItem("token");

    const response = await fetch(`${API_URL}${endpoint}`, {
      ...options,
      signal: controller.signal,
      headers: {
        "Content-Type": "application/json",
        ...(token ? { Authorization: `Bearer ${token}` } : {}),
        ...(options.headers || {}),
      },
    });

    clearTimeout(timeoutId);

    let data = null;

    try {
      data = await response.json();
    } catch {
      data = null;
    }

    if (!response.ok) {
      const errorObj = {
        success: false,
        status: response.status,
        data,
      };

      handleError(errorObj, "API RESPONSE ERROR");

      return errorObj;
    }

    return {
      success: true,
      status: response.status,
      data,
    };
  } catch (error) {
    clearTimeout(timeoutId);

    const isTimeout = error.name === "AbortError";

    const errorObj = {
      success: false,
      status: 0,
      error: isTimeout ? "TIMEOUT" : "NETWORK_ERROR",
    };

    handleError(errorObj, "API NETWORK ERROR");

    return errorObj;
  }
}

/**
 * Helper seguro para POST
 */
export async function post(endpoint, body = {}) {
  return apiFetch(endpoint, {
    method: "POST",
    body: JSON.stringify(body),
  });
}

/**
 * Helper seguro para GET
 */
export async function get(endpoint) {
  return apiFetch(endpoint, {
    method: "GET",
  });
}

/**
 * Helper seguro para PUT
 */
export async function put(endpoint, body = {}) {
  return apiFetch(endpoint, {
    method: "PUT",
    body: JSON.stringify(body),
  });
}

/**
 * Helper seguro para DELETE
 */
export async function del(endpoint) {
  return apiFetch(endpoint, {
    method: "DELETE",
  });
}
