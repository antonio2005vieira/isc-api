import api from "./api";
import {
  salvarImoveis,
  listarImoveis
} from "../database/sqlite";

import { syncRotas } from "./syncService";

// ================= CARREGAR IMÓVEIS (PRINCIPAL) =================
export const carregarImoveis = async (usuario, callback) => {
  try {
    console.log("📡 Buscando imóveis online...");

    // 1. tenta buscar rotas (offline-first server sync)
    const rotas = await syncRotas(usuario);

    if (Array.isArray(rotas) && rotas.length > 0) {

      console.log("📦 Usando dados da rota");

      salvarImoveis(rotas);

      return callback(rotas);
    }

    // 2. fallback API direta
    const response = await api.get("/imoveis");

    if (response.data && Array.isArray(response.data)) {

      console.log("🌐 Usando API direta");

      salvarImoveis(response.data);

      return callback(response.data);
    }

    throw new Error("Sem dados online");

  } catch (err) {

    console.log("📴 MODO OFFLINE ativado");

    // 3. fallback offline SQLite
    listarImoveis((dados) => {

      callback(dados || []);

    });
  }
};

---

# 📥 OBTER IMÓVEIS OFFLINE SIMPLES

export const getImoveisOffline = (callback) => {
  listarImoveis((dados) => {
    callback(dados || []);
  });
};

---

# 🔄 ATUALIZAR STATUS DE IMÓVEL

export const marcarComoVisitado = (id) => {
  import("../database/sqlite").then((db) => {

    db.db.transaction((tx) => {
      tx.executeSql(
        "UPDATE imoveis SET visitado = 1 WHERE id = ?",
        [id]
      );
    });

  });
};
