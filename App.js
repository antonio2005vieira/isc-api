import React, { useEffect, useState } from "react";
import { View, ActivityIndicator } from "react-native";
import AsyncStorage from "@react-native-async-storage/async-storage";

// SYNC AUTOMÁTICO
import { startAutoSync } from "./services/autoSync";

// SUA NAVEGAÇÃO (ajuste conforme seu projeto)
import Routes from "./routes"; // ou AppNavigator

export default function App() {
  const [loading, setLoading] = useState(true);
  const [isLogged, setIsLogged] = useState(false);

  useEffect(() => {
    async function init() {
      try {
        // 1. inicia sync automático
        startAutoSync();

        // 2. verifica token salvo
        const token = await AsyncStorage.getItem("token");

        if (token) {
          setIsLogged(true);
        } else {
          setIsLogged(false);
        }
      } catch (err) {
        console.log("Erro init app:", err);
        setIsLogged(false);
      } finally {
        setLoading(false);
      }
    }

    init();
  }, []);

  // LOADING INICIAL
  if (loading) {
    return (
      <View style={{ flex: 1, justifyContent: "center", alignItems: "center" }}>
        <ActivityIndicator size="large" />
      </View>
    );
  }

  // APP PRINCIPAL
  return <Routes isLogged={isLogged} setIsLogged={setIsLogged} />;
}
