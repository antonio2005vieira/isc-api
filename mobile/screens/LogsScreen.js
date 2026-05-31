import React, { useEffect, useState } from "react";
import {
  View,
  Text,
  FlatList,
  StyleSheet,
  ActivityIndicator,
  TouchableOpacity,
  RefreshControl,
} from "react-native";

import { listarLogs } from "../database/sqlite";
import { logError } from "../utils/errorHandler";

// ==============================
// 📱 LOGS SCREEN (AUDITORIA)
// ==============================
export default function LogsScreen() {
  const [logs, setLogs] = useState([]);
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);

  // ==============================
  // 🔁 INIT
  // ==============================
  useEffect(() => {
    carregarLogs();
  }, []);

  // ==============================
  // 📥 CARREGAR LOGS
  // ==============================
  async function carregarLogs() {
    try {
      setLoading(true);

      const data = await listarLogs();

      const safeData = Array.isArray(data) ? data : [];

      const ordenado = safeData.sort((a, b) => {
        return new Date(b.created_at || 0) - new Date(a.created_at || 0);
      });

      setLogs(ordenado);
    } catch (err) {
      logError("LogsScreen - carregarLogs", err);
    } finally {
      setLoading(false);
    }
  }

  // ==============================
  // 🔄 REFRESH
  // ==============================
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

  // ==============================
  // 🎨 CORES POR TIPO
  // ==============================
  function getColor(type) {
    switch ((type || "").toUpperCase()) {
      case "ERROR":
        return "#e74c3c";
      case "SYNC":
        return "#2ecc71";
      case "PRINT":
        return "#9b59b6";
      case "SYSTEM":
        return "#f39c12";
      case "WARNING":
        return "#f1c40f";
      default:
        return "#1565c0";
    }
  }

  // ==============================
  // ⏳ LOADING
  // ==============================
  if (loading) {
    return (
      <View style={styles.center}>
        <ActivityIndicator size="large" color="#1565c0" />
        <Text style={styles.text}>Carregando logs...</Text>
      </View>
    );
  }

  // ==============================
  // 📭 VAZIO
  // ==============================
  if (!logs.length) {
    return (
      <View style={styles.center}>
        <Text style={styles.text}>Nenhum log encontrado</Text>

        <TouchableOpacity
          style={styles.button}
          onPress={carregarLogs}
        >
          <Text style={styles.buttonText}>Recarregar</Text>
        </TouchableOpacity>
      </View>
    );
  }

  // ==============================
  // 📦 ITEM
  // ==============================
  function renderItem({ item }) {
    return (
      <View style={styles.card}>
        <Text
          style={[
            styles.type,
            { color: getColor(item.tipo) },
          ]}
        >
          {item.tipo || "LOG"}
        </Text>

        <Text style={styles.message}>
          {item.mensagem || item.message || "-"}
        </Text>

        {item.data ? (
          <Text style={styles.data}>
            {typeof item.data === "string"
              ? item.data
              : JSON.stringify(item.data, null, 2)}
          </Text>
        ) : null}

        <Text style={styles.date}>
          {item.created_at
            ? new Date(item.created_at).toLocaleString()
            : "-"}
        </Text>
      </View>
    );
  }

  // ==============================
  // 📱 UI
  // ==============================
  return (
    <View style={styles.container}>
      <FlatList
        data={logs}
        keyExtractor={(item) =>
          item.id?.toString() || String(Math.random())
        }
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

// ==============================
// 🎨 STYLES
// ==============================
const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#f2f2f2",
    padding: 10,
  },

  center: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
  },

  text: {
    marginTop: 10,
    fontSize: 16,
  },

  button: {
    marginTop: 15,
    backgroundColor: "#1565c0",
    padding: 12,
    borderRadius: 8,
  },

  buttonText: {
    color: "#fff",
    fontWeight: "bold",
  },

  card: {
    backgroundColor: "#fff",
    padding: 12,
    marginBottom: 10,
    borderRadius: 10,
    elevation: 2,
  },

  type: {
    fontWeight: "bold",
    marginBottom: 5,
  },

  message: {
    fontSize: 14,
    marginBottom: 5,
  },

  data: {
    fontSize: 12,
    color: "#888",
    marginBottom: 5,
  },

  date: {
    fontSize: 12,
    color: "#666",
  },
});
