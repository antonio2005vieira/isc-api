let token = localStorage.getItem("token");

// ================= GPS =================
let currentGPS = {
  latitude: null,
  longitude: null
};

if (navigator.geolocation) {
  navigator.geolocation.watchPosition(pos => {
    currentGPS.latitude = pos.coords.latitude;
    currentGPS.longitude = pos.coords.longitude;
  });
}

// ================= SALVAR LEITURA OFFLINE =================
function salvarLeitura(imovel_id, leitura) {

  const dado = {
    client_id: Date.now() + "_" + Math.random(),
    tipo: "leitura",
    payload: {
      imovel_id,
      leitura,
      latitude: currentGPS.latitude,
      longitude: currentGPS.longitude
    }
  };

  let offline = JSON.parse(localStorage.getItem("offline") || "[]");

  offline.push(dado);

  localStorage.setItem("offline", JSON.stringify(offline));

  alert("Leitura salva offline");
}

// ================= SINCRONIZAR =================
async function sincronizar() {

  let offline = JSON.parse(localStorage.getItem("offline") || "[]");

  if (offline.length === 0) {
    alert("Nada para sincronizar");
    return;
  }

  try {
    const res = await fetch("/sync", {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify(offline)
    });

    const data = await res.json();

    if (data.status) {
      localStorage.removeItem("offline");
      alert("Sincronizado com sucesso");
    }

  } catch (err) {
    alert("Erro ao sincronizar");
  }
}

// ================= LISTAR IMÓVEIS =================
async function carregarImoveis() {

  const res = await fetch("/imoveis");
  const data = await res.json();

  const container = document.getElementById("lista");

  container.innerHTML = "";

  data.forEach(i => {

    const div = document.createElement("div");

    div.innerHTML = `
      <b>${i.matricula}</b><br>
      ${i.endereco}<br>
      <button onclick="salvarLeitura(${i.id}, prompt('Leitura'))">
        Registrar leitura
      </button>
    `;

    container.appendChild(div);
  });
}
