import React, {
  useEffect,
  useState
} from "react";

import {
  View,
  Text,
  FlatList,
  TouchableOpacity,
  StyleSheet,
  TextInput,
  ActivityIndicator,
  Alert
} from "react-native";

import {
  MaterialIcons
} from "@expo/vector-icons";

import api from "../services/api";

import {
  salvarImoveis,
  listarImoveis
} from "../database/sqlite";

export default function ImoveisScreen({
  navigation
}) {

  const [imoveis, setImoveis] =
    useState([]);

  const [busca, setBusca] =
    useState("");

  const [loading, setLoading] =
    useState(false);

  const [offline, setOffline] =
    useState(false);

  useEffect(() => {

    carregarImoveis();

  }, []);

  async function carregarImoveis() {

    try {

      setLoading(true);

      setOffline(false);

      const response =
        await api.get(
          "/imoveis"
        );

      setImoveis(
        response.data
      );

      salvarImoveis(
        response.data
      );

    } catch (err) {

      console.log(
        "MODO OFFLINE"
      );

      const dadosOffline =
        listarImoveis();

      setImoveis(
        dadosOffline
      );

      setOffline(true);

      Alert.alert(
        "Modo Offline",
        "Imóveis carregados do banco local"
      );

    } finally {

      setLoading(false);

    }

  }

  const filtrados =
    imoveis.filter(item => {

      const texto =
        busca.toLowerCase();

      return (

        item.matricula
          ?.toLowerCase()
          .includes(texto)

        ||

        item.endereco
          ?.toLowerCase()
          .includes(texto)

        ||

        item.hidrometro
          ?.toLowerCase()
          .includes(texto)

      );

    });

  function abrirLeitura(
    item
  ) {

    navigation.navigate(
      "Leitura",
      {
        imovel: item,
        lista: filtrados
      }
    );

  }

  function renderItem({
    item,
    index
  }) {

    return (

      <TouchableOpacity
        style={styles.card}
        onPress={() =>
          abrirLeitura(item)
        }
      >

        <View style={styles.cardHeader}>

          <Text style={styles.numero}>
            #{index + 1}
          </Text>

          <MaterialIcons
            name={
              item.visitado
                ? "check-circle"
                : "radio-button-unchecked"
            }
            size={28}
            color={
              item.visitado
                ? "green"
                : "#999"
            }
          />

        </View>

        <Text style={styles.matricula}>
          Matrícula:
          {" "}
          {item.matricula}
        </Text>

        <Text style={styles.endereco}>
          {item.endereco}
        </Text>

        <Text style={styles.info}>
          Hidrômetro:
          {" "}
          {item.hidrometro}
        </Text>

        <Text style={styles.info}>
          Rota:
          {" "}
          {item.rota}
        </Text>

        <View style={styles.statusBox}>

          <Text
            style={[
              styles.status,

              {
                color:
                  item.visitado
                    ? "green"
                    : "#ff9800"
              }
            ]}
          >

            {item.visitado
              ? "VISITADO"
              : "PENDENTE"}

          </Text>

        </View>

      </TouchableOpacity>

    );

  }

  return (

    <View style={styles.container}>

      <View style={styles.topo}>

        <Text style={styles.topoTexto}>
          Lista de Imóveis
        </Text>

      </View>

      {offline && (

        <View style={styles.offlineBox}>

          <MaterialIcons
            name="cloud-off"
            size={22}
            color="#fff"
          />

          <Text style={styles.offlineTexto}>
            MODO OFFLINE
          </Text>

        </View>

      )}

      <View style={styles.buscaBox}>

        <TextInput
          placeholder="Buscar imóvel..."
          style={styles.input}
          value={busca}
          onChangeText={setBusca}
        />

      </View>

      {loading ? (

        <ActivityIndicator
          size="large"
          color="#1565c0"
          style={{
            marginTop: 30
          }}
        />

      ) : (

        <FlatList
          data={filtrados}
          keyExtractor={(item) =>
            item.id.toString()
          }
          renderItem={renderItem}
          contentContainerStyle={{
            padding: 10,
            paddingBottom: 50
          }}
          ListEmptyComponent={() => (

            <View style={styles.emptyBox}>

              <MaterialIcons
                name="location-off"
                size={60}
                color="#999"
              />

              <Text style={styles.emptyText}>
                Nenhum imóvel encontrado
              </Text>

            </View>

          )}
        />

      )}

    </View>

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

  offlineBox: {

    backgroundColor: "#ef6c00",

    flexDirection: "row",

    justifyContent: "center",

    alignItems: "center",

    padding: 10

  },

  offlineTexto: {

    color: "#fff",

    fontWeight: "bold",

    marginLeft: 10

  },

  buscaBox: {

    padding: 10

  },

  input: {

    backgroundColor: "#fff",

    borderRadius: 10,

    padding: 15,

    elevation: 2

  },

  card: {

    backgroundColor: "#fff",

    borderRadius: 12,

    padding: 18,

    marginBottom: 12,

    elevation: 3

  },

  cardHeader: {

    flexDirection: "row",

    justifyContent: "space-between",

    marginBottom: 10

  },

  numero: {

    fontSize: 18,

    fontWeight: "bold",

    color: "#1565c0"

  },

  matricula: {

    fontSize: 20,

    fontWeight: "bold"

  },

  endereco: {

    fontSize: 18,

    marginTop: 8,

    marginBottom: 8

  },

  info: {

    color: "#666",

    marginTop: 3

  },

  statusBox: {

    marginTop: 15,

    alignItems: "flex-end"

  },

  status: {

    fontWeight: "bold",

    fontSize: 14

  },

  emptyBox: {

    marginTop: 80,

    alignItems: "center"

  },

  emptyText: {

    marginTop: 15,

    color: "#777",

    fontSize: 18

  }

});
