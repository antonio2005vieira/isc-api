import React from "react";

import { NavigationContainer } from "@react-navigation/native";
import { createNativeStackNavigator } from "@react-navigation/native-stack";

// ================= SCREENS =================
import LoginScreen from "../screens/LoginScreen";
import MenuScreen from "../screens/MenuScreen";
import ImoveisScreen from "../screens/ImoveisScreen";
import LeituraScreen from "../screens/LeituraScreen";
import SyncScreen from "../screens/SyncScreen";

// ================= STACK =================
const Stack = createNativeStackNavigator();

// ================= NAVIGATION =================
export default function Navigation({
  user,
  onLogin,
  onLogout
}) {

  return (

    <NavigationContainer>

      <Stack.Navigator
        screenOptions={{
          headerShown: false
        }}
      >

        {/* ================= LOGIN FLOW ================= */}
        {!user ? (

          <Stack.Screen name="Login">

            {(props) => (
              <LoginScreen
                {...props}
                onLoginSuccess={onLogin}
              />
            )}

          </Stack.Screen>

        ) : (

          <>

            {/* ================= MENU ================= */}
            <Stack.Screen name="Menu">

              {(props) => (
                <MenuScreen
                  {...props}
                  onLogout={onLogout}
                />
              )}

            </Stack.Screen>

            {/* ================= IMÓVEIS ================= */}
            <Stack.Screen
              name="Imoveis"
              component={ImoveisScreen}
            />

            {/* ================= LEITURA ================= */}
            <Stack.Screen
              name="Leitura"
              component={LeituraScreen}
            />

            {/* ================= SYNC PANEL ================= */}
            <Stack.Screen
              name="Sync"
              component={SyncScreen}
            />

          </>

        )}

      </Stack.Navigator>

    </NavigationContainer>

  );
}
