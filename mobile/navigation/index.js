import React, { useEffect, useState } from "react";
import { ActivityIndicator, View } from "react-native";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { createNativeStackNavigator } from "@react-navigation/native-stack";

// ==============================
// 📱 SCREENS
// ==============================
import LoginScreen from "../screens/LoginScreen";
import MenuScreen from "../screens/MenuScreen";
import ImoveisScreen from "../screens/ImoveisScreen";
import LeituraScreen from "../screens/LeituraScreen";
import LogsScreen from "../screens/LogsScreen";
import ImpressoraScreen from "../screens/impressora";

const Stack = createNativeStackNavigator();

// ==============================
// 🚀 NAVIGATION PRINCIPAL
// ==============================
export default function AppNavigator() {
  const [loading, setLoading] = useState(true);
  const [isAuth, setIsAuth] = useState(false);

  // ==============================
  // 🔐 VERIFICAR AUTENTICAÇÃO
  // ==============================
  const checkAuth = async () => {
    try {
      const token = await AsyncStorage.getItem("token");

      setIsAuth(Boolean(token));
    } catch (err) {
      console.log("Auth error:", err);
      setIsAuth(false);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    checkAuth();
  }, []);

  // ==============================
  // ⏳ LOADING INICIAL
  // ==============================
  if (loading) {
    return (
      <View style={{ flex: 1, justifyContent: "center", alignItems: "center" }}>
        <ActivityIndicator size="large" />
      </View>
    );
  }

  // ==============================
  // 🚀 ROTAS
  // ==============================
  return (
    <Stack.Navigator screenOptions={{ headerShown: false }}>
      {!isAuth ? (
        // 🔐 LOGIN FLOW
        <Stack.Screen name="Login">
          {(props) => (
            <LoginScreen
              {...props}
              onLogin={() => setIsAuth(true)}
            />
          )}
        </Stack.Screen>
      ) : (
        // 📱 APP PRINCIPAL
        <>
          <Stack.Screen name="Menu">
            {(props) => (
              <MenuScreen
                {...props}
                onLogout={async () => {
                  await AsyncStorage.removeItem("token");
                  setIsAuth(false);
                }}
              />
            )}
          </Stack.Screen>

          <Stack.Screen name="Imoveis" component={ImoveisScreen} />

          <Stack.Screen name="Leitura" component={LeituraScreen} />

          <Stack.Screen name="Logs" component={LogsScreen} />

          <Stack.Screen
            name="Impressora"
            component={ImpressoraScreen}
          />
        </>
      )}
    </Stack.Navigator>
  );
}
