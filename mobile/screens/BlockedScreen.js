import React from "react";
import { View, Text, StyleSheet } from "react-native";

export default function BlockedScreen() {
  return (
    <View style={styles.container}>
      <Text style={styles.title}>
        ACESSO BLOQUEADO
      </Text>

      <Text style={styles.text}>
        Este dispositivo não está autorizado para usar o sistema ISC SANEP.
      </Text>

      <Text style={styles.subtext}>
        Entre em contato com o administrador.
      </Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "#111",
    padding: 20
  },
  title: {
    color: "red",
    fontSize: 24,
    fontWeight: "bold",
    marginBottom: 20
  },
  text: {
    color: "#fff",
    textAlign: "center",
    fontSize: 16,
    marginBottom: 10
  },
  subtext: {
    color: "#aaa",
    textAlign: "center"
  }
});
