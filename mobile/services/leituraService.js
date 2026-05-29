import api from "./api";
import { salvarLeituraOffline } from "../database/sqlite";
import db from "../database/sqlite";

// ================= SALVAR LEITURA (PRINCIPAL) =================
export const salvarLeitura = async (dados) => {
  try {
    console.log("📡 Enviando leitura online...");

    const response = await api.post("/leituras", dados);

    if (response.status === 200 || response.status === 201) {
      console.log("✔ Leitura enviada online");
      return { offline: false, sucesso: true };
    }

    throw new Error("Falha no servidor");

  } catch (err) {

    console.log("📴 Salvando leitura offline");

    salvarLeituraOffline(dados);

    return { offline: true, sucesso: true };
  }
};

---

# 📥 LISTAR LEITURAS OFFLINE

export const listarLeiturasOffline = (callback) => {
  db.transaction((tx) => {
    tx.executeSql(
      "SELECT * FROM leituras ORDER BY id DESC",
      [],
      (_, { rows }) => callback(rows._array),
      (_, err) => {
        console.log("Erro listar leituras:", err);
      }
    );
  });
};

---

# 🔁 MARCAR LEITURA COMO SINCRONIZADA

export const marcarLeituraSincronizada = (id) => {
  db.transaction((tx) => {
    tx.executeSql(
      "UPDATE leituras SET sync_status = 'sent' WHERE id = ?",
      [id]
    );
  });
};

---

# 🧠 GET LEITURAS PENDENTES

export const getLeiturasPendentes = (callback) => {
  db.transaction((tx) => {
    tx.executeSql(
      "SELECT * FROM sync_queue WHERE tipo = 'leitura' AND status = 'pending'",
      [],
      (_, { rows }) => callback(rows._array),
      (_, err) => console.log("Erro pendentes:", err)
    );
  });
};
