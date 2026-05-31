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

import { log } from "../utils/logger";

// 📦 OFFLINE QUEUE
import { addToQueue } from "../services/syncQueue";

// 🖨️ IMPRESSORA
import { imprimirLeitura } from "../services/printerService";
import {
  getImpressoraSalva,
  conectarImpressora,
} from "../services/bluetoothPrinterService";

// ==============================
// 📱 LEITURA SCREEN
// ==============================
export default function LeituraScreen() {
  const [imovel, setImovel] = useState("");
  const [leituraAnterior, setLeituraAnterior] = useState("");
  const [leituraAtual, setLeituraAtual] = useState("");
  const [status, setStatus] = useState(null);
  const [loading, setLoading] = useState(false);

  // ==============================
  // 🧮 CÁLCULOS
  // ==============================
  const consumo =
    Number(leituraAtual || 0) - Number(leituraAnterior || 0);

  const valor = consumo * 3.75;

  // ==============================
  // 💾 SALVAR LEITURA (OFFLINE-FIRST + IMPRESSÃO)
  // ==============================
  const salvarLeitura = async () => {
    try {
      if (!imovel || !leituraAtual) {
        Alert.alert("Erro", "Preencha todos os campos");
        return;
      }

      setLoading(true);
      setStatus("pending");

      const leitura = {
        id: `${imovel}-${Date.now()}`,
        imovel,
        leituraAnterior,
        leituraAtual,
        consumo,
        valor,
      };

      log("LEITURA", "📥 Salvando leitura", leitura);

      // ==============================
      // 📦 ENTRA NA FILA OFFLINE
      // ==============================
      await addToQueue(leitura);

      Alert.alert("Sucesso", "Leitura salva com sucesso");

      setStatus("pending");

      // ==============================
      // 🖨️ IMPRESSÃO (SE DISPONÍVEL)
      // ==============================
      try {
        const printer = await getImpressoraSalva();

        if (printer) {
          setStatus("printing");

          await conectarImpressora(printer.address);

          await imprimirLeitura({
            imovel,
            leituraAnterior,
            leitura: leituraAtual,
            consumo,
            valor,
          });

          setStatus("printed");
          log("PRINTER", "🖨️ Impressão realizada");
        } else {
          log("PRINTER", "⚠️ Sem impressora configurada");
        }
      } catch (printErr) {
        log("ERROR", "Erro impressão (não crítico)", printErr);
        setStatus("pending");
      }

      // ==============================
      // 🧹 LIMPAR CAMPOS
      // ==============================
      setImovel("");
      setLeituraAnterior("");
      setLeituraAtual("");
    } catch (err) {
      log("ERROR", "Erro salvar leitura", err);
      setStatus("error");
      Alert.alert("Erro", "Falha ao salvar leitura");
    } finally {
      setLoading(false);
    }
  };

  // ==============================
  // 🎨 STATUS UI
  // ==============================
  const renderStatus = () => {
    if (!status) return null;

    let color = "#3498db";
    let text = "Processando";

    if (status === "pending") {
      color = "#f1c40f";
      text = "Pendente (aguardando sync)";
    }

    if (status === "printing") {
      color = "#9b59b6";
      text = "Imprimindo...";
    }

    if (status === "printed") {
      color = "#2ecc71";
      text = "Impresso";
    }

    if (status === "error") {
      color = "#e74c3c";
      text = "Erro";
    }

    return (
      <View style={[styles.statusBox, { backgroundColor: color }]}>
        <Text style={styles.statusText}>{text}</Text>
      </View>
    );
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

      {/* INFO */}
      <View style={styles.infoBox}>
        <Text>Consumo: {consumo} m³</Text>
        <Text>Valor: R$ {valor.toFixed(2)}</Text>
      </View>

      {/* STATUS */}
      {renderStatus()}

      {/* BOTÃO */}
      <TouchableOpacity
        style={[
          styles.button,
          loading && { backgroundColor: "#999" },
        ]}
        onPress={salvarLeitura}
        disabled={loading}
      >
        <Text style={styles.buttonText}>
          {loading ? "Salvando..." : "Salvar Leitura"}
        </Text>
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
  statusBox: {
    padding: 10,
    borderRadius: 6,
    marginBottom: 10,
  },
  statusText: {
    color: "#fff",
    fontWeight: "bold",
    textAlign: "center",
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
