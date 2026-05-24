const express = require("express");
const router = express.Router();
const fs = require("fs");

// ================= DB =================
const DB_PATH = "./database/db.json";

function readDB() {
  return JSON.parse(fs.readFileSync(DB_PATH));
}

function saveDB(data) {
  fs.writeFileSync(DB_PATH, JSON.stringify(data, null, 2));
}

// ================= DISTÂNCIA (HAVERSINE) =================
function calcularDistancia(lat1, lon1, lat2, lon2) {
  const R = 6371e3;

  const toRad = (v) => (v * Math.PI) / 180;

  const φ1 = toRad(lat1);
  const φ2 = toRad(lat2);

  const Δφ = toRad(lat2 - lat1);
  const Δλ = toRad(lon2 - lon1);

  const a =
    Math.sin(Δφ / 2) * Math.sin(Δφ / 2) +
    Math.cos(φ1) *
      Math.cos(φ2) *
      Math.sin(Δλ / 2) *
      Math.sin(Δλ / 2);

  const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));

  return R * c;
}

// ================= CRIAR LEITURA =================
router.post("/", (req, res) => {
  const db = readDB();

  const {
    imovel_id,
    leitura,
    latitude,
    longitude,
    foto
  } = req.body;

  // ================= VALIDAÇÃO BÁSICA =================
  if (!imovel_id || !leitura) {
    return res.json({
      status: false,
      erro: "Imóvel e leitura são obrigatórios"
    });
  }

  const imovel = db.imoveis.find(i => i.id == imovel_id);

  if (!imovel) {
    return res.json({
      status: false,
      erro: "Imóvel não encontrado"
    });
  }

  // ================= GPS OBRIGATÓRIO =================
  if (
    latitude === undefined ||
    longitude === undefined ||
    latitude === null ||
    longitude === null ||
    isNaN(Number(latitude)) ||
    isNaN(Number(longitude))
  ) {
    return res.json({
      status: false,
      erro: "GPS obrigatório (latitude e longitude)"
    });
  }

  // ================= IMÓVEL SEM GPS =================
  if (!imovel.latitude || !imovel.longitude) {
    return res.json({
      status: false,
      erro: "Imóvel sem coordenada GPS cadastrada"
    });
  }

  // ================= DISTÂNCIA =================
  const raioPermitido = 50;

  const distancia = calcularDistancia(
    Number(latitude),
    Number(longitude),
    Number(imovel.latitude),
    Number(imovel.longitude)
  );

  let statusGPS = "valid";

  if (distancia > raioPermitido) {
    statusGPS = "invalid_location";
  }

  // ================= BLOQUEIO ANTI-FRAUDE =================
  if (statusGPS === "invalid_location") {
    return res.json({
      status: false,
      erro: "Leitura fora da área permitida",
      distancia
    });
  }

  // ================= CRIAR LEITURA =================
  const novaLeitura = {
    id: Date.now(),
    imovel_id,
    leitura: Number(leitura),
    latitude: Number(latitude),
    longitude: Number(longitude),
    foto: foto || null,
    distancia,
    statusGPS,
    created_at: new Date().toISOString(),
    sync_status: "pending"
  };

  db.leituras.push(novaLeitura);

  // ================= ATUALIZAR IMÓVEL =================
  imovel.visitado = true;
  imovel.updated_at = new Date().toISOString();
  imovel.sync_status = "updated";

  saveDB(db);

  res.json({
    status: true,
    leitura: novaLeitura
  });
});

// ================= LISTAR LEITURAS =================
router.get("/", (req, res) => {
  const db = readDB();
  res.json(db.leituras);
});

// ================= POR IMÓVEL =================
router.get("/imovel/:id", (req, res) => {
  const db = readDB();

  const leituras = db.leituras.filter(
    l => l.imovel_id == req.params.id
  );

  res.json(leituras);
});

// ================= SYNC =================
router.patch("/:id/sync", (req, res) => {
  const db = readDB();

  const leitura = db.leituras.find(l => l.id == req.params.id);

  if (!leitura) {
    return res.json({ status: false, erro: "Leitura não encontrada" });
  }

  leitura.sync_status = "synced";

  saveDB(db);

  res.json({
    status: true
  });
});

module.exports = router;
