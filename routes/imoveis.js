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

// ================= LISTAR TODOS =================
router.get("/", (req, res) => {
  const db = readDB();
  res.json(db.imoveis);
});

// ================= CRIAR IMÓVEL =================
router.post("/", (req, res) => {
  const db = readDB();

  const {
    matricula,
    endereco,
    hidrometro,
    rota,
    latitude,
    longitude
  } = req.body;

  if (!matricula || !endereco) {
    return res.json({
      erro: "Matrícula e endereço são obrigatórios"
    });
  }

  const imovel = {
    id: Date.now(),
    matricula,
    endereco,
    hidrometro: hidrometro || null,
    rota: rota || null,

    // GPS do imóvel (AGORA OBRIGATÓRIO PARA ROTAS INTELIGENTES)
    latitude: latitude ? Number(latitude) : null,
    longitude: longitude ? Number(longitude) : null,

    visitado: false,
    created_at: new Date().toISOString(),
    updated_at: null,
    sync_status: "pending"
  };

  db.imoveis.push(imovel);

  saveDB(db);

  res.json({
    status: true,
    imovel
  });
});

// ================= ATUALIZAR IMÓVEL =================
router.put("/:id", (req, res) => {
  const db = readDB();

  const imovel = db.imoveis.find(i => i.id == req.params.id);

  if (!imovel) {
    return res.json({ erro: "Imóvel não encontrado" });
  }

  const {
    matricula,
    endereco,
    hidrometro,
    rota,
    latitude,
    longitude
  } = req.body;

  if (matricula) imovel.matricula = matricula;
  if (endereco) imovel.endereco = endereco;
  if (hidrometro) imovel.hidrometro = hidrometro;
  if (rota) imovel.rota = rota;

  if (latitude !== undefined) imovel.latitude = Number(latitude);
  if (longitude !== undefined) imovel.longitude = Number(longitude);

  imovel.updated_at = new Date().toISOString();
  imovel.sync_status = "updated";

  saveDB(db);

  res.json({
    status: true,
    imovel
  });
});

// ================= DELETAR IMÓVEL =================
router.delete("/:id", (req, res) => {
  const db = readDB();

  db.imoveis = db.imoveis.filter(i => i.id != req.params.id);

  saveDB(db);

  res.json({
    status: true
  });
});

// ================= MARCAR VISITADO =================
router.patch("/:id/visitado", (req, res) => {
  const db = readDB();

  const imovel = db.imoveis.find(i => i.id == req.params.id);

  if (!imovel) {
    return res.json({ erro: "Imóvel não encontrado" });
  }

  imovel.visitado = true;
  imovel.updated_at = new Date().toISOString();
  imovel.sync_status = "updated";

  saveDB(db);

  res.json({
    status: true,
    imovel
  });
});

// ================= LISTAR ORDENADOS SIMPLES =================
router.get("/ordenados", (req, res) => {
  const db = readDB();

  const pendentes = db.imoveis.filter(i => !i.visitado);
  const visitados = db.imoveis.filter(i => i.visitado);

  pendentes.sort((a, b) => a.id - b.id);

  const ordenados = [...pendentes, ...visitados];

  res.json({
    total: db.imoveis.length,
    pendentes: pendentes.length,
    ordenados
  });
});

// ================= DISTÂNCIA (HAVERSINE) =================
function calcularDistancia(lat1, lon1, lat2, lon2) {
  const R = 6371e3;

  const toRad = (v) => (v * Math.PI) / 180;

  const φ1 = toRad(lat1);
  const φ2 = toRad(lat2);

  const Δφ = toRad(lat2 - lat1);
  const Δλ = toRad(lon2 - lon1);

  const a =
    Math.sin(Δφ / 2) ** 2 +
    Math.cos(φ1) * Math.cos(φ2) *
    Math.sin(Δλ / 2) ** 2;

  const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));

  return R * c;
}

// ================= ROTA INTELIGENTE =================
router.get("/rota-inteligente/:rota", (req, res) => {
  const db = readDB();

  const imoveis = db.imoveis.filter(
    i => i.rota == req.params.rota
  );

  if (imoveis.length === 0) {
    return res.json({
      status: false,
      erro: "Nenhum imóvel encontrado para essa rota"
    });
  }

  let naoVisitados = [...imoveis];

  const rotaOrdenada = [];

  let atual = naoVisitados.find(i => i.latitude && i.longitude);

  if (!atual) {
    return res.json({
      status: false,
      erro: "Imóveis sem GPS na rota"
    });
  }

  while (naoVisitados.length > 0) {

    let maisProximoIndex = 0;
    let menorDistancia = Infinity;

    for (let i = 0; i < naoVisitados.length; i++) {
      const imovel = naoVisitados[i];

      if (!imovel.latitude || !imovel.longitude) continue;

      const dist = calcularDistancia(
        atual.latitude,
        atual.longitude,
        imovel.latitude,
        imovel.longitude
      );

      if (dist < menorDistancia) {
        menorDistancia = dist;
        maisProximoIndex = i;
      }
    }

    const escolhido = naoVisitados.splice(maisProximoIndex, 1)[0];

    rotaOrdenada.push({
      ...escolhido,
      distancia: menorDistancia
    });

    atual = escolhido;
  }

  res.json({
    status: true,
    total: rotaOrdenada.length,
    rota: rotaOrdenada
  });
});

module.exports = router;
