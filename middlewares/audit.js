const fs = require("fs");

const DB_PATH = "./database/db.json";

function readDB() {
  return JSON.parse(fs.readFileSync(DB_PATH));
}

function saveDB(data) {
  fs.writeFileSync(DB_PATH, JSON.stringify(data, null, 2));
}

function audit(action, req, extra = {}) {
  const db = readDB();

  db.logs = db.logs || [];

  db.logs.push({
    id: Date.now(),
    action,
    endpoint: req.originalUrl,
    method: req.method,
    body: req.body || null,
    params: req.params || null,
    query: req.query || null,
    imei: req.headers["imei"] || null,
    ip: req.ip,
    extra,
    created_at: new Date().toISOString()
  });

  saveDB(db);
}

module.exports = { audit };
