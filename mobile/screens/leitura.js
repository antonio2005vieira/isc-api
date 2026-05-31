import React, { useState } from "react";
import {
  View,
  Text,
  TextInput,
  StyleSheet,
  TouchableOpacity,
  Alert,
  ScrollView,
} from "react-native";

import { imprimirLeitura } from "../services/printerService";
import { log } from "../utils/logger";

// ==============================
// 📱 TELA DE LEITURA
// ==============================
export default function Leitura() {
  const [imovel, setImovel] = useState("");
  const [leituraAnterior, setLeituraAnterior] = useState("");
  const [leituraAtual, setLeituraAtual] = useState("");

  // ==============================
  // 🧮 CALCULA CONSUMO
  // ==============================
  const consumo = () => {
    const anterior = Number(leituraAnterior || 0);
    const atual = Number(leituraAtual || 0);
    return atual - anterior;
  };

  // 💰 cálculo simples de valor (exemplo base)
  const valor = () => {
    return consumo() * 3.75; // valor fictício por m³
  };

  // ==============================
  // 💾 SALVAR LEITURA (estrutura pronta)
  // ==============================
  const salvarLeitura = async () => {
    try {
      if (!imovel || !leituraAtual) {
        Alert.alert("Erro", "Preencha os dados da leitura");
        return;
      }

      log("LEITURA", "💾 Salvando leitura", {
        imovel,
        leituraAtual,
      });

      Alert.alert("Sucesso", "Leitura salva com sucesso!");
    } catch (err) {
      log("ERROR", "Erro ao salvar leitura", {
        erro: err?.message,
      });
    }
  };

  // ==============================
  // 🖨️ IMPRIMIR
  // ==============================
  const imprimir = async () => {
    try {
      await imprimirLeitura({
        imovel,
        leituraAnterior,
        leitura: leituraAtual,
        consumo: consumo(),
        valor: valor(),
      });

      Alert.alert("OK", "Impressão enviada!");
    } catch (err) {
      log("ERROR", "Erro impressão", {
        erro: err?.message,
      });

      Alert.alert("Erro", "Falha ao imprimir");
    }
  };

  // ==============================
  // 📱 UI
  // ==============================
  return (
    <ScrollView contentContainerStyle={styles.container}>
      <Text style={styles.title}>Leitura de Imóvel</Text>

      <TextInput
        placeholder="Número do imóvel"
        style={styles.input}
        value={imovel}
        onChangeText={setImovel}
      />

      <TextInput
        placeholder="Leitura anterior"
        style={styles.input}
        keyboardType="numeric"
        value={leituraAnterior}
        onChangeText={setLeituraAnterior}
      />

      <TextInput
        placeholder="Leitura atual"
        style={styles.input}
        keyboardType="numeric"
        value={leituraAtual}
        onChangeText={setLeituraAtual}
      />

      <View style={styles.infoBox}>
        <Text>Consumo: {consumo()} m³</Text>
        <Text>Valor: R$ {valor().toFixed(2)}</Text>
      </View>

      <TouchableOpacity style={styles.button} onPress={salvarLeitura}>
        <Text style={styles.buttonText}>Salvar Leitura</Text>
      </TouchableOpacity>

      <TouchableOpacity
        style={[styles.button, { backgroundColor: "#444" }]}
        onPress={imprimir}
      >
        <Text style={styles.buttonText}>Imprimir Recibo</Text>
      </TouchableOpacity>
    </ScrollView>
  );
}

// ==============================
// 🎨 ESTILOS
// ==============================
const styles = StyleSheet.create({
  container: {
    padding: 20,
  },
  title: {
    fontSize: 22,
    fontWeight: "bold",
    marginBottom: 20,
  },
  input: {
    borderWidth: 1,
    borderColor: "#ccc",
    marginBottom: 10,
    padding: 10,
    borderRadius: 6,
  },
  infoBox: {
    marginVertical: 15,
    padding: 10,
    backgroundColor: "#f2f2f2",
    borderRadius: 6,
  },
  button: {
    backgroundColor: "#007bff",
    padding: 15,
    borderRadius: 6,
    marginTop: 10,
    alignItems: "center",
  },
  buttonText: {
    color: "#fff",
    fontWeight: "bold",
  },
});
