const express = require("express");
const router = express.Router();
const fs = require("fs");

const DB_PATH = "./database/db.json";

// ================= DB =================
function readDB() {
  return JSON.parse(fs.readFileSync(DB_PATH));
}

function saveDB(data) {
  fs.writeFileSync(DB_PATH, JSON.stringify(data, null, 2));
}

// ================= PUSH (APP → SERVER) =================
router.post("/push", (req, res) => {
  const db = readDB();

  const itens = req.body.items || [];
  const resultado = [];

  itens.forEach(item => {

    if (!item.tipo || !item.payload) {
      resultado.push({
        status: "erro",
        motivo: "dados inválidos"
      });
      return;
    }

    // ================= LEITURA =================
    if (item.tipo === "leitura") {

      const existe = db.leituras.find(
        l => l.id == item.payload.id
      );

      if (existe) {
        resultado.push({
          id: item.payload.id,
          status: "duplicado"
        });
        return;
      }

      db.leituras.push({
        ...item.payload,
        sync_status: "synced"
      });

      resultado.push({
        id: item.payload.id,
        status: "ok"
      });
    }

    // ================= IMÓVEL =================
    if (item.tipo === "imovel") {

      const imovel = db.imoveis.find(
        i => i.id == item.payload.id
      );

      if (!imovel) {
        db.imoveis.push({
          ...item.payload,
          sync_status: "synced"
        });

        resultado.push({
          id: item.payload.id,
          status: "created"
        });

        return;
      }

      // conflito simples por versão
      if ((imovel.version || 1) > (item.payload.version || 1)) {
        resultado.push({
          id: imovel.id,
          status: "conflito"
        });
        return;
      }

      Object.assign(imovel, item.payload);
      imovel.sync_status = "synced";

      resultado.push({
        id: imovel.id,
        status: "updated"
      });
    }
  });

  saveDB(db);

  res.json({
    status: true,
    resultado
  });
});

// ================= PULL (SERVER → APP) =================
router.get("/pull", (req, res) => {
  const db = readDB();

  const imoveis = db.imoveis.filter(i => i.sync_status !== "synced");
  const leituras = db.leituras.filter(l => l.sync_status !== "synced");

  res.json({
    imoveis,
    leituras,
    server_time: new Date().toISOString()
  });
});

// ================= STATUS SYNC =================
router.get("/status", (req, res) => {
  const db = readDB();

  const total = (db.sync_queue || []).length;
  const pendentes = (db.sync_queue || []).filter(i => i.status === "pending").length;
  const sincronizados = (db.sync_queue || []).filter(i => i.status === "synced").length;

  res.json({
    total,
    pendentes,
    sincronizados
  });
});

// ================= PROCESSAR FILA =================
router.post("/process", (req, res) => {
  const db = readDB();

  const fila = db.sync_queue || [];

  const pendentes = fila.filter(i => i.status === "pending");

  const resultado = [];

  pendentes.forEach(item => {
    item.status = "synced";
    item.synced_at = new Date().toISOString();

    db.sync_log = db.sync_log || [];
    db.sync_log.push({
      id: Date.now(),
      client_id: item.client_id,
      tipo: item.tipo,
      synced_at: item.synced_at
    });

    resultado.push({
      client_id: item.client_id,
      status: "ok"
    });
  });

  saveDB(db);

  res.json({
    status: true,
    processados: resultado.length,
    resultado
  });
});

module.exports = router;
