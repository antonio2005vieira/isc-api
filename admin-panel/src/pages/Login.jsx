import { useState } from "react";
import { api } from "../services/api";

export default function Login() {
  const [login, setLogin] = useState("");
  const [senha, setSenha] = useState("");
  const [loading, setLoading] = useState(false);

  async function entrar(e) {
    e.preventDefault();

    if (!login || !senha) {
      alert("Preencha login e senha");
      return;
    }

    try {
      setLoading(true);

      const res = await api.post("/auth/login", {
        login,
        senha,
        imei: "web-admin", // 🔐 identifica painel web
      });

      // 💾 salva token
      localStorage.setItem("token", res.data.token);

      // 🚀 redireciona
      window.location.href = "/dashboard";

    } catch (err) {
      if (err.response?.data?.erro) {
        alert(err.response.data.erro);
      } else {
        alert("Erro ao conectar com servidor");
      }
    } finally {
      setLoading(false);
    }
  }

  return (
    <div style={container}>
      <form style={box} onSubmit={entrar}>

        <h2 style={{ marginBottom: 20 }}>
          🔐 Login do Sistema
        </h2>

        <input
          style={input}
          placeholder="Login"
          value={login}
          onChange={(e) => setLogin(e.target.value)}
        />

        <input
          style={input}
          type="password"
          placeholder="Senha"
          value={senha}
          onChange={(e) => setSenha(e.target.value)}
        />

        <button style={button} disabled={loading}>
          {loading ? "Entrando..." : "Entrar"}
        </button>

      </form>
    </div>
  );
}

// 🎨 ESTILO
const container = {
  display: "flex",
  justifyContent: "center",
  alignItems: "center",
  height: "100vh",
  background: "#dbeaf5",
};

const box = {
  background: "#fff",
  padding: 30,
  borderRadius: 5,
  width: 300,
  display: "flex",
  flexDirection: "column",
  gap: 10,
  boxShadow: "0 2px 5px rgba(0,0,0,0.2)",
};

const input = {
  padding: 10,
  border: "1px solid #ccc",
};

const button = {
  background: "#2f5d8a",
  color: "#fff",
  border: "none",
  padding: 10,
  cursor: "pointer",
};
