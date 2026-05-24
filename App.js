import React, { useState, useEffect } from "react";
import { View, Text, TextInput, Button, Alert } from "react-native";
import axios from "axios";
import { io } from "socket.io-client";
import AsyncStorage from "@react-native-async-storage/async-storage";

// ================= API =================
const api = axios.create({
  baseURL: "http://192.168.3.7:3000"
});

// ================= SOCKET =================
const socket = io("http://192.168.3.7:3000");

// ================= STORAGE =================
const KEY = "@isc_queue";

async function saveOffline(item) {
  const old = await AsyncStorage.getItem(KEY);
  const list = old ? JSON.parse(old) : [];
  list.push(item);
  await AsyncStorage.setItem(KEY, JSON.stringify(list));
}

async function getOffline() {
  const data = await AsyncStorage.getItem(KEY);
  return data ? JSON.parse(data) : [];
}

async function clearOffline() {
  await AsyncStorage.removeItem(KEY);
}

export default function App() {
  const [imovel, setImovel] = useState("");
  const [leitura, setLeitura] = useState("");

  // ================= SOCKET =================
  useEffect(() => {
    socket.emit("join", { user: "leiturista" });

    const interval = setInterval(() => {
      socket.emit("gps_update", {
        user: "leiturista",
        lat: -23.0,
        lng: -50.0,
        time: Date.now()
      });
    }, 5000);

    return () => clearInterval(interval);
  }, []);

  // ================= ENVIAR LEITURA =================
  async function enviar() {
    try {
      await api.post("/leituras", {
        imovel_id: imovel,
        leitura: leitura,
        latitude: -23.0,
        longitude: -50.0
      });

      Alert.alert("Sucesso", "Leitura enviada online");

    } catch (err) {
      await saveOffline({
        tipo: "leitura",
        payload: {
          imovel_id: imovel,
          leitura: leitura,
          latitude: -23.0,
          longitude: -50.0
        }
      });

      Alert.alert("Offline", "Salvo para sincronizar depois");
    }
  }

  // ================= SINCRONIZAR =================
  async function sync() {
    const items = await getOffline();

    if (items.length === 0) {
      Alert.alert("Sync", "Nada para sincronizar");
      return;
    }

    try {
      await api.post("/sync/push", {
        items
      });

      await clearOffline();

      Alert.alert("Sync", "Sincronizado com sucesso");

    } catch (err) {
      Alert.alert("Erro Sync", "Falha ao sincronizar");
    }
  }

  return (
    <View style={{ padding: 20, marginTop: 50 }}>
      <Text style={{ fontSize: 18, marginBottom: 20 }}>
        ISC SANEP - LEITURA
      </Text>

      <TextInput
        placeholder="ID do imóvel"
        value={imovel}
        onChangeText={setImovel}
        style={{ borderWidth: 1, marginBottom: 10, padding: 5 }}
      />

      <TextInput
        placeholder="Leitura"
        value={leitura}
        onChangeText={setLeitura}
        style={{ borderWidth: 1, marginBottom: 10, padding: 5 }}
      />

      <Button title="Enviar Leitura" onPress={enviar} />

      <View style={{ marginTop: 10 }}>
        <Button title="Sincronizar Offline" onPress={sync} />
      </View>
    </View>
  );
}
