import { useEffect, useState } from "react";
import { api } from "../services/api";

export default function Usuarios() {
  const [usuarios, setUsuarios] = useState([]);
  const [loading, setLoading] = useState(false);

  const [form, setForm] = useState({
    id: null,
    nome: "",
    login: "",
    senha: "",
    nivel: "user",
  });

  const [editando, setEditando] = useState(false);

  useEffect(() => {
    load();
  }, []);

  async function load() {
    try {
      setLoading(true);
      const res = await api.get("/usuarios");
      setUsuarios(res.data);
    } catch (err) {
      alert("Erro ao carregar usuários");
    } finally {
      setLoading(false);
    }
  }

  function limparForm() {
    setForm({
      id: null,
      nome: "",
      login: "",
      senha: "",
      nivel: "user",
    });
    setEditando(false);
  }

  async function salvar() {
    try {
      setLoading(true);

      if (!form.nome || !form.login) {
        alert("Preencha os campos obrigatórios");
        return;
      }

      if (editando) {
        await api.put("/usuarios", form);
      } else {
        await api.post("/usuarios", form);
      }

      limparForm();
      load();

    } catch (err) {
      alert("Erro ao salvar usuário");
    } finally {
      setLoading(false);
    }
  }

  function editar(user) {
    setForm({
      id: user.id,
      nome: user.nome,
      login: user.login,
      senha: "",
      nivel: user.nivel,
    });
    setEditando(true);
  }

  async function toggleAtivo(id, ativo) {
    await api.put("/usuarios/ativo", { id, ativo: !ativo });
    load();
  }

  async function resetIMEI(id) {
    if (!confirm("Resetar IMEI deste usuário?")) return;

    await api.put("/usuarios/reset-imei", { id });
    alert("IMEI resetado");
    load();
  }

  async function excluir(id) {
    if (!confirm("Excluir usuário?")) return;

    await api.delete(`/usuarios/${id}`);
    load();
  }

  return (
    <div style={container}>

      {/* HEADER */}
      <div style={header}>
        👤 Gestão de Usuários
      </div>

      {/* FORM */}
      <div style={box}>
        <input
          placeholder="Nome"
          value={form.nome}
          onChange={(e) => setForm({ ...form, nome: e.target.value })}
        />

        <input
          placeholder="Login"
          value={form.login}
          onChange={(e) => setForm({ ...form, login: e.target.value })}
        />

        <input
          placeholder="Senha"
          type="password"
          value={form.senha}
          onChange={(e) => setForm({ ...form, senha: e.target.value })}
        />

        <select
          value={form.nivel}
          onChange={(e) => setForm({ ...form, nivel: e.target.value })}
        >
          <option value="user">Usuário</option>
          <option value="admin">Admin</option>
        </select>

        <button style={btn} onClick={salvar}>
          {editando ? "Atualizar" : "Criar"}
        </button>

        {editando && (
          <button style={btnCancel} onClick={limparForm}>
            Cancelar
          </button>
        )}
      </div>

      {/* LOADING */}
      {loading && <p style={{ marginTop: 10 }}>Carregando...</p>}

      {/* TABELA */}
      {!loading && (
        <table style={table}>
          <thead style={thead}>
            <tr>
              <th>Nome</th>
              <th>Login</th>
              <th>Nível</th>
              <th>Status</th>
              <th>IMEI</th>
              <th>Ações</th>
            </tr>
          </thead>

          <tbody>
            {usuarios.length === 0 && (
              <tr>
                <td colSpan="6" style={{ textAlign: "center" }}>
                  Nenhum usuário encontrado
                </td>
              </tr>
            )}

            {usuarios.map((u) => (
              <tr key={u.id}>
                <td>{u.nome}</td>
                <td>{u.login}</td>
                <td>{u.nivel}</td>

                <td>
                  <span style={statusStyle(u.ativo)}>
                    {u.ativo ? "ATIVO" : "INATIVO"}
                  </span>
                </td>

                <td>{u.imei || "—"}</td>

                <td style={{ display: "flex", gap: 5 }}>
                  <button style={btn} onClick={() => editar(u)}>
                    Editar
                  </button>

                  <button
                    style={btn}
                    onClick={() => toggleAtivo(u.id, u.ativo)}
                  >
                    {u.ativo ? "Desativar" : "Ativar"}
                  </button>

                  <button style={btn} onClick={() => resetIMEI(u.id)}>
                    Reset IMEI
                  </button>

                  <button style={btnDanger} onClick={() => excluir(u.id)}>
                    Excluir
                  </button>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      )}

    </div>
  );
}

// 🎨 ESTILO
const container = {
  background: "#dbeaf5",
  minHeight: "100vh",
  padding: 20,
};

const header = {
  background: "#2f5d8a",
  color: "#fff",
  padding: 12,
  fontWeight: "bold",
};

const box = {
  background: "#fff",
  padding: 10,
  marginTop: 10,
  display: "flex",
  gap: 10,
  flexWrap: "wrap",
};

const btn = {
  background: "#4a7fb3",
  color: "#fff",
  border: "none",
  padding: "6px 10px",
  cursor: "pointer",
};

const btnCancel = {
  background: "#999",
  color: "#fff",
  border: "none",
  padding: "6px 10px",
};

const btnDanger = {
  background: "#c62828",
  color: "#fff",
  border: "none",
  padding: "6px 10px",
};

const table = {
  width: "100%",
  marginTop: 10,
  borderCollapse: "collapse",
  background: "#fff",
};

const thead = {
  background: "#e0e0e0",
};

function statusStyle(ativo) {
  return {
    background: ativo ? "#2e7d32" : "#c62828",
    color: "#fff",
    padding: "3px 6px",
    borderRadius: 4,
    fontSize: 12,
  };
}
