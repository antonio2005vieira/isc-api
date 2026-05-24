const CACHE_STATIC = "isc-static-v2";
const CACHE_DYNAMIC = "isc-dynamic-v2";

// arquivos essenciais do app
const ASSETS = [
  "/dashboard",
  "/web/imoveis",
  "/web/rotas",
  "/mapa",
  "/manifest.json"
];

// INSTALAÇÃO
self.addEventListener("install", (event) => {
  event.waitUntil(
    caches.open(CACHE_STATIC).then((cache) => {
      return cache.addAll(ASSETS);
    })
  );
});

// ATIVAÇÃO
self.addEventListener("activate", (event) => {
  event.waitUntil(
    caches.keys().then((keys) => {
      return Promise.all(
        keys.map((key) => {
          if (key !== CACHE_STATIC && key !== CACHE_DYNAMIC) {
            return caches.delete(key);
          }
        })
      );
    })
  );
});

// FETCH (CORAÇÃO DO OFFLINE)
self.addEventListener("fetch", (event) => {

  const url = event.request.url;

  // ❌ nunca cachear API (isso é CRÍTICO)
  if (url.includes("/api/") ||
      url.includes("/leituras") ||
      url.includes("/imoveis") ||
      url.includes("/sync")) {

    event.respondWith(fetch(event.request));
    return;
  }

  // estratégia: cache primeiro, depois rede
  event.respondWith(
    caches.match(event.request).then((cached) => {
      return cached || fetch(event.request).then((response) => {

        return caches.open(CACHE_DYNAMIC).then((cache) => {
          cache.put(event.request, response.clone());
          return response;
        });

      }).catch(() => {
        // fallback offline
        if (event.request.mode === "navigate") {
          return caches.match("/dashboard");
        }
      });
    })
  );
});
