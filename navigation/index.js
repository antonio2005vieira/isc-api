import React from "react";

import {
  NavigationContainer
} from "@react-navigation/native";

import {
  createNativeStackNavigator
} from "@react-navigation/native-stack";

import LoginScreen from "../screens/LoginScreen";

import MenuScreen from "../screens/MenuScreen";

import ImoveisScreen from "../screens/ImoveisScreen";

import LeituraScreen from "../screens/LeituraScreen";

const Stack =
  createNativeStackNavigator();

export default function Navigator() {

  return (

    <NavigationContainer>

      <Stack.Navigator
        screenOptions={{
          headerShown: false
        }}
      >

        <Stack.Screen
          name="Login"
          component={LoginScreen}
        />

        <Stack.Screen
          name="Menu"
          component={MenuScreen}
        />

        <Stack.Screen
          name="Imoveis"
          component={ImoveisScreen}
        />

        <Stack.Screen
          name="Leitura"
          component={LeituraScreen}
        />

      </Stack.Navigator>

    </NavigationContainer>

  );

}
