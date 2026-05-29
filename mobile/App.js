import React, { useEffect, useState } from "react";
import AsyncStorage from "@react-native-async-storage/async-storage";

import Navigation from "./navigation";

import { initDB } from "./database/sqlite";

import {
  syncOnStart,
  autoSync,
  stopAutoSync
} from "./services/syncService";

export default function App() {

  const [user, setUser] = useState(null);
  const [token, setToken] = useState(null);
  const [loading, setLoading] = useState(true);

  // ================= INIT =================
  useEffect(() => {
    bootstrap();
  }, []);

  async function bootstrap() {
    try {

      await initDB();

      const storedToken = await AsyncStorage.getItem("token");
      const storedUser = await AsyncStorage.getItem("user");

      if (storedToken && storedUser) {

        const parsedUser = JSON.parse(storedUser);

        setUser(parsedUser);
        setToken(storedToken);

        // 🔥 inicia sync automático
        syncOnStart(storedToken);
        autoSync(storedToken);
      }

    } catch (err) {
      console.log("BOOTSTRAP ERROR:", err);
    } finally {
      setLoading(false);
    }
  }

  // ================= LOGIN =================
  async function handleLogin(data) {
    try {

      setUser(data.user);
      setToken(data.token);

      await AsyncStorage.setItem("token", data.token);
      await AsyncStorage.setItem("user", JSON.stringify(data.user));

      // 🔥 ativa sync
      syncOnStart(data.token);
      autoSync(data.token);

    } catch (err) {
      console.log("LOGIN ERROR:", err);
    }
  }

  // ================= LOGOUT =================
  async function handleLogout() {
    try {

      await AsyncStorage.removeItem("token");
      await AsyncStorage.removeItem("user");

      stopAutoSync();

      setUser(null);
      setToken(null);

    } catch (err) {
      console.log("LOGOUT ERROR:", err);
    }
  }

  // ================= LOADING =================
  if (loading) {
    return null; // pode trocar depois por SplashScreen
  }

  // ================= APP FLOW =================
  return (
    <Navigation
      user={user}
      onLogin={handleLogin}
      onLogout={handleLogout}
    />
  );
}
