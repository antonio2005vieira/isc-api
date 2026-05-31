import React, { useEffect, useState } from "react";
import { View, Text, FlatList, TouchableOpacity, StyleSheet, Alert } from "react-native";

import {
  listarImpressoras,
  conectarImpressora,
  salvarImpressora,
  getImpressoraSalva,
} from "../services/bluetoothPrinterService";

export default function Impressora() {
  const [devices, setDevices] = useState([]);
  const [salva, setSalva] = useState(null);

  useEffect(() => {
    carregar();
  }, []);

  const carregar = async () => {
    const list = await listarImpressoras();
    const saved = await getImpressoraSalva();

    setDevices(list);
    setSalva(saved);
  };

  const conectar = async (device) => {
    const ok = await conectarImpressora(device.address);

    if (ok) {
      await salvarImpressora(device);
      setSalva(device);
      Alert.alert("OK", "Impressora conectada e salva!");
    } else {
      Alert.alert("Erro", "Falha ao conectar");
    }
  };

  return (
    <View style={styles.container}>
      <Text style={styles.title}>Impressoras Bluetooth</Text>

      {salva && (
        <Text style={styles.salva}>
          Atual: {salva.name}
        </Text>
      )}

      <FlatList
        data={devices}
        keyExtractor={(item) => item.address}
        renderItem={({ item }) => (
          <TouchableOpacity
            style={styles.item}
            onPress={() => conectar(item)}
          >
            <Text style={styles.name}>{item.name}</Text>
            <Text>{item.address}</Text>
          </TouchableOpacity>
        )}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, padding: 20 },
  title: { fontSize: 20, fontWeight: "bold", marginBottom: 10 },
  item: {
    padding: 15,
    borderBottomWidth: 1,
    borderColor: "#ccc",
  },
  name: { fontWeight: "bold" },
  salva: {
    marginBottom: 10,
    color: "green",
  },
});
