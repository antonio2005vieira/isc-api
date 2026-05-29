require("dotenv").config();

const express = require("express");
const cors = require("cors");
const jwt = require("jsonwebtoken");
const bcrypt = require("bcryptjs");
const { v4: uuidv4 } = require("uuid");
const pool = require("./database/db");

const app = express();

app.use(express.json());
app.use(cors());

// ================= CONFIG =================
const PORT = process.env.PORT || 3000;
const SECRET = process.env.SECRET;

// ================= TESTE DB =================
pool.query("SELECT NOW()")
  .then(() => console.log("🟢 PostgreSQL conectado"))
  .catch((err) => console.log("🔴 Erro DB:", err));

// ================= AUTH =================
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

// ================= LOGIN =================
app.post("/auth/login", async (req, res) => {
  try {
    const { login, senha } = req.body;

    const result = await pool.query(
      "SELECT * FROM usuarios WHERE login = $1 AND ativo = 1",
      [login]
    );

    const user = result.rows[0];

    if (!user) {
      return res.status(401).json({
        status: false,
        erro: "Usuário não encontrado",
      });
    }

    const senhaValida = await bcrypt.compare(senha, user.senha);

    if (!senhaValida) {
      return res.status(401).json({
        status: false,
        erro: "Senha inválida",
      });
    }

    const token = jwt.sign(
      {
        id: user.id,
        nome: user.nome,
        nivel: user.nivel,
      },
      SECRET,
      { expiresIn: "7d" }
    );

    res.json({
      token,
      user: {
        id: user.id,
        nome: user.nome,
        nivel: user.nivel,
      },
    });
  } catch (err) {
    console.log("Erro login:", err);
    res.status(500).json({ erro: "Erro interno no login" });
  }
});

// ================= IMOVEIS =================
app.get("/imoveis", auth, async (req, res) => {
  try {
    const result = await pool.query("SELECT * FROM imoveis");
    res.json(result.rows);
  } catch (err) {
    console.log(err);
    res.status(500).json({ erro: "Erro ao buscar imóveis" });
  }
});

// ================= LEITURAS =================
app.post("/leituras", auth, async (req, res) => {
  try {
    const { local_id, imovel_id, leitura, data, observacao } = req.body;

    if (!local_id) {
      return res.status(400).json({
        success: false,
        erro: "local_id obrigatório",
      });
    }

    // evitar duplicação (offline sync)
    const exists = await pool.query(
      "SELECT id FROM leituras WHERE local_id = $1",
      [local_id]
    );

    if (exists.rows.length > 0) {
      return res.json({
        success: true,
        message: "Leitura já sincronizada",
      });
    }

    const id = uuidv4();

    await pool.query(
      `INSERT INTO leituras 
       (id, local_id, imovel_id, leitura, data, observacao, enviado_em)
       VALUES ($1, $2, $3, $4, $5, $6, NOW())`,
      [id, local_id, imovel_id, leitura, data, observacao]
    );

    res.json({
      success: true,
      id,
    });
  } catch (err) {
    console.log("Erro leitura:", err);
    res.status(500).json({
      success: false,
      erro: "Erro ao salvar leitura",
    });
  }
});

// ================= DASHBOARD =================
app.get("/dashboard", auth, async (req, res) => {
  try {
    const imoveis = await pool.query("SELECT COUNT(*) FROM imoveis");
    const leituras = await pool.query("SELECT COUNT(*) FROM leituras");
    const visitados = await pool.query(
      "SELECT COUNT(*) FROM imoveis WHERE visitado = true"
    );

    const total_imoveis = parseInt(imoveis.rows[0].count);
    const total_leituras = parseInt(leituras.rows[0].count);
    const total_visitados = parseInt(visitados.rows[0].count);

    const pendentes = total_imoveis - total_visitados;

    const produtividade = total_imoveis
      ? ((total_visitados / total_imoveis) * 100).toFixed(2)
      : 0;

    res.json({
      dashboard: {
        total_imoveis,
        total_leituras,
        visitados: total_visitados,
        pendentes,
        produtividade,
      },
    });
  } catch (err) {
    console.log(err);
    res.status(500).json({ erro: "Erro no dashboard" });
  }
});

// ================= STATUS =================
app.get("/", (req, res) => {
  res.json({
    status: "ok",
    ambiente: process.env.NODE_ENV || "development",
    uptime: process.uptime(),
  });
});

// ================= START =================
app.listen(PORT, () => {
  console.log(`🚀 Servidor rodando na porta ${PORT}`);
});
