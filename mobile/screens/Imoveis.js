import React, { useEffect, useState } from "react";
import { View, Text, FlatList, TouchableOpacity, ActivityIndicator, RefreshControl } from "react-native";
import { getImoveis } from "../database/sqlite";

export default function Imoveis() {
  const [imoveis, setImoveis] = useState([]);
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);

  const carregar = () => {
    setLoading(true);

    getImoveis((data) => {
      setImoveis(data);
      setLoading(false);
      setRefreshing(false);
    });
  };

  useEffect(() => {
    carregar();
  }, []);

  const onRefresh = () => {
    setRefreshing(true);
    carregar();
  };

  const renderItem = ({ item }) => (
    <TouchableOpacity
      style={{
        padding: 15,
        marginBottom: 10,
        borderRadius: 10,
        backgroundColor: item.visitado ? "#d1fae5" : "#f3f4f6",
        borderLeftWidth: 5,
        borderLeftColor: item.visitado ? "#10b981" : "#9ca3af",
      }}
    >
      <Text style={{ fontWeight: "bold", fontSize: 16 }}>
        {item.matricula || "Sem matrícula"}
      </Text>

      <Text>
        {item.endereco || "Sem endereço"}
      </Text>

      <Text style={{ marginTop: 5, fontSize: 12, color: "#666" }}>
        Rota: {item.rota || "N/A"} | ID: {item.id}
      </Text>

      <Text style={{ marginTop: 5, fontSize: 12 }}>
        Status: {item.visitado ? "✔ Visitado" : "⏳ Pendente"}
      </Text>
    </TouchableOpacity>
  );

  if (loading) {
    return (
      <View style={{ flex: 1, justifyContent: "center", alignItems: "center" }}>
        <ActivityIndicator size="large" />
        <Text style={{ marginTop: 10 }}>Carregando imóveis...</Text>
      </View>
    );
  }

  return (
    <View style={{ flex: 1, padding: 15 }}>

      <Text style={{ fontSize: 20, fontWeight: "bold", marginBottom: 10 }}>
        Imóveis
      </Text>

      <FlatList
        data={imoveis}
        keyExtractor={(item) => item.id.toString()}
        renderItem={renderItem}
        refreshControl={
          <RefreshControl refreshing={refreshing} onRefresh={onRefresh} />
        }
      />

    </View>
  );
}
