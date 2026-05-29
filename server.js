require("dotenv").config();

const express = require("express");
const fs = require("fs");
const path = require("path");
const jwt = require("jsonwebtoken");
const bcrypt = require("bcryptjs");
const cors = require("cors");
const { v4: uuidv4 } = require("uuid");

const app = express();
app.use(express.json());
app.use(cors());

// ================= CONFIG =================
const PORT = process.env.PORT || 3000;
const SECRET = process.env.JWT_SECRET || "isc_secret_key";

// ================= PATHS =================
const DATA_DIR = process.env.DATA_DIR || path.join(__dirname, "database");

const USERS_FILE = path.join(DATA_DIR, "usuarios.json");
const DEVICES_FILE = path.join(DATA_DIR, "devices.json");
const IMOVEIS_FILE = path.join(DATA_DIR, "imoveis.json");
const LEITURAS_FILE = path.join(DATA_DIR, "leituras.json");

// ================= INIT FILES =================
function ensureFile(file) {
  if (!fs.existsSync(file)) {
    fs.writeFileSync(file, "[]");
  }
}

[USERS_FILE, DEVICES_FILE, IMOVEIS_FILE, LEITURAS_FILE].forEach(ensureFile);

// ================= HELPERS =================
function readJSON(file) {
  try {
    return JSON.parse(fs.readFileSync(file, "utf-8"));
  } catch (err) {
    console.log("Erro ao ler JSON:", err);
    return [];
  }
}

function writeJSON(file, data) {
  try {
    fs.writeFileSync(file, JSON.stringify(data, null, 2));
  } catch (err) {
    console.log("Erro ao escrever JSON:", err);
  }
}

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
  } catch (err) {
    return res.status(401).json({ erro: "Token inválido" });
  }
}

// ================= LOGIN =================
app.post("/auth/login", async (req, res) => {
  try {
    const { login, senha } = req.body;

    if (!login || !senha) {
      return res.status(400).json({
        status: false,
        erro: "Login e senha obrigatórios"
      });
    }

    const usuarios = readJSON(USERS_FILE);

    const user = usuarios.find(
      (u) => u.login === login && u.ativo === 1
    );

    if (!user) {
      return res.status(401).json({
        status: false,
        erro: "Usuário não encontrado"
      });
    }

    const senhaValida = await bcrypt.compare(senha, user.senha);

    if (!senhaValida) {
      return res.status(401).json({
        status: false,
        erro: "Senha inválida"
      });
    }

    const token = jwt.sign(
      {
        id: user.id,
        nome: user.nome,
        nivel: user.nivel
      },
      SECRET,
      { expiresIn: "7d" }
    );

    res.json({
      token,
      user: {
        id: user.id,
        nome: user.nome,
        nivel: user.nivel
      }
    });
  } catch (err) {
    console.log("Erro login:", err);
    res.status(500).json({
      status: false,
      erro: "Erro interno no login"
    });
  }
});

// ================= DEVICE =================
app.post("/device/validate", (req, res) => {
  const { imei } = req.body;

  if (!imei) {
    return res.status(400).json({ autorizado: false });
  }

  const devices = readJSON(DEVICES_FILE);
  const device = devices.find((d) => d.imei === imei);

  if (!device || device.ativo !== true) {
    return res.status(403).json({ autorizado: false });
  }

  res.json({ autorizado: true, device });
});

app.post("/device/register", (req, res) => {
  const { imei } = req.body;

  if (!imei) {
    return res.status(400).json({ success: false });
  }

  const devices = readJSON(DEVICES_FILE);
  const exists = devices.find((d) => d.imei === imei);

  if (exists) {
    return res.json({
      success: true,
      message: "Já cadastrado"
    });
  }

  const novo = {
    id: uuidv4(),
    imei,
    ativo: false,
    criado_em: new Date()
  };

  devices.push(novo);
  writeJSON(DEVICES_FILE, devices);

  res.json({
    success: true,
    device: novo
  });
});

// ================= IMOVEIS =================
app.get("/imoveis", auth, (req, res) => {
  const imoveis = readJSON(IMOVEIS_FILE);
  res.json(imoveis);
});

// ================= LEITURAS =================
app.post("/leituras", auth, (req, res) => {
  try {
    const leitura = req.body;

    if (!leitura || !leitura.imovel_id || !leitura.leitura) {
      return res.status(400).json({
        success: false,
        erro: "Dados da leitura inválidos"
      });
    }

    const leituras = readJSON(LEITURAS_FILE);

    // 🔥 IDempotência (não duplicar)
    const exists = leituras.find(
      (l) => l.local_id === leitura.local_id
    );

    if (exists) {
      return res.json({
        success: true,
        message: "Leitura já sincronizada"
      });
    }

    const novaLeitura = {
      id: uuidv4(),
      ...leitura,
      recebido_em: new Date(),
      usuario_id: req.user.id
    };

    leituras.push(novaLeitura);
    writeJSON(LEITURAS_FILE, leituras);

    res.json({
      success: true,
      id: novaLeitura.id
    });
  } catch (err) {
    console.log("Erro salvar leitura:", err);
    res.status(500).json({
      success: false,
      erro: "Erro ao salvar leitura"
    });
  }
});

// ================= DASHBOARD =================
app.get("/dashboard", auth, (req, res) => {
  const imoveis = readJSON(IMOVEIS_FILE);
  const leituras = readJSON(LEITURAS_FILE);

  const total_imoveis = imoveis.length;
  const total_leituras = leituras.length;
  const visitados = imoveis.filter((i) => i.visitado).length;
  const pendentes = total_imoveis - visitados;

  const produtividade = total_imoveis
    ? ((visitados / total_imoveis) * 100).toFixed(2)
    : 0;

  res.json({
    dashboard: {
      total_imoveis,
      total_leituras,
      visitados,
      pendentes,
      produtividade
    }
  });
});

// ================= STATUS =================
app.get("/", (req, res) => {
  res.json({
    status: "ok",
    ambiente: process.env.NODE_ENV || "local",
    uptime: process.uptime()
  });
});

// ================= START =================
app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});
