import * as SQLite from "expo-sqlite";

const db = SQLite.openDatabaseSync("isc.db");

// 🔥 INICIALIZAR BANCO
export function initDatabase() {

  db.execSync(`
    CREATE TABLE IF NOT EXISTS imoveis (
      id INTEGER PRIMARY KEY NOT NULL,
      matricula TEXT,
      endereco TEXT,
      hidrometro TEXT,
      rota TEXT,
      visitado INTEGER DEFAULT 0
    );
  `);

  db.execSync(`
    CREATE TABLE IF NOT EXISTS leituras (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      imovel_id INTEGER,
      leitura TEXT,
      anormalidade TEXT,
      latitude TEXT,
      longitude TEXT,
      sincronizado INTEGER DEFAULT 0
    );
  `);

}

// 🔥 SALVAR IMÓVEIS
export function salvarImoveis(imoveis) {

  for (const item of imoveis) {

    db.runSync(
      `
      INSERT OR REPLACE INTO imoveis
      (
        id,
        matricula,
        endereco,
        hidrometro,
        rota,
        visitado
      )
      VALUES (?, ?, ?, ?, ?, ?)
      `,
      [
        item.id,
        item.matricula,
        item.endereco,
        item.hidrometro,
        item.rota,
        item.visitado ? 1 : 0
      ]
    );

  }

}

// 🔥 LISTAR IMÓVEIS
export function listarImoveis() {

  try {
    return db.getAllSync(`SELECT * FROM imoveis`);
  } catch (err) {
    console.log("Erro listarImoveis:", err);
    return [];
  }

}

// 🔥 SALVAR LEITURA OFFLINE
export function salvarLeituraOffline(leitura) {

  try {

    db.runSync(
      `
      INSERT INTO leituras
      (
        imovel_id,
        leitura,
        anormalidade,
        latitude,
        longitude,
        sincronizado
      )
      VALUES (?, ?, ?, ?, ?, 0)
      `,
      [
        leitura.imovel_id,
        leitura.leitura,
        leitura.anormalidade,
        leitura.latitude,
        leitura.longitude
      ]
    );

  } catch (err) {
    console.log("Erro salvarLeituraOffline:", err);
  }

}

// 🔥 LISTAR PENDENTES
export function listarLeiturasPendentes() {

  try {

    return db.getAllSync(`
      SELECT * FROM leituras
      WHERE sincronizado = 0
    `);

  } catch (err) {
    console.log("Erro listarLeiturasPendentes:", err);
    return [];
  }

}

// 🔥 MARCAR COMO SINCRONIZADO
export function marcarSincronizado(id) {

  try {

    db.runSync(
      `
      UPDATE leituras
      SET sincronizado = 1
      WHERE id = ?
      `,
      [id]
    );

  } catch (err) {
    console.log("Erro marcarSincronizado:", err);
  }

}

// 🔥 MARCAR IMÓVEL COMO VISITADO
export function marcarVisitado(imovel_id) {

  try {

    db.runSync(
      `
      UPDATE imoveis
      SET visitado = 1
      WHERE id = ?
      `,
      [imovel_id]
    );

  } catch (err) {
    console.log("Erro marcarVisitado:", err);
  }

}
