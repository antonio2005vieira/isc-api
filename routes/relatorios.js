const express = require("express");

const router = express.Router();

const fs = require("fs");

const { Parser } =
  require("json2csv");

const DB_PATH =
  "./database/db.json";

// ================= DB =================
function readDB() {

  return JSON.parse(
    fs.readFileSync(DB_PATH)
  );

}

// ================= RELATÓRIO JSON =================
router.get(
  "/json",
  (req, res) => {

    try {

      const db = readDB();

      res.json({

        status: true,

        exportado_em:
          new Date().toISOString(),

        dados: db

      });

    } catch (err) {

      console.log(err);

      res.status(500).json({

        status: false,

        erro:
          "Erro exportação JSON"

      });

    }

  }
);

// ================= CSV LEITURAS =================
router.get(
  "/leituras/csv",
  (req, res) => {

    try {

      const db = readDB();

      const parser =
        new Parser();

      const csv =
        parser.parse(
          db.leituras
        );

      res.header(
        "Content-Type",
        "text/csv"
      );

      res.attachment(
        "leituras.csv"
      );

      return res.send(csv);

    } catch (err) {

      console.log(err);

      res.status(500).json({

        status: false,

        erro:
          "Erro CSV leituras"

      });

    }

  }
);

// ================= CSV USUÁRIOS =================
router.get(
  "/usuarios/csv",
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

      const parser =
        new Parser();

      const csv =
        parser.parse(
          usuarios
        );

      res.header(
        "Content-Type",
        "text/csv"
      );

      res.attachment(
        "usuarios.csv"
      );

      return res.send(csv);

    } catch (err) {

      console.log(err);

      res.status(500).json({

        status: false,

        erro:
          "Erro CSV usuários"

      });

    }

  }
);

// ================= RESUMO =================
router.get(
  "/resumo",
  (req, res) => {

    try {

      const db = readDB();

      res.json({

        status: true,

        resumo: {

          usuarios:
            db.usuarios.length,

          imoveis:
            db.imoveis.length,

          leituras:
            db.leituras.length,

          rotas:
            db.rotas.length,

          fotos:
            db.fotos.length

        }

      });

    } catch (err) {

      console.log(err);

      res.status(500).json({

        status: false,

        erro:
          "Erro resumo"

      });

    }

  }
);

module.exports = router;
