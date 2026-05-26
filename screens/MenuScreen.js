import React from "react";
import {
  View,
  Button,
  StyleSheet,
  Alert,
  ScrollView
} from "react-native";

import { useNavigation } from "@react-navigation/native";

import { sincronizarLeituras } from "../services/sync";

export default function MenuScreen() {

  const navigation = useNavigation();

  async function enviarPendentes() {

    try {

      const resultado = await sincronizarLeituras();

      Alert.alert(
        "Sincronização",
        `Enviados: ${resultado.sucesso}\nErros: ${resultado.erro}`
      );

    } catch (err) {

      Alert.alert("Erro", "Falha ao sincronizar");

    }

  }

  return (
    <ScrollView contentContainerStyle={styles.container}>

      <Button
        title="Lista de Imóveis"
        onPress={() => navigation.navigate("Imoveis")}
      />

      <Button title="Consultar Imóveis" />

      <Button title="Ordenar Roteiro" />

      <Button title="Finalizar Roteiro" />

      <Button title="Relatórios" />

      <Button title="Selecionar Impressora" />

      <Button title="Apagar tudo" />

      <Button title="Finalizar roteiro incompleto" />

      <Button
        title="Enviar imóveis lidos"
        onPress={enviarPendentes}
      />

      <Button title="Tornar roteiro offline" />

      <Button title="Gerar arquivo retorno" />

      <Button title="Exportar Base de Dados" />

    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    padding: 20,
    gap: 12
  }
});
