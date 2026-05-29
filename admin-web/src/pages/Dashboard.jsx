import { useEffect, useState } from "react";
import api from "../services/api";

export default function Dashboard() {
  const [data, setData] = useState(null);

  useEffect(() => {
    async function load() {
      try {
        const res = await api.get("/dashboard");
        setData(res.data.dashboard);
      } catch (err) {
        console.log(err);
      }
    }

    load();
  }, []);

  if (!data) return <h3>Carregando...</h3>;

  return (
    <div style={{ padding: 40 }}>
      <h1>Dashboard ISC SANEP</h1>

      <p>Total imóveis: {data.total_imoveis}</p>
      <p>Total leituras: {data.total_leituras}</p>
      <p>Visitados: {data.visitados}</p>
      <p>Pendentes: {data.pendentes}</p>
      <p>Produtividade: {data.produtividade}%</p>
    </div>
  );
}
