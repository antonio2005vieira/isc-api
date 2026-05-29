import * as SQLite from "expo-sqlite";

// ================= DATABASE =================
const db = SQLite.openDatabase("isc_sanep.db");

// ================= INIT DATABASE =================
export const initDB = async () => {

  db.transaction((tx) => {

    // ================= VERSIONAMENTO =================
    tx.executeSql(
      "PRAGMA user_version;",
      [],
      (_, result) => {
        const version = result.rows.item(0).user_version;

        console.log("DB VERSION:", version);

        // ================= MIGRAÇÃO V1 =================
        if (version < 1) {

          // ================= IMÓVEIS =================
          tx.executeSql(`
            CREATE TABLE IF NOT EXISTS imoveis (
              id INTEGER PRIMARY KEY NOT NULL,
              matricula TEXT,
              endereco TEXT,
              hidrometro TEXT,
              rota TEXT,
              dados TEXT,
              updated_at TEXT
            );
          `);

          // ================= LEITURAS =================
          tx.executeSql(`
            CREATE TABLE IF NOT EXISTS leituras (
              id TEXT PRIMARY KEY NOT NULL,
              imovel_id INTEGER,
              leitura INTEGER,
              anormalidade TEXT,
              latitude REAL,
              longitude REAL,
              created_at TEXT,
              status TEXT DEFAULT 'pending'
            );
          `);

          // ================= FILA DE SYNC =================
          tx.executeSql(`
            CREATE TABLE IF NOT EXISTS sync_queue (
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              tipo TEXT,
              payload TEXT,
              status TEXT DEFAULT 'pending',
              attempts INTEGER DEFAULT 0,
              last_error TEXT,
              created_at TEXT
            );
          `);

          // ================= LOGS =================
          tx.executeSql(`
            CREATE TABLE IF NOT EXISTS logs (
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              tipo TEXT,
              mensagem TEXT,
              created_at TEXT
            );
          `);

          // ================= ÍNDICES =================
          tx.executeSql(`
            CREATE INDEX IF NOT EXISTS idx_imoveis_rota
            ON imoveis (rota);
          `);

          tx.executeSql(`
            CREATE INDEX IF NOT EXISTS idx_leituras_status
            ON leituras (status);
          `);

          tx.executeSql(`
            CREATE INDEX IF NOT EXISTS idx_sync_status
            ON sync_queue (status);
          `);

          // ================= DEFINE VERSÃO =================
          tx.executeSql("PRAGMA user_version = 1;");

          console.log("DATABASE CREATED");
        }

      },
      (_, err) => {
        console.log("PRAGMA ERROR:", err);
      }
    );

  });

};

// ================= SALVAR IMÓVEIS =================
export const salvarImoveisOffline = async (imoveis = []) => {

  return new Promise((resolve, reject) => {

    db.transaction((tx) => {

      for (const item of imoveis) {

        tx.executeSql(
          `
          INSERT OR REPLACE INTO imoveis (
            id,
            matricula,
            endereco,
            hidrometro,
            rota,
            dados,
            updated_at
          )
          VALUES (?, ?, ?, ?, ?, ?, ?);
          `,
          [
            item.id,
            item.matricula || "",
            item.endereco || "",
            item.hidrometro || "",
            item.rota || "",
            JSON.stringify(item),
            new Date().toISOString()
          ]
        );
      }

    },
    (err) => {
      console.log("SAVE IMOVEIS ERROR:", err);
      reject(err);
    },
    () => {
      resolve(true);
    });

  });

};

// ================= LISTAR IMÓVEIS =================
export const listarImoveisOffline = async () => {

  return new Promise((resolve, reject) => {

    db.transaction((tx) => {

      tx.executeSql(
        `
        SELECT * FROM imoveis
        ORDER BY endereco ASC;
        `,
        [],
        (_, result) => {

          const rows = result.rows._array || [];

          const data = rows.map((item) => ({
            ...JSON.parse(item.dados || "{}")
          }));

          resolve(data);
        },
        (_, err) => {
          console.log("LIST IMOVEIS ERROR:", err);
          reject(err);
        }
      );

    });

  });

};

