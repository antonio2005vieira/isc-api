import React, { useEffect, useState } from "react";
import { View, ActivityIndicator, StyleSheet } from "react-native";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { NavigationContainer } from "@react-navigation/native";

import AppNavigator from "./navigation";
import { startSyncEngine } from "./services/syncEngine";
import { startAutoSync, startIntervalSync } from "./services/syncService";
import { log } from "./utils/logger";

// ==============================
// 🚀 APP PRINCIPAL
// ==============================
export default function App() {
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    initApp();
  }, []);

  // ==============================
  // 🔧 INICIALIZAÇÃO DO APP
  // ==============================
  const initApp = async () => {
    try {
      log("APP", "🚀 Inicializando sistema ISC");

      // 🔐 VERIFICAR LOGIN
      const token = await AsyncStorage.getItem("token");

      if (token) {
        log("APP", "🔐 Usuário autenticado");
      } else {
        log("APP", "⚠️ Usuário não autenticado");
      }

      // 🌐 SYNC LEGADO (mantido)
      startAutoSync();
      startIntervalSync(60000);

      // 🔁 NOVO MOTOR OFFLINE-FIRST (CRÍTICO)
      startSyncEngine();

      log("APP", "✅ Serviços inicializados com sucesso");
    } catch (err) {
      log("ERROR", "Erro ao iniciar app", {
        erro: err?.message,
      });
    } finally {
      setLoading(false);
    }
  };

  // ==============================
  // ⏳ LOADING INICIAL
  // ==============================
  if (loading) {
    return (
      <View style={styles.loading}>
        <ActivityIndicator size="large" />
      </View>
    );
  }

  // ==============================
  // 📱 APP
  // ==============================
  return (
    <NavigationContainer>
      <AppNavigator />
    </NavigationContainer>
  );
}

// ==============================
// 🎨 ESTILOS
// ==============================
const styles = StyleSheet.create({
  loading: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
  },
});
