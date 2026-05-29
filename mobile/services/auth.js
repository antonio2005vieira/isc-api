import AsyncStorage from "@react-native-async-storage/async-storage";

const TOKEN_KEY = "@isc_token";
const USER_KEY = "@isc_user";

// ================= SALVAR LOGIN =================
export const saveLogin = async (token, user) => {
  try {
    await AsyncStorage.setItem(TOKEN_KEY, token);
    await AsyncStorage.setItem(USER_KEY, JSON.stringify(user));
  } catch (err) {
    console.log("Erro ao salvar login:", err);
  }
};

// ================= PEGAR TOKEN =================
export const getToken = async () => {
  try {
    return await AsyncStorage.getItem(TOKEN_KEY);
  } catch (err) {
    console.log("Erro ao pegar token:", err);
    return null;
  }
};

// ================= PEGAR USUÁRIO =================
export const getUser = async () => {
  try {
    const user = await AsyncStorage.getItem(USER_KEY);
    return user ? JSON.parse(user) : null;
  } catch (err) {
    console.log("Erro ao pegar usuário:", err);
    return null;
  }
};

// ================= PEGAR SESSÃO COMPLETA =================
export const getUserSession = async () => {
  try {
    const token = await AsyncStorage.getItem(TOKEN_KEY);
    const user = await AsyncStorage.getItem(USER_KEY);

    return {
      token,
      user: user ? JSON.parse(user) : null
    };
  } catch (err) {
    console.log("Erro ao pegar sessão:", err);
    return {
      token: null,
      user: null
    };
  }
};

// ================= VERIFICAR LOGIN =================
export const isLoggedIn = async () => {
  const token = await getToken();
  return !!token;
};

// ================= LOGOUT =================
export const logout = async () => {
  try {
    await AsyncStorage.removeItem(TOKEN_KEY);
    await AsyncStorage.removeItem(USER_KEY);
  } catch (err) {
    console.log("Erro ao fazer logout:", err);
  }
};
