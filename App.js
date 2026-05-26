import React, { useEffect } from "react";

import Navigator from "./navigation";

import { initDatabase } from "./database/sqlite";

import NetInfo from "@react-native-community/netinfo";
import { sincronizarLeituras } from "./services/sync";

export default function App() {

  useEffect(() => {

    initDatabase();

    const unsubscribe = NetInfo.addEventListener(state => {

      if (state.isConnected) {

        console.log("Internet detectada → sincronizando");

        sincronizarLeituras();

      }

    });

    return () => unsubscribe();

  }, []);

  return <Navigator />;

}
