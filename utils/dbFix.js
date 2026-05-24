const fs = require("fs");

const DB_PATH = "./database/db.json";

function loadDB() {
  const raw = fs.readFileSync(DB_PATH);
  return JSON.parse(raw);
}

function saveDB(db) {
  fs.writeFileSync(DB_PATH, JSON.stringify(db, null, 2));
}

function fixDB() {
  const db = loadDB();

  // ================= META =================
  db.meta = db.meta || {};
  db.meta.versao = db.meta.versao || "2.0";
  db.meta.sistema = db.meta.sistema || "ISC SANEP";
  db.meta.criado_em = db.meta.criado_em || new Date().toISOString();

  // ================= ARRAYS =================
  db.usuarios = db.usuarios || [];
  db.imoveis = db.imoveis || [];
  db.leituras = db.leituras || [];
  db.rotas = db.rotas || [];
  db.fotos = db.fotos || [];
  db.sync_queue = db.sync_queue || [];
  db.sync_log = db.sync_log || [];
  db.logs = db.logs || [];

  // ================= NORMALIZA IMÓVEIS =================
  db.imoveis = db.imoveis.map(i => ({
    id: i.id,
    matricula: i.matricula || null,
    endereco: i.endereco || null,
    hidrometro: i.hidrometro || null,
    rota: i.rota || null,
    latitude: i.latitude || null,
    longitude: i.longitude || null,
    visitado: i.visitado || false,
    sync_status: i.sync_status || "pending",
    version: i.version || 1,
    created_at: i.created_at || new Date().toISOString(),
    updated_at: i.updated_at || null
  }));

  // ================= NORMALIZA LEITURAS =================
  db.leituras = db.leituras.map(l => ({
    id: l.id,
    imovel_id: l.imovel_id,
    leitura: l.leitura,
    latitude: l.latitude || null,
    longitude: l.longitude || null,
    distancia: l.distancia || null,
    statusGPS: l.statusGPS || "valid",
    foto: l.foto || null,
    sync_status: l.sync_status || "pending",
    created_at: l.created_at || new Date().toISOString()
  }));

  // ================= SYNC QUEUE =================
  db.sync_queue = db.sync_queue.map(s => ({
    id: s.id,
    client_id: s.client_id,
    tipo: s.tipo,
    action: s.action || "create",
    payload: s.payload || {},
    status: s.status || "pending",
    created_at: s.created_at || new Date().toISOString(),
    synced_at: s.synced_at || null
  }));

  saveDB(db);
  return db;
}

module.exports = { fixDB };
