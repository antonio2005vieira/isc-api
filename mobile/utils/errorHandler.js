import { salvarLog } from "../database/sqlite";

// ================= ERROR HANDLER GLOBAL =================
export async function logError(context, error, extra = null) {

  const message =
    error?.message ||
    error?.toString?.() ||
    "Erro desconhecido";

  // ================= LOG NO CONSOLE =================
  console.log("❌ ERROR [", context, "]:", message);

  if (extra) {
    console.log("📌 EXTRA DATA:", extra);
  }

  // ================= SALVAR NO SQLITE =================
  try {

    if (salvarLog) {

      await salvarLog(
        "APP_ERROR",
        JSON.stringify({
          context,
          message,
          extra,
          date: new Date().toISOString()
        })
      );
    }

  } catch (dbErr) {

    console.log(
      "❌ ERROR LOG SAVE FAILED:",
      dbErr
    );
  }
}

// ================= ERROR SIMPLES (SYNC STYLE) =================
export function logSyncError(context, error) {

  console.log(
    "🔄 SYNC ERROR [",
    context,
    "]:",
    error?.message || error
  );
}

// ================= WARNING =================
export function logWarning(context, message) {

  console.log(
    "⚠️ WARNING [",
    context,
    "]:",
    message
  );
}
