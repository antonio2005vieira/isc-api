import React, { useEffect, useState } from "react";
import { View, Text, StyleSheet, ScrollView } from "react-native";
import NetInfo from "@react-native-community/netinfo";

import { getQueueStats } from "../services/syncQueue";
import { getLogStats } from "../services/auditService";

// ==============================
// 📊 DASHBOARD PRINCIPAL
// ==============================
export default function DashboardScreen() {
  const [queue, setQueue] = useState({
    total: 0,
    pending: 0,
    done: 0,
    error: 0,
  });

  const [logs, setLogs] = useState({
    total: 0,
    sync: 0,
    print: 0,
    errors: 0,
  });

  const [online, setOnline] = useState(false);
  const [lastUpdate, setLastUpdate] = useState(null);

  // ==============================
  // 🔁 INIT + AUTO REFRESH
  // ==============================
  useEffect(() => {
    load();

    const interval = setInterval(() => {
      load();
    }, 5000);

    return () => clearInterval(interval);
  }, []);

  // ==============================
  // 📥 CARREGAR DADOS
  // ==============================
  const load = async () => {
    try {
      const net = await NetInfo.fetch();
      setOnline(!!net.isConnected);

      const q = await getQueueStats();
      const l = await getLogStats();

      setQueue(q || {});
      setLogs(l || {});

      setLastUpdate(new Date());
    } catch (err) {
      console.log("Dashboard error:", err);
    }
  };

  // ==============================
  // 📊 CARD COMPONENT
  // ==============================
  const Card = ({ title, children, color = "#fff" }) => (
    <View style={[styles.card, { backgroundColor: color }]}>
      <Text style={styles.cardTitle}>{title}</Text>
      {children}
    </View>
  );

  // ==============================
  // 📱 UI
  // ==============================
  return (
    <ScrollView style={styles.container}>
      <Text style={styles.title}>📊 Dashboard Operacional</Text>

      <Text style={styles.status}>
        Internet: {online ? "🟢 Online" : "🔴 Offline"}
      </Text>

      {lastUpdate && (
        <Text style={styles.update}>
          Última atualização:{" "}
          {lastUpdate.toLocaleTimeString()}
        </Text>
      )}

      {/* ====================== */}
      {/* 📦 FILA DE SINCRONIZAÇÃO */}
      {/* ====================== */}
      <Card title="📦 Sync Queue">
        <Text>Total: {queue.total}</Text>
        <Text>Pendentes: {queue.pending}</Text>
        <Text>Sincronizados: {queue.done}</Text>
        <Text>Erros: {queue.error}</Text>
      </Card>

      {/* ====================== */}
      {/* 🧾 LOGS DO SISTEMA */}
      {/* ====================== */}
      <Card title="🧾 Logs do Sistema">
        <Text>Total: {logs.total}</Text>
        <Text>Sync: {logs.sync}</Text>
        <Text>Impressão: {logs.print}</Text>
        <Text>Erros: {logs.errors}</Text>
      </Card>

      {/* ====================== */}
      {/* 🧠 SAÚDE DO SISTEMA */}
      {/* ====================== */}
      <Card title="🧠 Status Geral">
        <Text>
          Sistema:{" "}
          {queue.error > 0 ? "⚠️ Atenção" : "🟢 Saudável"}
        </Text>

        <Text>
          Pendência:
          {queue.pending > 0
            ? " 🔄 Sincronizando"
            : " 🟢 OK"}
        </Text>
      </Card>
    </ScrollView>
  );
}

// ==============================
// 🎨 STYLES
// ==============================
const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#f2f2f2",
    padding: 15,
  },

  title: {
    fontSize: 22,
    fontWeight: "bold",
    marginBottom: 15,
  },

  status: {
    fontSize: 16,
    marginBottom: 5,
  },

  update: {
    fontSize: 12,
    color: "#666",
    marginBottom: 15,
  },

  card: {
    padding: 15,
    borderRadius: 10,
    marginBottom: 15,
    backgroundColor: "#fff",
    elevation: 2,
  },

  cardTitle: {
    fontWeight: "bold",
    marginBottom: 10,
  },
});
