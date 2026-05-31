import { useEffect, useState } from "react";
import { api } from "../services/api";

export default function Dashboard() {
  const [data, setData] = useState(null);

  useEffect(() => {
    async function load() {
      try {
        const res = await api.get("/dashboard");
        setData(res.data.dashboard);
      } catch (err) {
        console.log(err);
        alert("Erro ao carregar dashboard");
      }
    }

    load();
  }, []);

  if (!data) return <p>Carregando...</p>;

  return (
    <div>
      <h1>Dashboard</h1>
      <p>Imóveis: {data.total_imoveis}</p>
      <p>Leituras: {data.total_leituras}</p>
      <p>Produtividade: {data.produtividade}%</p>
    </div>
  );
}
