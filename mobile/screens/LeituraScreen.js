import React, { useEffect, useState } from "react";

import {
  View,
  Text,
  TextInput,
  TouchableOpacity,
  StyleSheet,
  Alert,
  ScrollView,
  ActivityIndicator
} from "react-native";

import * as Location from "expo-location";
import * as Crypto from "expo-crypto";
import * as Application from "expo-application";

import { salvarLeituraOffline } from "../database/sqlite";

import { MaterialIcons, Ionicons } from "@expo/vector-icons";

export default function LeituraScreen({ route, navigation }) {

  const { imovel } = route.params;

  const [leitura, setLeitura] = useState("");
  const [anormalidade, setAnormalidade] = useState("");
  const [gps, setGps] = useState(null);

  const [loadingGps, setLoadingGps] = useState(false);
  const [salvando, setSalvando] = useState(false);

  // ================= GPS =================
  useEffect(() => {
    obterGPS();
  }, []);

  async function obterGPS() {

    setLoadingGps(true);

    try {

      const { status } =
        await Location.requestForegroundPermissionsAsync();

      if (status !== "granted") {
        Alert.alert("GPS", "Permissão negada");
        return;
      }

      const location =
        await Location.getCurrentPositionAsync({
          accuracy: Location.Accuracy.High
        });

      setGps(location.coords);

    } catch (err) {

      console.log("GPS ERROR:", err);

      Alert.alert("GPS", "Não foi possível obter localização");

    } finally {
      setLoadingGps(false);
    }
  }

  // ================= VALIDAR =================
  function validar(valor) {

    if (!valor || valor.trim() === "") {
      Alert.alert("Erro", "Informe a leitura");
      return false;
    }

    if (isNaN(valor)) {
      Alert.alert("Erro", "Leitura inválida");
      return false;
    }

    const n = Number(valor);

    if (n < 0) {
      Alert.alert("Erro", "Leitura negativa não permitida");
      return false;
    }

    if (n > 999999) {
      Alert.alert("Erro", "Leitura muito alta");
      return false;
    }

    return true;
  }

  // ================= MONTAR PAYLOAD =================
  async function montarPayload() {

    return {
      id: Crypto.randomUUID(),

      imovel_id: imovel.id,
      matricula: imovel.matricula || null,

      leitura: Number(leitura),
      anormalidade: anormalidade || null,

      latitude: gps?.latitude || null,
      longitude: gps?.longitude || null,
      precisao_gps: gps?.accuracy || null,

      device_model: Application.deviceName || null,
      app_version: Application.nativeApplicationVersion || null,

      created_at: new Date().toISOString(),
      status: "pending"
    };
  }

  // ================= SALVAR =================
  async function salvar() {

    if (salvando) return;

    if (!validar(leitura)) return;

    setSalvando(true);

    try {

      const payload = await montarPayload();

      await salvarLeituraOffline(payload);

      Alert.alert(
        "Sucesso",
        "Leitura salva offline com sucesso"
      );

      navigation.goBack();

    } catch (err) {

      console.log("SAVE ERROR:", err);

      Alert.alert("Erro", "Falha ao salvar leitura");

    } finally {
      setSalvando(false);
    }
  }

  // ================= UI =================
  return (
    <ScrollView style={styles.container}>

      {/* HEADER */}
      <View style={styles.header}>
        <Text style={styles.title}>Leitura</Text>
      </View>

      {/* CARD */}
      <View style={styles.card}>

        <Text style={styles.endereco}>
          {imovel?.endereco}
        </Text>

        <Text style={styles.info}>
          Matrícula: {imovel?.matricula}
        </Text>

        <Text style={styles.info}>
          Hidrômetro: {imovel?.hidrometro}
        </Text>

        <Text style={styles.info}>
          Rota: {imovel?.rota}
        </Text>

        {/* INPUT */}
        <Text style={styles.label}>Leitura</Text>

        <TextInput
          style={styles.input}
          keyboardType="numeric"
          value={leitura}
          onChangeText={setLeitura}
          placeholder="Digite a leitura"
        />

        {/* ANORMALIDADE */}
        <Text style={styles.label}>Anormalidade</Text>

        <View style={styles.rowButtons}>

          <TouchableOpacity
            style={[
              styles.btn,
              anormalidade === "VAZAMENTO" && styles.active
            ]}
            onPress={() => setAnormalidade("VAZAMENTO")}
          >
            <Text>Vazamento</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={[
              styles.btn,
              anormalidade === "FECHADO" && styles.active
            ]}
            onPress={() => setAnormalidade("FECHADO")}
          >
            <Text>Fechado</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={[
              styles.btn,
              anormalidade === "PARADO" && styles.active
            ]}
            onPress={() => setAnormalidade("PARADO")}
          >
            <Text>Parado</Text>
          </TouchableOpacity>

        </View>

        {/* GPS */}
        <View style={styles.gpsBox}>

          <MaterialIcons name="location-pin" size={24} color="red" />

          {loadingGps ? (
            <ActivityIndicator />
          ) : (
            <Text style={styles.gpsText}>
              {gps
                ? `${gps.latitude.toFixed(6)} / ${gps.longitude.toFixed(6)}`
                : "GPS indisponível"}
            </Text>
          )}

        </View>

        {/* BOTÃO */}
        <TouchableOpacity
          style={styles.saveBtn}
          onPress={salvar}
          disabled={salvando}
        >

          {salvando ? (
            <ActivityIndicator color="#fff" />
          ) : (
            <>
              <Ionicons name="save" size={20} color="#fff" />
              <Text style={styles.saveText}>Salvar Leitura</Text>
            </>
          )}

        </TouchableOpacity>

      </View>

    </ScrollView>
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
    padding: 20,
    alignItems: "center"
  },

  title: {
    color: "#fff",
    fontSize: 22,
    fontWeight: "bold"
  },

  card: {
    backgroundColor: "#fff",
    margin: 15,
    padding: 20,
    borderRadius: 12
  },

  endereco: {
    fontSize: 18,
    fontWeight: "bold",
    marginBottom: 8
  },

  info: {
    fontSize: 14,
    marginBottom: 4
  },

  label: {
    marginTop: 15,
    fontWeight: "bold"
  },

  input: {
    backgroundColor: "#f2f2f2",
    padding: 12,
    borderRadius: 8,
    marginTop: 8
  },

  rowButtons: {
    marginTop: 10
  },

  btn: {
    backgroundColor: "#eee",
    padding: 10,
    marginTop: 6,
    borderRadius: 8
  },

  active: {
    backgroundColor: "#90caf9"
  },

  gpsBox: {
    flexDirection: "row",
    alignItems: "center",
    marginTop: 15
  },

  gpsText: {
    marginLeft: 8
  },

  saveBtn: {
    backgroundColor: "green",
    marginTop: 20,
    padding: 15,
    borderRadius: 10,
    flexDirection: "row",
    justifyContent: "center",
    alignItems: "center"
  },

  saveText: {
    color: "#fff",
    marginLeft: 8,
    fontWeight: "bold"
  }

});
