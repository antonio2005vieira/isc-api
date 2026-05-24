const express = require("express");
const router = express.Router();
const fs = require("fs");

const DB_PATH = "./database/db.json";

// ================= DB =================
function readDB() {
  return JSON.parse(fs.readFileSync(DB_PATH));
}

// ================= RELATÓRIO GERAL =================
router.get("/geral", (req, res) => {
  const db = readDB();

  const totalImoveis = db.imoveis.length;
  const totalLeituras = db.leituras.length;
  const totalUsuarios = db.usuarios.length;

  const visitados = db.imoveis.filter(i => i.visitado).length;
  const pendentes = totalImoveis - visitados;

  res.json({
    totalImoveis,
    totalLeituras,
    totalUsuarios,
    visitados,
    pendentes
  });
});

// ================= RELATÓRIO POR ROTA =================
router.get("/rota/:rota", (req, res) => {
  const db = readDB();

  const imoveis = db.imoveis.filter(i => i.rota == req.params.rota);
  const leituras = db.leituras.filter(l =>
    imoveis.find(i => i.id == l.imovel_id)
  );

  res.json({
    rota: req.params.rota,
    imoveis: imoveis.length,
    leituras: leituras.length
  });
});

// ================= EXPORT CSV =================
router.get("/export/csv", (req, res) => {
  const db = readDB();

  let csv = "id,imovel_id,leitura,latitude,longitude,status,data\n";

  db.leituras.forEach(l => {
    csv += `${l.id},${l.imovel_id},${l.leitura},${l.latitude},${l.longitude},${l.sync_status},${l.created_at}\n`;
  });

  res.header("Content-Type", "text/csv");
  res.attachment("leituras.csv");
  res.send(csv);
});

// ================= DETECÇÃO SIMPLES DE ERROS =================
router.get("/analise", (req, res) => {
  const db = readDB();

  const foraGPS = db.leituras.filter(l => l.statusGPS === "invalid_location").length;
  const semGPS = db.leituras.filter(l => !l.latitude || !l.longitude).length;

  const duplicados = db.leituras.length - new Set(db.leituras.map(l => l.id)).size;

  res.json({
    totalLeituras: db.leituras.length,
    foraGPS,
    semGPS,
    duplicados
  });
});

module.exports = router;
