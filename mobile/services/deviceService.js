import * as Device from "expo-device";
import * as Application from "expo-application";
import { Platform } from "react-native";

/**
 * Gera um ID único e mais estável do dispositivo
 * usado para controle IMEI/Device Lock no backend
 */
export const getDeviceId = () => {
  try {
    let deviceId = null;

    // Android (melhor opção real de identificação)
    if (Platform.OS === "android") {
      deviceId = Application.androidId;
    }

    // fallback iOS
    if (!deviceId && Platform.OS === "ios") {
      deviceId = Application.getIosIdForVendorAsync?.();
    }

    // fallback geral
    if (!deviceId) {
      deviceId =
        Device.modelId ||
        Device.deviceName ||
        Device.osInternalBuildId ||
        "unknown-device";
    }

    return deviceId;
  } catch (err) {
    return "unknown-device";
  }
};
