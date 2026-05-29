const express = require("express");
const fs = require("fs");
const path = require("path");

const router = express.Router();

// ================= FILES =================
const USUARIOS_FILE = path.join(__dirname, "../database/usuarios.json");
const IMEIS_FILE = path.join(__dirname, "../database/imeis.json");

const read = (file) => JSON.parse(fs.readFileSync(file));
const write = (file, data) => fs.writeFileSync(file, JSON.stringify(data, null, 2));

// ================= LOGIN PAGE =================
router.get("/", (req, res) => {
  res.send(`
    <html>
    <body style="font-family:Arial; display:flex; justify-content:center; align-items:center; height:100vh; background:#f3f3f3;">
      <form method="POST" action="/admin/login" style="background:#fff; padding:20px; width:300px;">
        <h2>ISC ADMIN</h2>
        <input name="user" placeholder="Usuário" style="width:100%; padding:8px;" />
        <input name="pass" type="password" placeholder="Senha" style="width:100%; padding:8px;" />
        <button style="width:100%; padding:10px; margin-top:10px;">Entrar</button>
      </form>
    </body>
    </html>
  `);
});

// ================= LOGIN =================
router.post("/login", express.urlencoded({ extended: true }), (req, res) => {
  const { user, pass } = req.body;

  if (user === "admin" && pass === "1234") {
    return res.redirect("/admin/dashboard");
  }

  res.send("❌ Login inválido");
});

// ================= DASHBOARD =================
router.get("/dashboard", (req, res) => {
  const usuarios = read(USUARIOS_FILE);
  const imeis = read(IMEIS_FILE);

  res.send(`
    <h1>ISC SANEP - PAINEL ADMIN</h1>

    <h2>👤 Usuários (${usuarios.length})</h2>
    <pre>${JSON.stringify(usuarios, null, 2)}</pre>

    <h2>📱 IMEIs (${imeis.length})</h2>
    <pre>${JSON.stringify(imeis, null, 2)}</pre>

    <hr>

    <h2>Criar Usuário</h2>
    <form method="POST" action="/admin/user">
      <input name="nome" placeholder="Nome" />
      <input name="login" placeholder="Login" />
      <input name="senha" placeholder="Senha" />
      <button>Criar</button>
    </form>

    <h2>Vincular IMEI</h2>
    <form method="POST" action="/admin/imei">
      <input name="imei" placeholder="IMEI/Device ID" />
      <input name="usuario" placeholder="Usuário" />
      <button>Vincular</button>
    </form>
  `);
});

// ================= CREATE USER =================
router.post("/user", express.urlencoded({ extended: true }), (req, res) => {
  const usuarios = read(USUARIOS_FILE);

  const novo = {
    id: Date.now(),
    nome: req.body.nome,
    login: req.body.login,
    senha: req.body.senha,
    nivel: "operador"
  };

  usuarios.push(novo);
  write(USUARIOS_FILE, usuarios);

  res.redirect("/admin/dashboard");
});

// ================= LINK DEVICE =================
router.post("/imei", express.urlencoded({ extended: true }), (req, res) => {
  const imeis = read(IMEIS_FILE);

  const novo = {
    id: Date.now(),
    imei: req.body.imei,
    usuario: req.body.usuario,
    ativo: true,
    created_at: new Date().toISOString()
  };

  imeis.push(novo);
  write(IMEIS_FILE, imeis);

  res.redirect("/admin/dashboard");
});

module.exports = router;
