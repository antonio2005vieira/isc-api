const express = require("express");
const router = express.Router();
const fs = require("fs");

const DB_PATH = "./database/db.json";

// ================= READ DB =================
function readDB() {
  return JSON.parse(fs.readFileSync(DB_PATH));
}

// ================= DASHBOARD REAL =================
router.get("/", (req, res) => {
  try {
    const db = readDB();

    const imoveis = db.imoveis || [];
    const leituras = db.leituras || [];
    const usuarios = db.usuarios || [];

    const totalImoveis = imoveis.length;
    const totalLeituras = leituras.length;
    const totalUsuarios = usuarios.length;

    const visitados = imoveis.filter(i => i.visitado).length;
    const pendentes = totalImoveis - visitados;

    const sincronizados = leituras.filter(l => l.sync_status === "sent").length;
    const offline = leituras.filter(l => l.sync_status !== "sent").length;

    // ================= PRODUTIVIDADE =================
    const produtividade = totalImoveis > 0
      ? ((visitados / totalImoveis) * 100).toFixed(2)
      : 0;

    // ================= POR USUÁRIO =================
    const porUsuario = {};

    leituras.forEach(l => {
      const user = l.usuario || "desconhecido";

      if (!porUsuario[user]) {
        porUsuario[user] = {
          total: 0
        };
      }

      porUsuario[user].total++;
    });

    res.json({
      status: true,

      dashboard: {
        sistema: "ISC SANEP",

        totais: {
          imoveis: totalImoveis,
          leituras: totalLeituras,
          usuarios: totalUsuarios
        },

        operacao: {
          visitados,
          pendentes,
          produtividade: `${produtividade}%`
        },

        sync: {
          sincronizados,
          offline
        },

        por_usuario: porUsuario
      }
    });

  } catch (err) {
    console.log(err);
    res.status(500).json({
      status: false,
      erro: "Erro dashboard"
    });
  }
});

module.exports = router;
