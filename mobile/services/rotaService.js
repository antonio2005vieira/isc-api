const API_URL = "https://isc-api.onrender.com";

/**
 * Busca rotas do usuário logado
 */
export const getRotasDoUsuario = async (usuario) => {
  try {
    const res = await fetch(`${API_URL}/rotas/usuario/${usuario}`);
    return await res.json();
  } catch (err) {
    console.log("Erro rotas:", err);
    return [];
  }
};

/**
 * Extrai imóveis de todas as rotas do usuário
 */
export const getImoveisDaRotas = (rotas) => {
  let imoveis = [];

  rotas.forEach((r) => {
    if (Array.isArray(r.imoveis)) {
      imoveis = imoveis.concat(r.imoveis);
    }
  });

  return imoveis;
};
