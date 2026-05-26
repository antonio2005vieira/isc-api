import React, {
  useState
} from "react";

import {
  View,
  Text,
  TextInput,
  TouchableOpacity,
  StyleSheet,
  Alert
} from "react-native";

import AsyncStorage from "@react-native-async-storage/async-storage";

import api from "../services/api";

export default function LoginScreen({
  navigation
}) {

  const [login, setLogin] =
    useState("");

  const [senha, setSenha] =
    useState("");

  async function fazerLogin() {

    try {

      const response =
        await api.post(
          "/auth/login",
          {
            login,
            senha
          }
        );

      if (
        response.data.status
      ) {

        await AsyncStorage.setItem(
          "usuario",
          JSON.stringify(
            response.data.usuario
          )
        );

        navigation.replace(
          "Menu"
        );

      }

    } catch {

      Alert.alert(
        "Erro",
        "Login inválido"
      );

    }

  }

  return (

    <View style={styles.container}>

      <Text style={styles.logo}>
        ISC COLETOR
      </Text>

      <TextInput
        placeholder="Login"
        style={styles.input}
        value={login}
        onChangeText={setLogin}
      />

      <TextInput
        placeholder="Senha"
        secureTextEntry
        style={styles.input}
        value={senha}
        onChangeText={setSenha}
      />

      <TouchableOpacity
        style={styles.botao}
        onPress={fazerLogin}
      >

        <Text style={styles.botaoTexto}>
          Entrar
        </Text>

      </TouchableOpacity>

    </View>

  );

}

const styles = StyleSheet.create({

  container: {

    flex: 1,

    justifyContent: "center",

    padding: 20,

    backgroundColor: "#1565c0"

  },

  logo: {

    fontSize: 34,

    color: "#fff",

    textAlign: "center",

    marginBottom: 40,

    fontWeight: "bold"

  },

  input: {

    backgroundColor: "#fff",

    borderRadius: 10,

    padding: 15,

    marginBottom: 15

  },

  botao: {

    backgroundColor: "#0d47a1",

    padding: 16,

    borderRadius: 10,

    alignItems: "center"

  },

  botaoTexto: {

    color: "#fff",

    fontWeight: "bold",

    fontSize: 18

  }

});
