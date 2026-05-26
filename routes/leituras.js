const express = require("express");

const router = express.Router();

const fs = require("fs");

const multer = require("multer");

const path = require("path");

const DB_PATH = "./database/db.json";

// ================= STORAGE FOTO =================
const storage = multer.diskStorage({

  destination: function(req, file, cb) {

    cb(null, "uploads/");

  },

  filename: function(req, file, cb) {

    cb(
      null,
      Date.now() +
      path.extname(file.originalname)
    );

  }

});

const upload = multer({
  storage
});

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

// ================= CRIAR LEITURA =================
router.post(
  "/",
  upload.single("foto"),
  (req, res) => {

    try {

      const db = readDB();

      const {
        imovel_id,
        leitura,
        latitude,
        longitude
      } = req.body;

      // ================= VALIDAÇÃO =================
      if (!imovel_id || !leitura) {

        return res.status(400).json({

          status: false,

          erro:
            "Imóvel e leitura são obrigatórios"

        });

      }

      // ================= IMÓVEL =================
      const imovel =
        db.imoveis.find(
          i => i.id == imovel_id
        );

      if (!imovel) {

        return res.status(404).json({

          status: false,

          erro:
            "Imóvel não encontrado"

        });

      }

      // ================= FOTO =================
      const foto = req.file
        ? `/uploads/${req.file.filename}`
        : null;

      // ================= LEITURA =================
      const novaLeitura = {

        id: Date.now(),

        imovel_id,

        leitura:
          Number(leitura),

        latitude:
          latitude || null,

        longitude:
          longitude || null,

        foto,

        created_at:
          new Date().toISOString(),

        sync_status:
          "pending"

      };

      db.leituras.push(
        novaLeitura
      );

      // ================= IMÓVEL VISITADO =================
      imovel.visitado = true;

      imovel.updated_at =
        new Date().toISOString();

      imovel.sync_status =
        "updated";

      saveDB(db);

      res.json({

        status: true,

        leitura:
          novaLeitura

      });

    } catch (err) {

      console.log(err);

      res.status(500).json({

        status: false,

        erro:
          "Erro interno servidor"

      });

    }

  }
);

// ================= LISTAR LEITURAS =================
router.get("/", (req, res) => {

  try {

    const db = readDB();

    res.json(
      db.leituras
    );

  } catch (err) {

    console.log(err);

    res.status(500).json({

      status: false,

      erro:
        "Erro ao listar leituras"

    });

  }

});

// ================= LEITURAS POR IMÓVEL =================
router.get(
  "/imovel/:id",
  (req, res) => {

    try {

      const db = readDB();

      const leituras =
        db.leituras.filter(

          l =>
            l.imovel_id ==
            req.params.id

        );

      res.json(
        leituras
      );

    } catch (err) {

      console.log(err);

      res.status(500).json({

        status: false,

        erro:
          "Erro ao buscar leituras"

      });

    }

  }
);

// ================= SINCRONIZAR =================
router.patch(
  "/:id/sync",
  (req, res) => {

    try {

      const db = readDB();

      const leitura =
        db.leituras.find(

          l =>
            l.id ==
            req.params.id

        );

      if (!leitura) {

        return res.status(404).json({

          status: false,

          erro:
            "Leitura não encontrada"

        });

      }

      leitura.sync_status =
        "synced";

      leitura.synced_at =
        new Date().toISOString();

      saveDB(db);

      res.json({

        status: true,

        leitura

      });

    } catch (err) {

      console.log(err);

      res.status(500).json({

        status: false,

        erro:
          "Erro sincronização"

      });

    }

  }
);

module.exports = router;
