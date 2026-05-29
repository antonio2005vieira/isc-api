import { getDeviceId } from "./deviceService";

const API_URL = "https://isc-api.onrender.com";

/**
 * Valida dispositivo no servidor
 * Se não existir → registra automaticamente
 */
export const validarDispositivo = async () => {
  try {
    const imei = await getDeviceId();

    if (!imei) {
      return {
        autorizado: false,
        error: true,
        message: "Device ID inválido"
      };
    }

    // ================= VALIDAR =================
    const response = await fetch(`${API_URL}/device/validate`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify({ imei })
    });

    // ================= NÃO AUTORIZADO =================
    if (!response.ok) {

      // tenta registrar automaticamente
      await fetch(`${API_URL}/device/register`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json"
        },
        body: JSON.stringify({ imei })
      });

      return {
        autorizado: false,
        novo: true,
        message: "Dispositivo registrado. Aguarde liberação."
      };
    }

    const data = await response.json();

    return {
      autorizado: data.autorizado === true,
      device: data.device || null
    };

  } catch (err) {
    return {
      autorizado: false,
      error: true,
      message: err.message || "Erro ao validar dispositivo"
    };
  }
};

/**
 * Registra dispositivo manualmente (opcional)
 */
export const registrarDispositivo = async (user = null) => {
  try {
    const imei = await getDeviceId();

    const response = await fetch(`${API_URL}/device/register`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify({
        imei,
        user
      })
    });

    const data = await response.json();

    return data;

  } catch (err) {
    return {
      success: false,
      error: true,
      message: err.message
    };
  }
};
