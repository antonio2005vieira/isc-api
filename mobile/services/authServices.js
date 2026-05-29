import api from "./api";
import AsyncStorage from "@react-native-async-storage/async-storage";

// ================= LOGIN =================
export const login = async (login, senha) => {
  const res = await api.post("/auth/login", { login, senha });

  const { token, user } = res.data;

  if (token) {
    api.defaults.headers.common["Authorization"] = `Bearer ${token}`;

    await AsyncStorage.setItem("token", token);
    await AsyncStorage.setItem("user", JSON.stringify(user));
  }

  return res.data;
};

// ================= LOGOUT =================
export const logout = async () => {
  await AsyncStorage.removeItem("token");
  await AsyncStorage.removeItem("user");

  delete api.defaults.headers.common["Authorization"];
};
