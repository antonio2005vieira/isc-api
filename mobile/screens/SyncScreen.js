import React, {
  useEffect,
  useState
} from "react";

import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  ActivityIndicator,
  Alert
} from "react-native";

import {
  listarFilaSync
} from "../database/sqlite";

import {
  sincronizarLeituras
} from "../services/syncService";

import AsyncStorage from "@react-native-async-storage/async-storage";

// ================= COMPONENT =================
export default function SyncScreen() {

  const [loading, setLoading] =
    useState(true);

  const [stats, setStats] =
    useState({
      pending: 0,
      sent: 0,
      error: 0,
      dead: 0
    });

  // ================= INIT =================
  useEffect(() => {
    carregarDados();
  }, []);

  // ================= DADOS =================
  async function carregarDados() {

    setLoading(true);

    try {

      const fila =
        await listarFilaSync();

      const resumo = {
        pending: 0,
        sent: 0,
        error: 0,
        dead: 0
      };

      for (const item of fila) {

        if (item.status === "pending") {
          resumo.pending++;
        }

        if (item.status === "sent") {
          resumo.sent++;
        }

        if (item.status === "error") {
          resumo.error++;
        }

        if (item.status === "dead") {
          resumo.dead++;
        }
      }

      setStats(resumo);

    } catch (err) {

      console.log(
        "SYNC SCREEN ERROR:",
        err
      );

    } finally {

      setLoading(false);
    }
  }

  // ================= FORÇAR SYNC =================
  async function forcarSync() {

    try {

      setLoading(true);

      const token =
        await AsyncStorage.getItem(
          "token"
        );

      if (!token) {

        Alert.alert(
          "Erro",
          "Token inválido"
        );

        return;
      }

      await sincronizarLeituras(token);

      await carregarDados();

      Alert.alert(
        "Sucesso",
        "Sincronização executada"
      );

    } catch (err) {

      console.log(
        "FORCAR SYNC ERROR:",
        err
      );

      Alert.alert(
        "Erro",
        "Falha ao sincronizar"
      );

    } finally {

      setLoading(false);
    }
  }

  // ================= LOADING =================
  if (loading) {

    return (

      <View style={styles.loading}>

        <ActivityIndicator
          size="large"
          color="#1565c0"
        />

      </View>
    );
  }

  // ================= UI =================
  return (

    <View style={styles.container}>

      <Text style={styles.title}>
        Painel de Sincronização
      </Text>

      <View style={styles.card}>

        <Text style={styles.item}>
          🟡 Pendentes:
          {" "}
          {stats.pending}
        </Text>

        <Text style={styles.item}>
          🟢 Enviadas:
          {" "}
          {stats.sent}
        </Text>

        <Text style={styles.item}>
          🔴 Erro:
          {" "}
          {stats.error}
        </Text>

        <Text style={styles.item}>
          ⚫ Dead:
          {" "}
          {stats.dead}
        </Text>

      </View>

      <TouchableOpacity
        style={styles.button}
        onPress={forcarSync}
      >

        <Text style={styles.buttonText}>
          Forçar Sincronização
        </Text>

      </TouchableOpacity>

    </View>
  );
}

// ================= STYLES =================
const styles = StyleSheet.create({

  container: {
    flex: 1,
    backgroundColor: "#f2f2f2",
    padding: 20
  },

  loading: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center"
  },

  title: {
    fontSize: 24,
    fontWeight: "bold",
    marginBottom: 20,
    textAlign: "center"
  },

  card: {
    backgroundColor: "#fff",
    borderRadius: 12,
    padding: 20
  },

  item: {
    fontSize: 18,
    marginBottom: 15
  },

  button: {
    backgroundColor: "#1565c0",
    marginTop: 25,
    padding: 16,
    borderRadius: 10,
    alignItems: "center"
  },

  buttonText: {
    color: "#fff",
    fontWeight: "bold",
    fontSize: 16
  }

});
