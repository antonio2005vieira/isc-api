const express = require("express");

const router = express.Router();

const fs = require("fs");

const bcrypt = require("bcryptjs");

const { v4: uuidv4 } = require("uuid");

const DB_PATH = "./database/db.json";

// ================= DB =================
function readDB() {

  return JSON.parse(
    fs.readFileSync(DB_PATH)
  );

}

function saveDB(data) {

  fs.writeFileSync(
    DB_PATH,
    JSON.stringify(data, null, 2)
  );

}

// ================= LISTAR USUÁRIOS =================
router.get("/", (req, res) => {

  const db = readDB();

  const usuarios = db.usuarios.map(user => ({
    id: user.id,
    nome: user.nome,
    login: user.login,
    imei: user.imei,
    nivel: user.nivel,
    ativo: user.ativo,
    criado_em: user.criado_em,
    ultimo_login: user.ultimo_login
  }));

  res.json(usuarios);

});

// ================= CRIAR USUÁRIO =================
router.post("/", async (req, res) => {

  const db = readDB();

  const {
    nome,
    login,
    senha,
    imei,
    nivel
  } = req.body;

  if (
    !nome ||
    !login ||
    !senha
  ) {

    return res.json({
      erro: "Dados obrigatórios"
    });

  }

  const existe = db.usuarios.find(
    u => u.login === login
  );

  if (existe) {

    return res.json({
      erro: "Login já existe"
    });

  }

  const senhaHash =
    await bcrypt.hash(senha, 10);

  const usuario = {
    id: uuidv4(),
    nome,
    login,
    senha: senhaHash,
    imei: imei || null,
    nivel: nivel || "operador",
    ativo: true,
    criado_em: new Date().toISOString(),
    ultimo_login: null
  };

  db.usuarios.push(usuario);

  saveDB(db);

  res.json({
    status: true,
    usuario
  });

});

// ================= EDITAR USUÁRIO =================
router.put("/:id", async (req, res) => {

  const db = readDB();

  const usuario =
    db.usuarios.find(
      u => u.id == req.params.id
    );

  if (!usuario) {

    return res.json({
      erro: "Usuário não encontrado"
    });

  }

  const {
    nome,
    senha,
    imei,
    nivel,
    ativo
  } = req.body;

  if (nome) usuario.nome = nome;

  if (imei) usuario.imei = imei;

  if (nivel) usuario.nivel = nivel;

  if (typeof ativo === "boolean") {
    usuario.ativo = ativo;
  }

  if (senha) {

    usuario.senha =
      await bcrypt.hash(senha, 10);

  }

  saveDB(db);

  res.json({
    status: true,
    usuario
  });

});

// ================= DELETAR =================
router.delete("/:id", (req, res) => {

  const db = readDB();

  db.usuarios =
    db.usuarios.filter(
      u => u.id != req.params.id
    );

  saveDB(db);

  res.json({
    status: true
  });

});

module.exports = router;
