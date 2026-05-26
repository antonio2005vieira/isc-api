const express = require("express");

const router = express.Router();

const fs = require("fs");

const bcrypt = require("bcryptjs");

const jwt = require("jsonwebtoken");

const DB_PATH = "./database/db.json";

const SECRET =
  "ISC_SECRET_2026";

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

// ================= LOGIN =================
router.post(
  "/login",
  async (req, res) => {

    try {

      const {
        login,
        senha,
        imei
      } = req.body;

      const db = readDB();

      const usuario =
        db.usuarios.find(

          u =>
            u.login === login

        );

      if (!usuario) {

        return res.status(401).json({

          status: false,

          erro:
            "Usuário não encontrado"

        });

      }

      const senhaValida =
        await bcrypt.compare(
          senha,
          usuario.senha
        );

      if (!senhaValida) {

        return res.status(401).json({

          status: false,

          erro:
            "Senha inválida"

        });

      }

      if (!usuario.ativo) {

        return res.status(403).json({

          status: false,

          erro:
            "Usuário desativado"

        });

      }

      usuario.imei =
        imei || null;

      usuario.ultimo_login =
        new Date().toISOString();

      saveDB(db);

      const token =
        jwt.sign(
          {
            id: usuario.id,
            nivel:
              usuario.nivel
          },
          SECRET,
          {
            expiresIn: "30d"
          }
        );

      res.json({

        status: true,

        token,

        usuario: {

          id: usuario.id,

          nome:
            usuario.nome,

          login:
            usuario.login,

          nivel:
            usuario.nivel

        }

      });

    } catch (err) {

      console.log(err);

      res.status(500).json({

        status: false,

        erro:
          "Erro login"

      });

    }

  }
);

// ================= CRIAR USUÁRIO =================
router.post(
  "/register",
  async (req, res) => {

    try {

      const {
        nome,
        login,
        senha,
        nivel
      } = req.body;

      const db = readDB();

      const existe =
        db.usuarios.find(

          u =>
            u.login === login

        );

      if (existe) {

        return res.status(400).json({

          status: false,

          erro:
            "Login já existe"

        });

      }

      const hash =
        await bcrypt.hash(
          senha,
          10
        );

      const novoUsuario = {

        id:
          Date.now().toString(),

        nome,

        login,

        senha: hash,

        nivel:
          nivel || "leiturista",

        ativo: true,

        created_at:
          new Date().toISOString(),

        ultimo_login:
          null

      };

      db.usuarios.push(
        novoUsuario
      );

      saveDB(db);

      res.json({

        status: true,

        usuario:
          novoUsuario

      });

    } catch (err) {

      console.log(err);

      res.status(500).json({

        status: false,

        erro:
          "Erro cadastro"

      });

    }

  }
);

// ================= LISTAR USUÁRIOS =================
router.get(
  "/usuarios",
  (req, res) => {

    try {

      const db = readDB();

      const usuarios =
        db.usuarios.map(u => ({

          id: u.id,

          nome: u.nome,

          login: u.login,

          nivel: u.nivel,

          ativo: u.ativo,

          ultimo_login:
            u.ultimo_login

        }));

      res.json(
        usuarios
      );

    } catch (err) {

      console.log(err);

      res.status(500).json({

        status: false,

        erro:
          "Erro usuários"

      });

    }

  }
);

// ================= DESATIVAR =================
router.patch(
  "/usuarios/:id",
  (req, res) => {

    try {

      const db = readDB();

      const usuario =
        db.usuarios.find(

          u =>
            u.id ==
            req.params.id

        );

      if (!usuario) {

        return res.status(404).json({

          status: false,

          erro:
            "Usuário não encontrado"

        });

      }

      usuario.ativo =
        !usuario.ativo;

      saveDB(db);

      res.json({

        status: true,

        usuario

      });

    } catch (err) {

      console.log(err);

      res.status(500).json({

        status: false,

        erro:
          "Erro atualização"

      });

    }

  }
);

module.exports = router;
