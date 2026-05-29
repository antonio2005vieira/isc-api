const logs = [];

export function log(tipo, mensagem, data = {}) {
  const entry = {
    id: Date.now(),
    tipo,
    mensagem,
    data,
    timestamp: new Date().toISOString(),
  };

  logs.push(entry);

  console.log(`[${tipo}]`, mensagem, data);
}

// ==============================
export function getLogs() {
  return logs;
}

// ==============================
export function clearLogs() {
  logs.length = 0;
}
