export const parseCSV = (text) => {
  try {
    if (!text || typeof text !== "string") return [];

    const lines = text
      .split("\n")
      .map((l) => l.trim())
      .filter((l) => l.length > 0);

    if (lines.length < 2) return [];

    // ==============================
    // 📌 HEADERS
    // ==============================
    const headers = lines[0]
      .split(",")
      .map((h) => h.trim());

    const data = [];

    // ==============================
    // 📌 DADOS
    // ==============================
    for (let i = 1; i < lines.length; i++) {
      const row = lines[i].split(",");

      // ignora linhas inválidas
      if (!row || row.length === 0) continue;

      const obj = {};

      headers.forEach((header, index) => {
        let value = row[index];

        if (value === undefined) value = "";

        obj[header] = value.trim();
      });

      // valida mínimo necessário (evita lixo)
      if (!obj.imovel && !obj.id) continue;

      data.push({
        ...obj,
        imovel: obj.imovel || obj.id || "",
        leituraAnterior: obj.leituraAnterior || "0",
        rota: obj.rota || "default",
      });
    }

    return data;
  } catch (err) {
    console.log("CSV parse error:", err);
    return [];
  }
};
