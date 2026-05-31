require("dotenv").config();

const express = require("express");
const cors = require("cors");
const jwt = require("jsonwebtoken");
const bcrypt = require("bcryptjs");
const { v4: uuidv4 } = require("uuid");
const { Pool } = require("pg");

const app = express();

/**
 * ==============================
 * 🌐 MIDDLEWARE
 * ==============================
 */
app.use(express.json());
app.use(cors());

/**
 * ==============================
 * 🔥 DATABASE (CORRIGIDO)
 * ==============================
 */
const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: { rejectUnauthorized: false }, // necessário no Render
});

pool.connect()
  .then(() => console.log("🟢 PostgreSQL conectado"))
  .catch((err) => console.log("🔴 Erro DB:", err));

/**
 * ==============================
 * 🔐 CONFIG
 * ==============================
 */
const PORT = process.env.PORT || 3000;
const SECRET = process.env.SECRET;

/**
 * ==============================
 * 🧪 DEBUG (IMPORTANTE)
 * ==============================
 */
console.log("DATABASE_URL LOADED:", !!process.env.DATABASE_URL);

/**
 * ==============================
 * 🔐 AUTH MIDDLEWARE
 * ==============================
 */
function auth(req, res, next) {
  const token = req.headers.authorization?.split(" ")[1];

  if (!token) {
    return res.status(401).json({ erro: "Token ausente" });
  }

  try {
    const decoded = jwt.verify(token, SECRET);
    req.user = decoded;
    next();
  } catch {
    return res.status(401).json({ erro: "Token inválido" });
  }
}

/**
 * ==============================
 * 🔑 LOGIN
 * ==============================
 */
app.post("/auth/login", async (req, res) => {
  try {
    const { login, senha, imei } = req.body;

    const result = await pool.query(
      "SELECT * FROM usuarios WHERE login = $1 AND ativo = 1",
      [login]
    );

    const user = result.rows[0];

    if (!user) {
      return res.status(401).json({ erro: "Usuário não encontrado" });
    }

    const senhaValida = await bcrypt.compare(senha, user.senha);

    if (!senhaValida) {
      return res.status(401).json({ erro: "Senha inválida" });
    }

    // IMEI
    if (user.imei && user.imei !== imei) {
      return res.status(403).json({ erro: "Dispositivo não autorizado" });
    }

    if (!user.imei && imei) {
      await pool.query(
        "UPDATE usuarios SET imei = $1 WHERE id = $2",
        [imei, user.id]
      );
    }

    const token = jwt.sign(
      { id: user.id, nome: user.nome, nivel: user.nivel },
      SECRET,
      { expiresIn: "7d" }
    );

    return res.json({
      token,
      user: {
        id: user.id,
        nome: user.nome,
        nivel: user.nivel,
      },
    });

  } catch (err) {
    console.log("Erro login:", err);
    return res.status(500).json({
      erro: "Erro interno no login",
      detalhe: err.message,
    });
  }
});

/**
 * ==============================
 * 🏠 IMÓVEIS (CORRIGIDO + DEBUG)
 * ==============================
 */
app.get("/imoveis", auth, async (req, res) => {
  try {
    console.log("GET /imoveis");

    const result = await pool.query(
      "SELECT * FROM imoveis ORDER BY codigo"
    );

    return res.json(result.rows);

  } catch (err) {
    console.log("Erro imoveis:", err);
    return res.status(500).json({ erro: "Erro ao buscar imóveis" });
  }
});

/**
 * ==============================
 * 📊 LEITURAS
 * ==============================
 */
app.post("/leituras", auth, async (req, res) => {
  try {
    const { local_id, imovel_id, leitura, data, observacao } = req.body;

    const exists = await pool.query(
      "SELECT id FROM leituras WHERE local_id = $1",
      [local_id]
    );

    if (exists.rows.length > 0) {
      return res.json({ success: true, message: "Já sincronizado" });
    }

    const id = uuidv4();

    await pool.query(
      `INSERT INTO leituras
       (id, local_id, imovel_id, leitura, data, observacao, enviado_em)
       VALUES ($1,$2,$3,$4,$5,$6,NOW())`,
      [id, local_id, imovel_id, leitura, data, observacao]
    );

    return res.json({ success: true, id });

  } catch (err) {
    console.log("Erro leituras:", err);
    return res.status(500).json({ erro: "Erro ao salvar leitura" });
  }
});

/**
 * ==============================
 * 🧪 HEALTH CHECK
 * ==============================
 */
app.get("/", (req, res) => {
  res.json({
    status: "ok",
    uptime: process.uptime(),
  });
});

/**
 * ==============================
 * 🚀 START SERVER
 * ==============================
 */
app.listen(PORT, "0.0.0.0", () => {
  console.log(`🚀 Servidor rodando na porta ${PORT}`);
});
