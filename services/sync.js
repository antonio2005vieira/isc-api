import api from "./api";

import {
  listarLeiturasPendentes,
  marcarSincronizado
} from "../database/sqlite";

export async function sincronizarLeituras() {

  const pendentes = listarLeiturasPendentes();

  if (!pendentes || pendentes.length === 0) {
    return { sucesso: 0, erro: 0 };
  }

  let sucesso = 0;
  let erro = 0;

  for (const item of pendentes) {

    try {

      await api.post("/leituras", {
        imovel_id: item.imovel_id,
        leitura: item.leitura,
        anormalidade: item.anormalidade,
        latitude: item.latitude,
        longitude: item.longitude
      });

      marcarSincronizado(item.id);

      sucesso++;

    } catch (e) {

      console.log("Erro ao sincronizar ID:", item.id);

      erro++;

    }

  }

  return { sucesso, erro };

}
