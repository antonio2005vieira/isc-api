const express = require("express");

const router = express.Router();

const fs = require("fs");

const DB_PATH =
  "./database/db.json";

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

// ================= LISTAR ROTAS =================
router.get("/", (req, res) => {

  try {

    const db = readDB();

    res.json({

      status: true,

      total:
        db.rotas.length,

      rotas:
        db.rotas

    });

  } catch (err) {

    console.log(err);

    res.status(500).json({

      status: false,

      erro:
        "Erro rotas"

    });

  }

});

// ================= CRIAR ROTA =================
router.post("/", (req, res) => {

  try {

    const {
      codigo,
      descricao,
      leiturista
    } = req.body;

    const db = readDB();

    const existe =
      db.rotas.find(

        r =>
          r.codigo === codigo

      );

    if (existe) {

      return res.status(400).json({

        status: false,

        erro:
          "Rota já existe"

      });

    }

    const novaRota = {

      id:
        Date.now(),

      codigo,

      descricao,

      leiturista:
        leiturista || null,

      created_at:
        new Date().toISOString()

    };

    db.rotas.push(
      novaRota
    );

    saveDB(db);

    res.json({

      status: true,

      rota:
        novaRota

    });

  } catch (err) {

    console.log(err);

    res.status(500).json({

      status: false,

      erro:
        "Erro criar rota"

    });

  }

});

// ================= IMÓVEIS DA ROTA =================
router.get(
  "/:codigo/imoveis",
  (req, res) => {

    try {

      const db = readDB();

      const imoveis =
        db.imoveis.filter(

          i =>
            i.rota ===
            req.params.codigo

        );

      res.json({

        status: true,

        rota:
          req.params.codigo,

        total:
          imoveis.length,

        imoveis

      });

    } catch (err) {

      console.log(err);

      res.status(500).json({

        status: false,

        erro:
          "Erro imóveis rota"

      });

    }

  }
);

// ================= PRODUTIVIDADE =================
router.get(
  "/:codigo/produtividade",
  (req, res) => {

    try {

      const db = readDB();

      const imoveis =
        db.imoveis.filter(

          i =>
            i.rota ===
            req.params.codigo

        );

      const visitados =
        imoveis.filter(
          i => i.visitado
        ).length;

      const pendentes =
        imoveis.filter(
          i => !i.visitado
        ).length;

      const produtividade =

        imoveis.length > 0

          ? (
              (
                visitados /
                imoveis.length
              ) * 100
            ).toFixed(2)

          : 0;

      res.json({

        status: true,

        rota:
          req.params.codigo,

        total:
          imoveis.length,

        visitados,

        pendentes,

        produtividade

      });

    } catch (err) {

      console.log(err);

      res.status(500).json({

        status: false,

        erro:
          "Erro produtividade"

      });

    }

  }
);

module.exports = router;
