import React, { useState } from "react";
import { View, Text, TextInput, TouchableOpacity, ActivityIndicator, Alert } from "react-native";

import { saveLogin } from "../services/auth";
import { syncOnStart, autoSync } from "../services/syncService";

export default function Login({ navigation }) {
  const [login, setLogin] = useState("");
  const [senha, setSenha] = useState("");
  const [loading, setLoading] = useState(false);

  const handleLogin = async () => {
    if (!login || !senha) {
      Alert.alert("Erro", "Preencha usuário e senha");
      return;
    }

    setLoading(true);

    try {
      const response = await fetch("https://isc-api.onrender.com/auth/login", {
        method: "POST",
        headers: {
          "Content-Type": "application/json"
        },
        body: JSON.stringify({ login, senha })
      });

      const data = await response.json();

      if (!response.ok) {
        Alert.alert("Erro", data.error || "Falha no login");
        setLoading(false);
        return;
      }

      // ================= SALVA SESSÃO =================
      await saveLogin(data.token, data.user);

      // ================= INICIA SYNC AUTOMÁTICO =================
      syncOnStart(data.token);
      autoSync(data.token);

      setLoading(false);

      // ================= REDIRECIONA =================
      navigation.replace("Home");

    } catch (err) {
      console.log(err);
      Alert.alert("Erro", "Erro de conexão com servidor");
      setLoading(false);
    }
  };

  return (
    <View style={{
      flex: 1,
      justifyContent: "center",
      padding: 20,
      backgroundColor: "#fff"
    }}>

      <Text style={{
        fontSize: 26,
        fontWeight: "bold",
        marginBottom: 30,
        textAlign: "center"
      }}>
        ISC SANEP
      </Text>

      <TextInput
        placeholder="Usuário"
        value={login}
        onChangeText={setLogin}
        style={{
          borderWidth: 1,
          borderColor: "#ccc",
          marginBottom: 10,
          padding: 12,
          borderRadius: 8
        }}
      />

      <TextInput
        placeholder="Senha"
        value={senha}
        onChangeText={setSenha}
        secureTextEntry
        style={{
          borderWidth: 1,
          borderColor: "#ccc",
          marginBottom: 20,
          padding: 12,
          borderRadius: 8
        }}
      />

      <TouchableOpacity
        onPress={handleLogin}
        style={{
          backgroundColor: "#007bff",
          padding: 15,
          borderRadius: 8,
          alignItems: "center"
        }}
      >
        {loading ? (
          <ActivityIndicator color="#fff" />
        ) : (
          <Text style={{ color: "#fff", fontWeight: "bold" }}>
            Entrar
          </Text>
        )}
      </TouchableOpacity>

    </View>
  );
}
