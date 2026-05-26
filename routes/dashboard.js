const express = require("express");

const router = express.Router();

const fs = require("fs");

const DB_PATH = "./database/db.json";

// ================= DB =================
function readDB() {

  return JSON.parse(
    fs.readFileSync(DB_PATH)
  );

}

// ================= DASHBOARD =================
router.get("/", (req, res) => {

  try {

    const db = readDB();

    const totalImoveis =
      db.imoveis.length;

    const totalLeituras =
      db.leituras.length;

    const totalUsuarios =
      db.usuarios.length;

    const visitados =
      db.imoveis.filter(
        i => i.visitado
      ).length;

    const pendentes =
      db.imoveis.filter(
        i => !i.visitado
      ).length;

    const sincronizados =
      db.leituras.filter(
        l => l.sync_status === "synced"
      ).length;

    const offline =
      db.leituras.filter(
        l => l.sync_status !== "synced"
      ).length;

    res.json({

      status: true,

      dashboard: {

        sistema:
          "ISC SANEP",

        total_imoveis:
          totalImoveis,

        total_leituras:
          totalLeituras,

        total_usuarios:
          totalUsuarios,

        visitados,

        pendentes,

        sincronizados,

        offline,

        produtividade:

          totalImoveis > 0

            ? (
                (
                  visitados /
                  totalImoveis
                ) * 100
              ).toFixed(2)

            : 0

      }

    });

  } catch (err) {

    console.log(err);

    res.status(500).json({

      status: false,

      erro:
        "Erro dashboard"

    });

  }

});

module.exports = router;
