import React, {
  useEffect,
  useState,
  useCallback
} from "react";

import {
  View,
  Text,
  FlatList,
  TouchableOpacity,
  StyleSheet,
  ActivityIndicator,
  RefreshControl,
  TextInput,
  Alert
} from "react-native";

import {
  useFocusEffect
} from "@react-navigation/native";

import api from "../services/api";

import {
  salvarImoveisOffline,
  listarImoveisOffline,
  listarStatusLeituras
} from "../database/sqlite";

import {
  MaterialIcons
} from "@expo/vector-icons";

// ================= COMPONENT =================
export default function ImoveisScreen({
  navigation
}) {

  // ================= STATES =================
  const [imoveis, setImoveis] = useState([]);

  const [loading, setLoading] = useState(true);

  const [refreshing, setRefreshing] = useState(false);

  const [busca, setBusca] = useState("");

  const [statusMap, setStatusMap] = useState({});

  // ================= INIT =================
  useEffect(() => {
    carregarDados();
  }, []);

  // ================= REFRESH AO VOLTAR =================
  useFocusEffect(
    useCallback(() => {
      carregarStatus();
    }, [])
  );

  // ================= CARREGAR DADOS =================
  async function carregarDados() {

    setLoading(true);

    try {

      // ================= API =================
      const response =
        await api.get("/imoveis");

      const lista =
        response.data || [];

      setImoveis(lista);

      // salva offline
      await salvarImoveisOffline(lista);

      // status local
      await carregarStatus();

    } catch (err) {

      console.log(
        "API IMOVEIS ERROR:",
        err.message
      );

      // ================= OFFLINE =================
      try {

        const offline =
          await listarImoveisOffline();

        setImoveis(offline);

        await carregarStatus();

      } catch (offlineErr) {

        console.log(
          "OFFLINE ERROR:",
          offlineErr
        );

        Alert.alert(
          "Erro",
          "Não foi possível carregar imóveis"
        );
      }

    } finally {

      setLoading(false);
      setRefreshing(false);
    }
  }

  // ================= STATUS =================
  async function carregarStatus() {

    try {

      const lista =
        await listarStatusLeituras();

      const mapa = {};

      for (const item of lista) {

        mapa[item.imovel_id] =
          item.status;
      }

      setStatusMap(mapa);

    } catch (err) {

      console.log(
        "STATUS ERROR:",
        err
      );
    }
  }

  // ================= REFRESH =================
  async function onRefresh() {

    setRefreshing(true);

    await carregarDados();
  }

  // ================= BUSCA =================
  const imoveisFiltrados =
    imoveis.filter((item) => {

      const texto =
        busca.toLowerCase();

      return (
        item?.endereco
          ?.toLowerCase()
          ?.includes(texto)

        ||

        item?.matricula
          ?.toString()
          ?.includes(texto)

        ||

        item?.hidrometro
          ?.toString()
          ?.includes(texto)
      );
    });

  // ================= STATUS ICON =================
  function renderStatus(id) {

    const status =
      statusMap[id];

    switch (status) {

      case "sent":
        return (
          <Text style={styles.sent}>
            🟢
          </Text>
        );

      case "pending":
        return (
          <Text style={styles.pending}>
            🟡
          </Text>
        );

      case "error":
        return (
          <Text style={styles.error}>
            🔴
          </Text>
        );

      case "dead":
        return (
          <Text style={styles.dead}>
            ⚫
          </Text>
        );

      default:
        return null;
    }
  }

  // ================= ITEM =================
  function renderItem({ item }) {

    return (

      <TouchableOpacity
        style={styles.card}
        onPress={() =>
          navigation.navigate(
            "Leitura",
            { imovel: item }
          )
        }
      >

        <View style={styles.row}>

          <View style={styles.infoBox}>

            <Text style={styles.endereco}>
              {item?.endereco || "-"}
            </Text>

            <Text style={styles.info}>
              Matrícula:
              {" "}
              {item?.matricula || "-"}
            </Text>

            <Text style={styles.info}>
              Hidrômetro:
              {" "}
              {item?.hidrometro || "-"}
            </Text>

            <Text style={styles.info}>
              Rota:
              {" "}
              {item?.rota || "-"}
            </Text>

          </View>

          <View style={styles.statusBox}>

            {renderStatus(item.id)}

          </View>

        </View>

      </TouchableOpacity>
    );
  }

  // ================= LOADING =================
  if (loading) {

    return (

      <View style={styles.loadingContainer}>

        <ActivityIndicator
          size="large"
          color="#1565c0"
        />

        <Text style={styles.loadingText}>
          Carregando imóveis...
        </Text>

      </View>
    );
  }

  // ================= UI =================
  return (

    <View style={styles.container}>

      {/* ================= HEADER ================= */}
      <View style={styles.header}>

        <Text style={styles.headerTitle}>
          Imóveis
        </Text>

      </View>

      {/* ================= BUSCA ================= */}
      <View style={styles.searchBox}>

        <MaterialIcons
          name="search"
          size={22}
          color="#666"
        />

        <TextInput
          style={styles.searchInput}
          placeholder="Buscar imóvel..."
          value={busca}
          onChangeText={setBusca}
        />

      </View>

      {/* ================= LISTA ================= */}
      <FlatList
        data={imoveisFiltrados}
        keyExtractor={(item) =>
          item.id.toString()
        }
        renderItem={renderItem}
        refreshControl={
          <RefreshControl
            refreshing={refreshing}
            onRefresh={onRefresh}
          />
        }
        ListEmptyComponent={

          <View style={styles.empty}>

            <Text style={styles.emptyText}>
              Nenhum imóvel encontrado
            </Text>

          </View>
        }
      />

    </View>
  );
}

// ================= STYLES =================
const styles = StyleSheet.create({

  container: {
    flex: 1,
    backgroundColor: "#f2f2f2"
  },

  header: {
    backgroundColor: "#000",
    padding: 18,
    alignItems: "center"
  },

  headerTitle: {
    color: "#fff",
    fontSize: 24,
    fontWeight: "bold"
  },

  searchBox: {
    backgroundColor: "#fff",
    margin: 12,
    borderRadius: 10,
    paddingHorizontal: 12,
    flexDirection: "row",
    alignItems: "center"
  },

  searchInput: {
    flex: 1,
    padding: 12
  },

  card: {
    backgroundColor: "#fff",
    marginHorizontal: 12,
    marginBottom: 10,
    borderRadius: 12,
    padding: 15
  },

  row: {
    flexDirection: "row",
    justifyContent: "space-between"
  },

  infoBox: {
    flex: 1
  },

  statusBox: {
    justifyContent: "center",
    alignItems: "center",
    width: 40
  },

  endereco: {
    fontSize: 18,
    fontWeight: "bold",
    marginBottom: 5
  },

  info: {
    color: "#555",
    marginBottom: 3
  },

  sent: {
    fontSize: 22
  },

  pending: {
    fontSize: 22
  },

  error: {
    fontSize: 22
  },

  dead: {
    fontSize: 22
  },

  loadingContainer: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center"
  },

  loadingText: {
    marginTop: 15,
    fontSize: 16
  },

  empty: {
    marginTop: 50,
    alignItems: "center"
  },

  emptyText: {
    color: "#777"
  }

});
