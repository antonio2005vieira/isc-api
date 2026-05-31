import { Alert } from "react-native";

/**
 * Handler global de erros do sistema
 */
export function handleError(error, context = "") {
  console.log("❌ ERRO:", context, error);

  // Mensagem amigável pro usuário
  const message =
    error?.message ||
    error?.error ||
    "Erro inesperado. Verifique sua conexão.";

  // Evita travar app
  try {
    Alert.alert("Erro", message);
  } catch (e) {
    console.log("Erro ao mostrar alerta:", e);
  }
}
