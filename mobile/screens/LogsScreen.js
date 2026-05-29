import React, { useEffect, useState } from "react";

import {
  View,
  Text,
  FlatList,
  StyleSheet,
  ActivityIndicator,
  TouchableOpacity,
  RefreshControl
} from "react-native";

import { listarLogs } from "../database/sqlite";
import { logError } from "../utils/errorHandler";

// ================= COMPONENT =================
export default function LogsScreen() {

  const [logs, setLogs] = useState([]);
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);

  // ================= INIT =================
  useEffect(() => {
    carregarLogs();
  }, []);

  // ================= CARREGAR =================
  async function carregarLogs() {

    try {

      setLoading(true);

      const data = await listarLogs();

      // ordena do mais recente para o mais antigo
      const ordenado = (data || []).sort(
        (a, b) => new Date(b.created_at) - new Date(a.created_at)
      );

      setLogs(ordenado);

    } catch (err) {

      logError("LogsScreen - carregarLogs", err);

    } finally {
      setLoading(false);
    }
  }

  // ================= REFRESH =================
  async function onRefresh() {

    try {

      setRefreshing(true);
      await carregarLogs();

    } catch (err) {

      logError("LogsScreen - refresh", err);

    } finally {
      setRefreshing(false);
    }
  }

  // ================= LOADING =================
  if (loading) {

    return (
      <View style={styles.center}>

        <ActivityIndicator size="large" color="#1565c0" />

        <Text style={styles.text}>
          Carregando logs...
        </Text>

      </View>
    );
  }

  // ================= EMPTY =================
  if (!logs || logs.length === 0) {

    return (
      <View style={styles.center}>

        <Text style={styles.text}>
          Nenhum log encontrado
        </Text>

        <TouchableOpacity
          style={styles.button}
          onPress={carregarLogs}
        >
          <Text style={styles.buttonText}>
            Recarregar
          </Text>
        </TouchableOpacity>

      </View>
    );
  }

  // ================= ITEM =================
  function renderItem({ item }) {

    return (
      <View style={styles.card}>

        <Text style={styles.type}>
          {item.tipo || "LOG"}
        </Text>

        <Text style={styles.message}>
          {item.mensagem}
        </Text>

        <Text style={styles.date}>
          {item.created_at}
        </Text>

      </View>
    );
  }

  // ================= UI =================
  return (

    <View style={styles.container}>

      <FlatList
        data={logs}
        keyExtractor={(item) => item.id?.toString()}
        renderItem={renderItem}
        refreshControl={
          <RefreshControl
            refreshing={refreshing}
            onRefresh={onRefresh}
          />
        }
      />

    </View>
  );
}

// ================= STYLE =================
const styles = StyleSheet.create({

  container: {
    flex: 1,
    backgroundColor: "#f2f2f2",
    padding: 10
  },

  center: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center"
  },

  text: {
    marginTop: 10,
    fontSize: 16
  },

  button: {
    marginTop: 15,
    backgroundColor: "#1565c0",
    padding: 12,
    borderRadius: 8
  },

  buttonText: {
    color: "#fff",
    fontWeight: "bold"
  },

  card: {
    backgroundColor: "#fff",
    padding: 12,
    marginBottom: 10,
    borderRadius: 10,
    elevation: 2
  },

  type: {
    fontWeight: "bold",
    marginBottom: 5,
    color: "#1565c0"
  },

  message: {
    fontSize: 14,
    marginBottom: 5
  },

  date: {
    fontSize: 12,
    color: "#666"
  }

});
