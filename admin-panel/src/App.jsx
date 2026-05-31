import { BrowserRouter, Routes, Route, Navigate, Link } from "react-router-dom";
import { useEffect, useState } from "react";

import Login from "./pages/Login";
import Dashboard from "./pages/Dashboard";
import Usuarios from "./pages/Usuarios";
import Roteiros from "./pages/Roteiros";
import Relatorios from "./pages/Relatorios";

// 🔐 verifica se está logado
function isAuth() {
  return localStorage.getItem("token");
}

// 🔒 rota protegida
function PrivateRoute({ children }) {
  return isAuth() ? children : <Navigate to="/login" />;
}

export default function App() {
  const [logado, setLogado] = useState(false);

  useEffect(() => {
    setLogado(!!localStorage.getItem("token"));
  }, []);

  function logout() {
    localStorage.removeItem("token");
    window.location.href = "/login";
  }

  return (
    <BrowserRouter>

      {logado && (
        <div style={menu}>
          <Link style={link} to="/dashboard">Dashboard</Link>
          <Link style={link} to="/roteiros">Roteiros</Link>
          <Link style={link} to="/usuarios">Usuários</Link>
          <Link style={link} to="/relatorios">Relatórios</Link>

          <button style={btnLogout} onClick={logout}>
            Sair
          </button>
        </div>
      )}

      <Routes>

        {/* LOGIN */}
        <Route path="/login" element={<Login />} />

        {/* DASHBOARD */}
        <Route
          path="/dashboard"
          element={
            <PrivateRoute>
              <Dashboard />
            </PrivateRoute>
          }
        />

        {/* USUÁRIOS */}
        <Route
          path="/usuarios"
          element={
            <PrivateRoute>
              <Usuarios />
            </PrivateRoute>
          }
        />

        {/* ROTEIROS */}
        <Route
          path="/roteiros"
          element={
            <PrivateRoute>
              <Roteiros />
            </PrivateRoute>
          }
        />

        {/* RELATÓRIOS */}
        <Route
          path="/relatorios"
          element={
            <PrivateRoute>
              <Relatorios />
            </PrivateRoute>
          }
        />

        {/* REDIRECIONAMENTO PADRÃO */}
        <Route
          path="*"
          element={
            isAuth() ? (
              <Navigate to="/dashboard" />
            ) : (
              <Navigate to="/login" />
            )
          }
        />

      </Routes>
    </BrowserRouter>
  );
}

// 🎨 MENU SUPERIOR
const menu = {
  background: "#2f5d8a",
  padding: 10,
  display: "flex",
  gap: 10,
  alignItems: "center",
};

const link = {
  color: "#fff",
  textDecoration: "none",
  fontWeight: "bold",
};

const btnLogout = {
  marginLeft: "auto",
  background: "#c62828",
  color: "#fff",
  border: "none",
  padding: "6px 12px",
  cursor: "pointer",
};
