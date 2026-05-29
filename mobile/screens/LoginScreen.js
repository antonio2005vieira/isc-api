import React, { useState } from "react";
import {
  View,
  Text,
  TextInput,
  TouchableOpacity,
  ActivityIndicator,
  Alert,
  StyleSheet
} from "react-native";

import AsyncStorage from "@react-native-async-storage/async-storage";
import api from "../services/api";

export default function LoginScreen({ onLoginSuccess }) {

  const [login, setLogin] = useState("");
  const [senha, setSenha] = useState("");
  const [loading, setLoading] = useState(false);

  // ================= LOGIN =================
  async function handleLogin() {

    if (!login || !senha) {
      Alert.alert("Erro", "Preencha login e senha");
      return;
    }

    setLoading(true);

    try {

      const response = await api.post("/auth/login", {
        login,
        senha
      });

      const { token, user } = response.data;

      if (!token || !user) {
        Alert.alert("Erro", "Resposta inválida do servidor");
        return;
      }

      // ================= HEADER GLOBAL =================
      api.defaults.headers.common[
        "Authorization"
      ] = `Bearer ${token}`;

      // ================= STORAGE LOCAL =================
      await AsyncStorage.setItem("token", token);
      await AsyncStorage.setItem("user", JSON.stringify(user));

      // ================= CALLBACK PRO APP.JS =================
      if (onLoginSuccess) {
        onLoginSuccess({
          user,
          token
        });
      }

    } catch (err) {

      console.log("LOGIN ERROR:", err?.response?.data || err.message);

      Alert.alert(
        "Erro no login",
        err?.response?.data?.erro ||
        "Não foi possível conectar ao servidor"
      );

    } finally {
      setLoading(false);
    }
  }

  // ================= UI =================
  return (
    <View style={styles.container}>

      <Text style={styles.title}>
        ISC SANEP
      </Text>

      <Text style={styles.subtitle}>
        Sistema de Campo
      </Text>

      <TextInput
        style={styles.input}
        placeholder="Usuário"
        value={login}
        onChangeText={setLogin}
        autoCapitalize="none"
      />

      <TextInput
        style={styles.input}
        placeholder="Senha"
        value={senha}
        onChangeText={setSenha}
        secureTextEntry
      />

      <TouchableOpacity
        style={styles.button}
        onPress={handleLogin}
        disabled={loading}
      >
        {loading ? (
          <ActivityIndicator color="#fff" />
        ) : (
          <Text style={styles.buttonText}>
            Entrar
          </Text>
        )}
      </TouchableOpacity>

    </View>
  );
}

// ================= STYLE =================
const styles = StyleSheet.create({

  container: {
    flex: 1,
    justifyContent: "center",
    padding: 20,
    backgroundColor: "#f2f2f2"
  },

  title: {
    fontSize: 34,
    fontWeight: "bold",
    textAlign: "center"
  },

  subtitle: {
    textAlign: "center",
    marginBottom: 30,
    color: "#666"
  },

  input: {
    backgroundColor: "#fff",
    padding: 15,
    borderRadius: 10,
    marginBottom: 10
  },

  button: {
    backgroundColor: "#1565c0",
    padding: 15,
    borderRadius: 10,
    alignItems: "center",
    marginTop: 10
  },

  buttonText: {
    color: "#fff",
    fontWeight: "bold"
  }
});
