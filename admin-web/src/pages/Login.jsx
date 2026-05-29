import { useState } from "react";
import api from "../services/api";

export default function Login() {
  const [login, setLogin] = useState("");
  const [senha, setSenha] = useState("");

  async function entrar() {
    try {
      const res = await api.post("/auth/login", {
        login,
        senha
      });

      localStorage.setItem("token", res.data.token);

      alert("Login OK");

      window.location.href = "/dashboard";

    } catch (err) {
      alert("Erro no login");
    }
  }

  return (
    <div style={{ padding: 40 }}>
      <h1>ISC SANEP - Login</h1>

      <input
        placeholder="Login"
        onChange={(e) => setLogin(e.target.value)}
      />

      <input
        placeholder="Senha"
        type="password"
        onChange={(e) => setSenha(e.target.value)}
      />

      <button onClick={entrar}>Entrar</button>
    </div>
  );
}
