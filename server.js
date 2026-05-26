const express = require("express");

const cors = require("cors");

const fs = require("fs");

const path = require("path");

const app = express();

const PORT = 3000;

// ================= MIDDLEWARE =================
app.use(cors());

app.use(express.json());

app.use(express.urlencoded({
  extended: true
}));

// ================= PASTAS =================
if (!fs.existsSync("uploads")) {

  fs.mkdirSync("uploads");

}

if (!fs.existsSync("database")) {

  fs.mkdirSync("database");

}

if (!fs.existsSync("public")) {

  fs.mkdirSync("public");

}

// ================= ARQUIVOS ESTÁTICOS =================
app.use(
  "/uploads",
  express.static(
    path.join(__dirname, "uploads")
  )
);

app.use(
  express.static(
    path.join(__dirname, "public")
  )
);

// ================= ROTAS =================
app.use(
  "/auth",
  require("./routes/auth")
);

app.use(
  "/imoveis",
  require("./routes/imoveis")
);

app.use(
  "/leituras",
  require("./routes/leituras")
);

app.use(
  "/sync",
  require("./routes/sync")
);

app.use(
  "/rotas",
  require("./routes/rotas")
);

app.use(
  "/dashboard",
  require("./routes/dashboard")
);

app.use(
  "/relatorios",
  require("./routes/relatorios")
);

// ================= STATUS =================
app.get("/", (req, res) => {

  res.json({

    status: "online",

    sistema: "ISC SANEP",

    servidor: "rodando",

    versao: "2.0",

    data:
      new Date().toISOString()

  });

});

// ================= HEALTH =================
app.get("/health", (req, res) => {

  res.json({

    status: "ok",

    uptime:
      process.uptime(),

    memoria:
      process.memoryUsage(),

    plataforma:
      process.platform,

    node:
      process.version

  });

});

// ================= INFO SISTEMA =================
app.get("/info", (req, res) => {

  res.json({

    sistema:
      "ISC SANEP",

    backend:
      "Node.js + Express",

    versao:
      "2.0",

    recursos: [

      "JWT",
      "Offline",
      "GPS",
      "Camera",
      "Upload",
      "Dashboard",
      "Relatorios",
      "Mapa",
      "Sincronizacao"

    ]

  });

});

// ================= 404 =================
app.use((req, res) => {

  res.status(404).json({

    status: false,

    erro:
      "Rota não encontrada"

  });

});

// ================= START =================
app.listen(
  PORT,
  "0.0.0.0",
  () => {

    console.log("");

    console.log(
      "===================================="
    );

    console.log(
      "✔ ISC SANEP ONLINE"
    );

    console.log(
      "✔ PORTA: " + PORT
    );

    console.log(
      "✔ LOCAL: http://localhost:" + PORT
    );

    console.log(
      "✔ REDE: http://192.168.3.7:" + PORT
    );

    console.log(
      "✔ HEALTH: /health"
    );

    console.log(
      "✔ DASHBOARD: /dashboard"
    );

    console.log(
      "✔ RELATORIOS: /relatorios"
    );

    console.log(
      "===================================="
    );

  }
);