// ================= SALVAR LEITURA =================
export const salvarLeituraOffline = async (dados) => {

  return new Promise((resolve, reject) => {

    db.transaction((tx) => {

      // ================= LEITURA =================
      tx.executeSql(
        `
        INSERT OR REPLACE INTO leituras (
          id,
          imovel_id,
          leitura,
          anormalidade,
          latitude,
          longitude,
          created_at,
          status
        )
        VALUES (?, ?, ?, ?, ?, ?, ?, ?);
        `,
        [
          dados.id,
          dados.imovel_id,
          dados.leitura,
          dados.anormalidade,
          dados.latitude,
          dados.longitude,
          dados.created_at,
          "pending"
        ]
      );

      // ================= FILA SYNC =================
      tx.executeSql(
        `
        INSERT INTO sync_queue (
          tipo,
          payload,
          status,
          attempts,
          created_at
        )
        VALUES (?, ?, ?, ?, ?);
        `,
        [
          "leitura",
          JSON.stringify(dados),
          "pending",
          0,
          new Date().toISOString()
        ]
      );

    },
    (err) => {
      console.log("SAVE LEITURA ERROR:", err);
      reject(err);
    },
    () => {
      resolve(true);
    });

  });

};

// ================= LISTAR LEITURAS =================
export const listarLeiturasPendentes = async () => {

  return new Promise((resolve, reject) => {

    db.transaction((tx) => {

      tx.executeSql(
        `
        SELECT * FROM leituras
        WHERE status != 'sent'
        ORDER BY created_at ASC;
        `,
        [],
        (_, result) => {
          resolve(result.rows._array || []);
        },
        (_, err) => {
          console.log("LIST LEITURAS ERROR:", err);
          reject(err);
        }
      );

    });

  });

};

// ================= UPDATE STATUS =================
export const atualizarStatusLeitura = async (
  leituraId,
  status
) => {

  return new Promise((resolve, reject) => {

    db.transaction((tx) => {

      tx.executeSql(
        `
        UPDATE leituras
        SET status = ?
        WHERE id = ?;
        `,
        [status, leituraId]
      );

    },
    (err) => {
      console.log("UPDATE STATUS ERROR:", err);
      reject(err);
    },
    () => {
      resolve(true);
    });

  });

};

// ================= LISTAR FILA =================
export const listarFilaSync = async () => {

  return new Promise((resolve, reject) => {

    db.transaction((tx) => {

      tx.executeSql(
        `
        SELECT * FROM sync_queue
        WHERE status != 'sent'
        ORDER BY created_at ASC;
        `,
        [],
        (_, result) => {
          resolve(result.rows._array || []);
        },
        (_, err) => {
          console.log("QUEUE ERROR:", err);
          reject(err);
        }
      );

    });

  });

};

// ================= UPDATE FILA =================
export const atualizarFilaSync = async (
  id,
  status,
  attempts = 0,
  lastError = null
) => {

  return new Promise((resolve, reject) => {

    db.transaction((tx) => {

      tx.executeSql(
        `
        UPDATE sync_queue
        SET
          status = ?,
          attempts = ?,
          last_error = ?
        WHERE id = ?;
        `,
        [
          status,
          attempts,
          lastError,
          id
        ]
      );

    },
    (err) => {
      console.log("UPDATE QUEUE ERROR:", err);
      reject(err);
    },
    () => {
      resolve(true);
    });

  });

};

// ================= LOGS =================
export const salvarLog = async (
  tipo,
  mensagem
) => {

  return new Promise((resolve, reject) => {

    db.transaction((tx) => {

      tx.executeSql(
        `
        INSERT INTO logs (
          tipo,
          mensagem,
          created_at
        )
        VALUES (?, ?, ?);
        `,
        [
          tipo,
          mensagem,
          new Date().toISOString()
        ]
      );

    },
    (err) => {
      console.log("LOG ERROR:", err);
      reject(err);
    },
    () => {
      resolve(true);
    });

  });

};

// ================= EXPORT =================
export default db;
