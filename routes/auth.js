const express = require("express");
const router = express.Router();

const fs = require("fs");
const jwt = require("jsonwebtoken");
const bcrypt = require("bcryptjs");
const { v4: uuidv4 } = require("uuid");

const auth = require("../middleware/auth");

const DB_PATH = "./database/db.json";

const SECRET = "isc_secret_key";

// ================= DATABASE =================

function readDB() {
  return JSON.parse(fs.readFileSync(DB_PATH));
}

function saveDB(data) {
  fs.writeFileSync(DB_PATH, JSON.stringify(data, null, 2));
}

// ================= TOKEN =================

function gerarToken(usuario) {

  return jwt.sign(
    {
      id: usuario.id,
      login: usuario.login,
      nome: usuario.nome,
      imei: usuario.imei,
      nivel: usuario.nivel
    },
    SECRET,
    {
      expiresIn: "7d"
    }
  );

}

// ================= REGISTER =================

router.post("/register", async (req, res) => {

  try {

    const db = readDB();

    const {
      nome,
      login,
      senha,
      imei,
      nivel
    } = req.body;

    if (!nome || !login || !senha || !imei) {

      return res.status(400).json({
        error: "Dados obrigatórios"
      });

    }

    const usuarioExiste = db.usuarios.find(
      u => u.login === login
    );

    if (usuarioExiste) {

      return res.status(400).json({
        error: "Usuário já existe"
      });

    }

    const senhaHash = await bcrypt.hash(senha, 10);

    const usuario = {
      id: uuidv4(),
      nome,
      login,
      senha: senhaHash,
      imei,
      nivel: nivel || "leiturista",
      ativo: true,
      criado_em: new Date().toISOString(),
      ultimo_login: null
    };

    db.usuarios.push(usuario);

    saveDB(db);

    res.json({
      status: true,
      usuario: {
        id: usuario.id,
        nome: usuario.nome,
        login: usuario.login,
        imei: usuario.imei,
        nivel: usuario.nivel,
        ativo: usuario.ativo
      }
    });

  } catch (err) {

    res.status(500).json({
      error: err.message
    });

  }

});

// ================= LOGIN =================

router.post("/login", async (req, res) => {

  try {

    const db = readDB();

    const {
      login,
      senha,
      imei
    } = req.body;

    if (!login || !senha || !imei) {

      return res.status(400).json({
        error: "Login, senha e IMEI obrigatórios"
      });

    }

    const usuario = db.usuarios.find(
      u => u.login === login
    );

    if (!usuario) {

      return res.status(404).json({
        error: "Usuário não encontrado"
      });

    }

    if (!usuario.ativo) {

      return res.status(403).json({
        error: "Usuário bloqueado"
      });

    }

    const senhaOk = await bcrypt.compare(
      senha,
      usuario.senha
    );

    if (!senhaOk) {

      return res.status(401).json({
        error: "Senha inválida"
      });

    }

    if (usuario.imei !== imei) {

      return res.status(403).json({
        error: "IMEI não autorizado"
      });

    }

    usuario.ultimo_login = new Date().toISOString();

    saveDB(db);

    const token = gerarToken(usuario);

    res.json({
      status: true,
      token,
      usuario: {
        id: usuario.id,
        nome: usuario.nome,
        login: usuario.login,
        imei: usuario.imei,
        nivel: usuario.nivel,
        ativo: usuario.ativo
      }
    });

  } catch (err) {

    res.status(500).json({
      error: err.message
    });

  }

});

// ================= USUÁRIO LOGADO =================

router.get("/me", auth, async (req, res) => {

  try {

    const db = readDB();

    const usuario = db.usuarios.find(
      u => u.id === req.user.id
    );

    if (!usuario) {

      return res.status(404).json({
        error: "Usuário não encontrado"
      });

    }

    res.json({
      status: true,
      usuario: {
        id: usuario.id,
        nome: usuario.nome,
        login: usuario.login,
        imei: usuario.imei,
        nivel: usuario.nivel,
        ativo: usuario.ativo,
        criado_em: usuario.criado_em,
        ultimo_login: usuario.ultimo_login
      }
    });

  } catch (err) {

    res.status(500).json({
      error: err.message
    });

  }

});

// ================= LISTAR USUÁRIOS =================

router.get("/usuarios", auth, async (req, res) => {

  try {

    const db = readDB();

    const usuarios = db.usuarios.map(usuario => ({
      id: usuario.id,
      nome: usuario.nome,
      login: usuario.login,
      imei: usuario.imei,
      nivel: usuario.nivel,
      ativo: usuario.ativo,
      criado_em: usuario.criado_em,
      ultimo_login: usuario.ultimo_login
    }));

    res.json({
      status: true,
      total: usuarios.length,
      usuarios
    });

  } catch (err) {

    res.status(500).json({
      error: err.message
    });

  }

});

// ================= BLOQUEAR USUÁRIO =================

router.put("/bloquear/:id", auth, async (req, res) => {

  try {

    const db = readDB();

    const usuario = db.usuarios.find(
      u => u.id === req.params.id
    );

    if (!usuario) {

      return res.status(404).json({
        error: "Usuário não encontrado"
      });

    }

    usuario.ativo = false;

    saveDB(db);

    res.json({
      status: true,
      mensagem: "Usuário bloqueado"
    });

  } catch (err) {

    res.status(500).json({
      error: err.message
    });

  }

});

// ================= DESBLOQUEAR USUÁRIO =================

router.put("/desbloquear/:id", auth, async (req, res) => {

  try {

    const db = readDB();

    const usuario = db.usuarios.find(
      u => u.id === req.params.id
    );

    if (!usuario) {

      return res.status(404).json({
        error: "Usuário não encontrado"
      });

    }

    usuario.ativo = true;

    saveDB(db);

    res.json({
      status: true,
      mensagem: "Usuário desbloqueado"
    });

  } catch (err) {

    res.status(500).json({
      error: err.message
    });

  }

});

module.exports = router;
