const express = require("express");
const cors = require("cors");
const http = require("http");
const { Server } = require("socket.io");

const { fixDB } = require("./utils/dbFix");

const app = express();
const server = http.createServer(app);
const io = new Server(server, {
  cors: { origin: "*" }
});

const PORT = 3000;

// ================= AUTO FIX DB =================
fixDB();

// ================= MIDDLEWARE =================
app.use(cors());
app.use(express.json());

// ================= STATIC =================
app.use(express.static("public"));
app.use("/uploads", express.static("uploads"));

// ================= AUDITORIA =================
const { audit } = require("./middlewares/audit");

app.use((req, res, next) => {
  audit("REQUEST", req);
  next();
});

// ================= SOCKET =================
io.on("connection", (socket) => {
  console.log("🔵 CLIENT CONNECTED");

  socket.on("join", (data) => {
    socket.join(data.user || "guest");
  });

  socket.on("gps_update", (data) => {
    io.emit("gps_broadcast", data);
  });
});

// ================= ROTAS =================
app.use("/auth", require("./routes/auth"));
app.use("/imoveis", require("./routes/imoveis"));
app.use("/leituras", require("./routes/leituras"));
app.use("/sync", require("./routes/sync"));
app.use("/rotas", require("./routes/rotas"));
app.use("/relatorios", require("./routes/relatorios"));

// ================= ROTA TESTE =================
app.get("/", (req, res) => {
  res.json({
    status: "online",
    sistema: "ISC SANEP",
    tempo_real: true
  });
});

// ================= START =================
server.listen(PORT, "0.0.0.0", () => {
  console.log("✔ SERVIDOR RODANDO NA PORTA " + PORT);
});
