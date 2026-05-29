import React from "react";

import {
  View,
  Text,
  TouchableOpacity,
  StyleSheet,
  Alert
} from "react-native";

import {
  MaterialIcons,
  Ionicons
} from "@expo/vector-icons";

import { exportarLeiturasCSV } from "../services/exportService";

// ================= COMPONENT =================
export default function MenuScreen({
  navigation,
  onLogout
}) {

  // ================= LOGOUT =================
  function confirmarLogout() {

    Alert.alert(
      "Sair do sistema",
      "Deseja realmente encerrar a sessão?",
      [
        {
          text: "Cancelar",
          style: "cancel"
        },
        {
          text: "Sair",
          style: "destructive",
          onPress: onLogout
        }
      ]
    );
  }

  // ================= EXPORT =================
  async function handleExport() {

    const result = await exportarLeiturasCSV();

    if (!result?.success) {
      Alert.alert(
        "Exportação",
        result?.message || "Erro ao exportar dados"
      );
      return;
    }

    Alert.alert(
      "Sucesso",
      "Arquivo exportado com sucesso"
    );
  }

  // ================= UI =================
  return (

    <View style={styles.container}>

      {/* HEADER */}
      <View style={styles.header}>

        <Text style={styles.title}>
          ISC SANEP
        </Text>

        <Text style={styles.subtitle}>
          Menu Principal
        </Text>

      </View>

      {/* BODY */}
      <View style={styles.body}>

        {/* IMÓVEIS */}
        <TouchableOpacity
          style={styles.button}
          onPress={() =>
            navigation.navigate("Imoveis")
          }
        >

          <MaterialIcons name="home" size={24} color="#fff" />

          <Text style={styles.buttonText}>
            Imóveis
          </Text>

        </TouchableOpacity>

        {/* LEITURA (entrada direta via imóveis) */}
        <TouchableOpacity
          style={styles.button}
          onPress={() =>
            navigation.navigate("Imoveis")
          }
        >

          <Ionicons name="water" size={24} color="#fff" />

          <Text style={styles.buttonText}>
            Leitura
          </Text>

        </TouchableOpacity>

        {/* SINCRONIZAÇÃO */}
        <TouchableOpacity
          style={styles.button}
          onPress={() =>
            navigation.navigate("Sync")
          }
        >

          <MaterialIcons name="sync" size={24} color="#fff" />

          <Text style={styles.buttonText}>
            Sincronização
          </Text>

        </TouchableOpacity>

        {/* EXPORTAÇÃO */}
        <TouchableOpacity
          style={[
            styles.button,
            styles.export
          ]}
          onPress={handleExport}
        >

          <MaterialIcons name="download" size={24} color="#fff" />

          <Text style={styles.buttonText}>
            Exportar Dados
          </Text>

        </TouchableOpacity>

        {/* LOGOUT */}
        <TouchableOpacity
          style={[
            styles.button,
            styles.logout
          ]}
          onPress={confirmarLogout}
        >

          <MaterialIcons name="exit-to-app" size={24} color="#fff" />

          <Text style={styles.buttonText}>
            Sair
          </Text>

        </TouchableOpacity>

      </View>

    </View>
  );
}

// ================= STYLE =================
const styles = StyleSheet.create({

  container: {
    flex: 1,
    backgroundColor: "#f2f2f2"
  },

  header: {
    backgroundColor: "#000",
    padding: 25,
    alignItems: "center"
  },

  title: {
    color: "#fff",
    fontSize: 26,
    fontWeight: "bold"
  },

  subtitle: {
    color: "#ccc",
    marginTop: 5
  },

  body: {
    padding: 20
  },

  button: {
    backgroundColor: "#1565c0",
    padding: 18,
    borderRadius: 12,
    marginBottom: 15,

    flexDirection: "row",
    justifyContent: "center",
    alignItems: "center"
  },

  buttonText: {
    color: "#fff",
    fontSize: 16,
    marginLeft: 10,
    fontWeight: "bold"
  },

  export: {
    backgroundColor: "#6a1b9a"
  },

  logout: {
    backgroundColor: "#d32f2f"
  }

});
