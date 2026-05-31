import { useEffect, useState } from "react";
import { api } from "../services/api";

export default function Relatorios() {
  const [dados, setDados] = useState([]);
  const [loading, setLoading] = useState(false);

  const [resumo, setResumo] = useState({
    total: 0,
    finalizados: 0,
    produtividade: 0,
  });

  useEffect(() => {
    load();
  }, []);

  async function load() {
    try {
      setLoading(true);

      const res = await api.get("/relatorios/produtividade");

      setDados(res.data);

      // 📊 calcula resumo geral
      let total = 0;
      let finalizados = 0;

      res.data.forEach((r) => {
        total += r.total;
        finalizados += r.finalizados;
      });

      const produtividade = total
        ? ((finalizados / total) * 100).toFixed(2)
        : 0;

      setResumo({ total, finalizados, produtividade });

    } catch (err) {
      alert("Erro ao carregar relatório");
    } finally {
      setLoading(false);
    }
  }

  return (
    <div style={container}>

      {/* HEADER */}
      <div style={header}>
        📊 Relatórios de Produtividade
      </div>

      {/* RESUMO */}
      <div style={cards}>
        <Card titulo="Total de Roteiros" valor={resumo.total} />
        <Card titulo="Finalizados" valor={resumo.finalizados} />
        <Card
          titulo="Produtividade"
          valor={`${resumo.produtividade}%`}
          destaque
        />
      </div>

      {/* BOTÃO */}
      <div style={{ marginTop: 10 }}>
        <button style={btn} onClick={load}>
          Atualizar
        </button>
      </div>

      {/* LOADING */}
      {loading && <p style={{ marginTop: 10 }}>Carregando...</p>}

      {/* TABELA */}
      {!loading && (
        <table style={table}>
          <thead style={thead}>
            <tr>
              <th>Leiturista</th>
              <th>Total</th>
              <th>Finalizados</th>
              <th>Produtividade</th>
            </tr>
          </thead>

          <tbody>
            {dados.length === 0 && (
              <tr>
                <td colSpan="4" style={{ textAlign: "center" }}>
                  Nenhum dado encontrado
                </td>
              </tr>
            )}

            {dados.map((d, i) => (
              <tr key={i}>
                <td>{d.nome}</td>
                <td>{d.total}</td>
                <td>{d.finalizados}</td>
                <td>
                  <span style={badge(d.produtividade)}>
                    {d.produtividade}%
                  </span>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      )}

    </div>
  );
}

// 🎯 COMPONENTE CARD
function Card({ titulo, valor, destaque }) {
  return (
    <div style={card(destaque)}>
      <div style={{ fontSize: 12 }}>{titulo}</div>
      <div style={{ fontSize: 20, fontWeight: "bold" }}>{valor}</div>
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
};

const cards = {
  display: "flex",
  gap: 10,
  marginTop: 10,
};

const card = (destaque) => ({
  background: destaque ? "#2e7d32" : "#fff",
  color: destaque ? "#fff" : "#000",
  padding: 15,
  flex: 1,
  border: "1px solid #ccc",
});

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

function badge(valor) {
  let cor = "#c62828";

  if (valor >= 80) cor = "#2e7d32";
  else if (valor >= 50) cor = "#f9a825";

  return {
    background: cor,
    color: "#fff",
    padding: "4px 8px",
    borderRadius: 4,
    fontWeight: "bold",
  };
}
