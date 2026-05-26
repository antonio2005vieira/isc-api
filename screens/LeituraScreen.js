import React, { useEffect, useState } from "react";
import {
  View,
  Text,
  TextInput,
  TouchableOpacity,
  StyleSheet,
  Alert,
  ScrollView
} from "react-native";

import * as Location from "expo-location";
import api from "../services/api";

import {
  salvarLeituraOffline
} from "../database/sqlite";

import {
  MaterialIcons,
  Ionicons
} from "@expo/vector-icons";

export default function LeituraScreen({ route, navigation }) {

  const { imovel } = route.params;

  const [leitura, setLeitura] = useState("");
  const [gps, setGps] = useState(null);
  const [anormalidade, setAnormalidade] = useState("");
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    obterGPS();
  }, []);

  async function obterGPS() {
    try {

      const { status } =
        await Location.requestForegroundPermissionsAsync();

      if (status !== "granted") {
        Alert.alert("GPS", "Permissão negada");
        return;
      }

      const location =
        await Location.getCurrentPositionAsync({});

      setGps(location.coords);

    } catch (err) {
      console.log("Erro GPS:", err);
    }
  }

  async function salvarLeitura() {

    if (!leitura) {
      Alert.alert("Erro", "Digite a leitura");
      return;
    }

    if (!gps) {
      Alert.alert("GPS", "Aguardando localização...");
      return;
    }

    setLoading(true);

    try {

      await api.post("/leituras", {
        imovel_id: imovel.id,
        leitura: leitura,
        anormalidade: anormalidade,
        latitude: gps.latitude,
        longitude: gps.longitude
      });

      Alert.alert("Sucesso", "Leitura enviada com sucesso");

    } catch (err) {

      console.log("Modo offline ativado");

      salvarLeituraOffline({
        imovel_id: imovel.id,
        leitura: leitura,
        anormalidade: anormalidade,
        latitude: gps.latitude,
        longitude: gps.longitude
      });

      Alert.alert("Offline", "Leitura salva no aparelho");

    } finally {
      setLoading(false);
      navigation.goBack();
    }
  }

  return (
    <ScrollView style={styles.container}>

      <View style={styles.topo}>
        <Text style={styles.topoTexto}>Tela de Leitura</Text>
      </View>

      <View style={styles.card}>

        <Text style={styles.endereco}>
          {imovel.endereco}
        </Text>

        <View style={styles.infoBox}>
          <Text style={styles.info}>
            Matrícula: {imovel.matricula}
          </Text>
          <Text style={styles.info}>
            Hidrômetro: {imovel.hidrometro}
          </Text>
          <Text style={styles.info}>
            Rota: {imovel.rota}
          </Text>
        </View>

        <Text style={styles.label}>Leitura</Text>

        <TextInput
          style={styles.input}
          keyboardType="numeric"
          value={leitura}
          onChangeText={setLeitura}
          placeholder="Digite a leitura"
        />

        <Text style={styles.label}>Anormalidade</Text>

        <View style={styles.anormalidades}>

          <TouchableOpacity
            style={[
              styles.anormalidadeBtn,
              anormalidade === "VAZAMENTO" && styles.anormalidadeAtiva
            ]}
            onPress={() => setAnormalidade("VAZAMENTO")}
          >
            <Text>Vazamento</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={[
              styles.anormalidadeBtn,
              anormalidade === "FECHADO" && styles.anormalidadeAtiva
            ]}
            onPress={() => setAnormalidade("FECHADO")}
          >
            <Text>Fechado</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={[
              styles.anormalidadeBtn,
              anormalidade === "PARADO" && styles.anormalidadeAtiva
            ]}
            onPress={() => setAnormalidade("PARADO")}
          >
            <Text>Hidrômetro parado</Text>
          </TouchableOpacity>

        </View>

        <View style={styles.gpsBox}>
          <MaterialIcons name="location-pin" size={26} color="red" />
          <Text style={styles.gpsTexto}>
            {gps
              ? `${gps.latitude} / ${gps.longitude}`
              : "Obtendo GPS..."}
          </Text>
        </View>

        <TouchableOpacity
          style={styles.salvarBtn}
          onPress={salvarLeitura}
          disabled={loading}
        >
          <Ionicons name="save" size={24} color="#fff" />
          <Text style={styles.salvarTexto}>
            {loading ? "Salvando..." : "Salvar Leitura"}
          </Text>
        </TouchableOpacity>

      </View>

    </ScrollView>
  );
}

const styles = StyleSheet.create({

  container: {
    flex: 1,
    backgroundColor: "#f2f2f2"
  },

  topo: {
    backgroundColor: "#000",
    padding: 18,
    alignItems: "center"
  },

  topoTexto: {
    color: "#fff",
    fontSize: 28,
    fontWeight: "bold"
  },

  card: {
    backgroundColor: "#fff",
    margin: 15,
    padding: 20,
    borderRadius: 12,
    elevation: 3
  },

  endereco: {
    fontSize: 24,
    fontWeight: "bold",
    marginBottom: 20
  },

  infoBox: {
    marginBottom: 20
  },

  info: {
    fontSize: 18,
    marginBottom: 6
  },

  label: {
    fontSize: 20,
    fontWeight: "bold",
    marginBottom: 10
  },

  input: {
    backgroundColor: "#f5f5f5",
    borderRadius: 10,
    padding: 15,
    fontSize: 22,
    marginBottom: 20
  },

  anormalidades: {
    marginBottom: 20
  },

  anormalidadeBtn: {
    backgroundColor: "#eee",
    padding: 14,
    borderRadius: 10,
    marginBottom: 10
  },

  anormalidadeAtiva: {
    backgroundColor: "#90caf9"
  },

  gpsBox: {
    flexDirection: "row",
    alignItems: "center",
    marginBottom: 20
  },

  gpsTexto: {
    marginLeft: 10,
    color: "#555"
  },

  salvarBtn: {
    backgroundColor: "green",
    padding: 18,
    borderRadius: 10,
    flexDirection: "row",
    justifyContent: "center",
    alignItems: "center"
  },

  salvarTexto: {
    color: "#fff",
    fontSize: 18,
    fontWeight: "bold",
    marginLeft: 10
  }

});
