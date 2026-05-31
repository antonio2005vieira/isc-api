import { useEffect, useState } from "react";
import { api } from "../services/api";

export default function Roteiros() {
  const [dados, setDados] = useState([]);
  const [selecionados, setSelecionados] = useState([]);

  const [filtroStatus, setFiltroStatus] = useState("");
  const [filtroBusca, setFiltroBusca] = useState("");

  const [loading, setLoading] = useState(false);

  useEffect(() => {
    load();
  }, []);

  async function load() {
    try {
      setLoading(true);

      const res = await api.get("/roteiros", {
        params: {
          status: filtroStatus,
          busca: filtroBusca,
        },
      });

      setDados(res.data);
      setSelecionados([]);

    } catch (err) {
      console.log("Erro ao carregar:", err);
    } finally {
      setLoading(false);
    }
  }

  function toggleSelect(id) {
    if (selecionados.includes(id)) {
      setSelecionados(selecionados.filter((i) => i !== id));
    } else {
      setSelecionados([...selecionados, id]);
    }
  }

  async function atualizarStatus(status) {
    try {
      if (selecionados.length === 0) {
        alert("Selecione pelo menos um roteiro");
        return;
      }

      setLoading(true);

      await api.put("/roteiros/status", {
        ids: selecionados,
        status,
      });

      await load();

    } catch (err) {
      console.log("Erro ao atualizar:", err);
      alert("Erro ao atualizar status");
    } finally {
      setLoading(false);
    }
  }

  return (
    <div style={container}>

      {/* HEADER */}
      <div style={header}>
        📄 Arquivos Textos para Leitura
      </div>

      {/* FILTROS */}
      <div style={box}>
        <select
          value={filtroStatus}
          onChange={(e) => {
            setFiltroStatus(e.target.value);
            setTimeout(load, 100);
          }}
        >
          <option value="">Todos</option>
          <option value="LIBERADO">LIBERADO</option>
          <option value="EM_CAMPO">EM CAMPO</option>
          <option value="FINALIZADO">FINALIZADO</option>
          <option value="NAO_LIBERADO">NÃO LIBERADO</option>
        </select>

        <input
          placeholder="Buscar sequência"
          value={filtroBusca}
          onChange={(e) => {
            setFiltroBusca(e.target.value);
            setTimeout(load, 300);
          }}
        />

        <button style={btn} onClick={load}>
          Buscar
        </button>
      </div>

      {/* BOTÕES */}
      <div style={actions}>
        <button style={btn} onClick={() => atualizarStatus("LIBERADO")}>
          Liberar
        </button>

        <button style={btn} onClick={() => atualizarStatus("NAO_LIBERADO")}>
          Não Liberar
        </button>

        <button style={btn} onClick={() => atualizarStatus("EM_CAMPO")}>
          Em Campo
        </button>

        <button style={btn} onClick={() => atualizarStatus("FINALIZADO")}>
          Finalizar
        </button>
      </div>

      {/* STATUS */}
      {loading && <p style={{ marginTop: 10 }}>Carregando...</p>}

      {/* TABELA */}
      {!loading && (
        <table style={table}>
          <thead style={thead}>
            <tr>
              <th></th>
              <th>Sequência</th>
              <th>Localidade</th>
              <th>Setor</th>
              <th>Rota</th>
              <th>Qtd</th>
              <th>Leiturista</th>
              <th>Situação</th>
              <th>Data</th>
            </tr>
          </thead>

          <tbody>
            {dados.length === 0 && (
              <tr>
                <td colSpan="9" style={{ textAlign: "center" }}>
                  Nenhum roteiro encontrado
                </td>
              </tr>
            )}

            {dados.map((item) => (
              <tr
                key={item.id}
                style={{
                  background: selecionados.includes(item.id)
                    ? "#cce5ff"
                    : "#fff",
                  cursor: "pointer",
                }}
                onClick={() => toggleSelect(item.id)}
              >
                <td>
                  <input
                    type="checkbox"
                    checked={selecionados.includes(item.id)}
                    readOnly
                  />
                </td>

                <td>{item.sequencia}</td>
                <td>{item.localidade}</td>
                <td>{item.setor}</td>
                <td>{item.rota}</td>
                <td>{item.quantidade}</td>
                <td>{item.leiturista}</td>
                <td>
                  <span style={statusStyle(item.status)}>
                    {item.status}
                  </span>
                </td>
                <td>
                  {new Date(item.data).toLocaleDateString()}
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      )}

    </div>
  );
}

// 🎨 ESTILOS
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
  fontSize: 16,
};

const box = {
  background: "#fff",
  padding: 10,
  marginTop: 10,
  display: "flex",
  gap: 10,
  border: "1px solid #ccc",
};

const actions = {
  marginTop: 10,
  display: "flex",
  gap: 10,
};

const btn = {
  background: "#4a7fb3",
  color: "#fff",
  border: "none",
  padding: "6px 12px",
  cursor: "pointer",
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

// 🎨 cor dinâmica por status
function statusStyle(status) {
  const colors = {
    LIBERADO: "#2e7d32",
    EM_CAMPO: "#f9a825",
    FINALIZADO: "#1565c0",
    NAO_LIBERADO: "#c62828",
  };

  return {
    color: "#fff",
    padding: "3px 6px",
    background: colors[status] || "#999",
    borderRadius: 4,
    fontSize: 12,
  };
}
