.class public Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;
.super Lcom/br/ipad/isc/impressao/ImpressaoSANEP;
.source "ExtratoMacroSANEP.java"


# static fields
.field private static instancia:Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;-><init>()V

    return-void
.end method

.method public static getInstancia(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;
    .locals 1

    .line 27
    sget-object v0, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->instancia:Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;

    invoke-direct {v0}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->instancia:Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;

    .line 30
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->instancia:Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;

    iput-object p0, v0, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 31
    sget-object p0, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->instancia:Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;

    return-object p0
.end method


# virtual methods
.method public obterStringExtratoMacroCompesa()Ljava/lang/StringBuilder;
    .locals 41

    move-object/from16 v8, p0

    const-string v9, "REFERENCIA"

    .line 54
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->buffer:Ljava/lang/StringBuilder;

    const-string v1, "N\u00c3O MEDIDO"

    .line 59
    iget-object v2, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v2

    .line 60
    iget-object v3, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v3, v2}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoAgua(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v10

    .line 62
    iget-object v2, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigEsgoto()Ljava/lang/Integer;

    move-result-object v2

    .line 63
    iget-object v3, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v3, v2}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoEsgoto(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v11

    .line 74
    iget-object v2, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 75
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v13

    .line 77
    iget-object v2, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 78
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v15

    .line 83
    iget-object v2, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 84
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v16

    .line 86
    iget-object v2, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 87
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x5

    const/16 v18, 0x0

    const-string v6, ""

    if-eqz v13, :cond_6

    .line 93
    :try_start_1
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v2, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v2, v13}, Lcom/br/ipad/isc/fachada/Fachada;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 99
    iget-object v5, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcAreaComum()Ljava/lang/Integer;

    move-result-object v5

    sget-object v14, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v5, v14}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v13, :cond_0

    .line 102
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 103
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 104
    new-instance v5, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v5}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    .line 105
    iget-object v5, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v14, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/br/ipad/isc/fachada/Fachada;->obterImovelAreaComum(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object/from16 v5, v18

    :goto_0
    if-eqz v16, :cond_5

    .line 111
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 113
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 114
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v1

    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 118
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v24, v1

    move-object/from16 v23, v2

    int-to-long v1, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v7, v1

    goto :goto_2

    :cond_1
    move-object/from16 v24, v1

    move-object/from16 v23, v2

    move-object v7, v6

    :goto_2
    move-object v2, v12

    move-object v1, v14

    move-object/from16 v12, v22

    move-object/from16 v14, v24

    goto/16 :goto_5

    :cond_2
    move-object/from16 v22, v1

    move-object/from16 v23, v2

    .line 123
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v12, v1

    move-object v14, v6

    goto :goto_3

    .line 129
    :cond_3
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v12, v1

    move-object v14, v2

    goto :goto_3

    :cond_4
    move-object v12, v6

    move-object v14, v12

    .line 136
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    move-object v7, v2

    move-object v2, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v5

    move-object/from16 v5, v23

    move-object/from16 v39, v14

    move-object v14, v1

    move-object/from16 v1, v39

    move-object/from16 v40, v4

    move-object v4, v3

    move-object/from16 v3, v40

    goto/16 :goto_b

    :cond_5
    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object v1, v6

    move-object v2, v1

    move-object v7, v2

    move-object v14, v7

    move-object/from16 v12, v22

    :goto_5
    move-object/from16 v22, v5

    move-object/from16 v5, v23

    move-object/from16 v39, v4

    move-object v4, v3

    move-object/from16 v3, v39

    goto/16 :goto_b

    :cond_6
    if-eqz v15, :cond_c

    .line 144
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v1

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorFaturamento()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 151
    iget-object v5, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcAreaComum()Ljava/lang/Integer;

    move-result-object v5

    sget-object v7, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v5, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v15, :cond_7

    .line 153
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 154
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x5

    if-ne v5, v7, :cond_8

    .line 155
    new-instance v5, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v5}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    .line 156
    iget-object v5, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v12, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/br/ipad/isc/fachada/Fachada;->obterImovelAreaComum(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v5

    goto :goto_6

    :cond_7
    const/4 v7, 0x5

    :cond_8
    move-object/from16 v5, v18

    :goto_6
    if-eqz v17, :cond_5

    .line 162
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 164
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 165
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 166
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v1

    invoke-virtual/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 169
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v24, v1

    move-object/from16 v23, v2

    int-to-long v1, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v22, v1

    move-object/from16 v23, v2

    .line 173
    invoke-virtual/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_a

    move-object v12, v1

    move-object v14, v6

    goto :goto_7

    .line 179
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v12, v1

    move-object v14, v2

    goto :goto_7

    :cond_b
    move-object v12, v6

    move-object v14, v12

    .line 186
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    :cond_c
    if-nez v13, :cond_10

    if-nez v15, :cond_10

    if-eqz v16, :cond_e

    .line 197
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_8

    :cond_d
    move-object v12, v6

    .line 203
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_9
    move-object v14, v2

    move-object v7, v3

    move-object v3, v6

    move-object v4, v3

    move-object v5, v4

    move-object v2, v12

    move-object/from16 v22, v18

    move-object v12, v1

    move-object v1, v5

    goto :goto_b

    :cond_e
    if-eqz v17, :cond_10

    .line 208
    invoke-virtual/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_a

    :cond_f
    move-object v12, v6

    .line 214
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_10
    move-object v12, v1

    move-object v1, v6

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v7, v5

    move-object v14, v7

    move-object/from16 v22, v18

    :goto_b
    if-eqz v22, :cond_11

    move-object/from16 v23, v1

    .line 225
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    move-object/from16 v24, v2

    .line 226
    invoke-virtual/range {v22 .. v22}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v25, v3

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v1

    .line 228
    iget-object v2, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 229
    invoke-virtual/range {v22 .. v22}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v26, v1

    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v1

    move-object/from16 v27, v1

    goto :goto_c

    :cond_11
    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v18

    move-object/from16 v27, v26

    :goto_c
    const-string v1, "! 0 816 0 1720 1\n"

    .line 235
    invoke-virtual {v8, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto(Ljava/lang/String;)V

    const-string v1, "CENTER\n"

    .line 238
    invoke-virtual {v8, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto(Ljava/lang/String;)V

    const-string v1, "EXTRATO MACRO MEDIDOR"

    const/4 v3, 0x0

    const/16 v2, 0x35

    .line 239
    invoke-virtual {v8, v3, v2, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const-string v1, "LEFT\n"

    .line 240
    invoke-virtual {v8, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto(Ljava/lang/String;)V

    const/16 v1, 0x2a3

    const/16 v2, 0x32

    .line 243
    iget-object v3, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v1, v2, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    .line 246
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->retornaDescricaoAbreviadaMesDoAnoMes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    iget-object v2, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v28, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x75

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v8, v2, v4, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    .line 252
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCpfCnpjCliente()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCpfCnpjCliente()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 253
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCpfCnpjCliente()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    :cond_12
    const/16 v1, 0x73

    .line 256
    iget-object v2, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getNomeUsuario()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xc8

    invoke-virtual {v8, v4, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/16 v29, 0xc8

    const/16 v30, 0x88

    .line 258
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getEndereco()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->cortarEndereco(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x17

    move-object/from16 v33, v23

    move-object/from16 v1, p0

    move-object/from16 v34, v24

    move-object/from16 v35, v25

    move-object/from16 v36, v28

    move/from16 v4, v29

    move-object/from16 v37, v5

    move/from16 v5, v30

    move-object/from16 v38, v6

    move-object/from16 v6, v31

    move-object/from16 v21, v7

    move-object/from16 v23, v9

    const/4 v9, 0x5

    move/from16 v7, v32

    invoke-virtual/range {v1 .. v7}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTextos(IIII[Ljava/lang/String;I)V

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSCRICAO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->formatarInscricao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc4

    const/16 v3, 0xc8

    invoke-virtual {v8, v3, v2, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Grupo: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getGrupoFaturamento()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x258

    invoke-virtual {v8, v4, v2, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v2, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 271
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v1

    .line 274
    iget-object v2, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->categoriasEconomiasNovo(Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    const/16 v2, 0x1bd

    .line 279
    invoke-virtual {v8, v1, v2, v12}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    .line 282
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x96

    const/16 v5, 0xd

    const/16 v6, 0x186

    if-le v1, v5, :cond_13

    const/4 v1, 0x0

    .line 283
    invoke-virtual {v10, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v2, v6, v5}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    goto :goto_d

    :cond_13
    const/4 v1, 0x0

    .line 285
    invoke-virtual {v8, v2, v6, v10}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    :goto_d
    const/16 v2, 0x28a

    .line 290
    invoke-virtual {v8, v2, v6, v11}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const/16 v5, 0x2ee

    const-string v6, "LEIT ATUAL INF:"

    const/16 v7, 0x2d

    .line 295
    invoke-virtual {v8, v7, v5, v6}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const/16 v6, 0x118

    move-object/from16 v10, v33

    .line 296
    invoke-virtual {v8, v6, v5, v10}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const/16 v10, 0x307

    const-string v11, "LEIT. ATUAL FAT:"

    .line 299
    invoke-virtual {v8, v7, v10, v11}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    move-object/from16 v12, v34

    .line 300
    invoke-virtual {v8, v6, v10, v12}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const/16 v11, 0x320

    const-string v12, "LEIT. ANT:"

    .line 303
    invoke-virtual {v8, v7, v11, v12}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    move-object/from16 v12, v37

    .line 304
    invoke-virtual {v8, v6, v11, v12}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    .line 307
    iget-object v12, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v12

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v12, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v12, 0x19a

    if-nez v1, :cond_14

    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoEsgoto()Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_14
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 308
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 312
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz v22, :cond_15

    if-eqz v13, :cond_15

    .line 315
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 316
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v9, :cond_15

    if-eqz v26, :cond_15

    .line 318
    invoke-virtual/range {v26 .. v26}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v38

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v26 .. v26}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_e

    :cond_15
    move-object/from16 v4, v38

    if-eqz v16, :cond_18

    .line 324
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_16
    move-object/from16 v4, v38

    .line 331
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoEsgoto()Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    if-eqz v22, :cond_17

    if-eqz v15, :cond_17

    .line 334
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 335
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v9, :cond_17

    if-eqz v27, :cond_17

    .line 337
    invoke-virtual/range {v27 .. v27}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_17
    if-eqz v17, :cond_18

    .line 343
    invoke-virtual/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_18
    move-object v1, v4

    :goto_e
    const/16 v3, 0x339

    const-string v9, "CONSUMO (m3):"

    .line 351
    invoke-virtual {v8, v7, v3, v9}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    .line 352
    invoke-virtual {v8, v6, v3, v14}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const-string v6, "CONSUMO RATEIO (m3):"

    .line 354
    invoke-virtual {v8, v12, v3, v6}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    .line 355
    invoke-virtual {v8, v2, v3, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    goto :goto_f

    :cond_19
    move-object/from16 v4, v38

    const/16 v1, 0x339

    const-string v3, "CONSUMO (m3):"

    .line 358
    invoke-virtual {v8, v7, v1, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    .line 359
    invoke-virtual {v8, v6, v1, v14}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    :goto_f
    const-string v1, "DATA LEITURA ANT:"

    .line 363
    invoke-virtual {v8, v12, v5, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    move-object/from16 v3, v36

    .line 364
    invoke-virtual {v8, v2, v5, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const-string v1, "DATA LEITURA ATUAL:"

    .line 367
    invoke-virtual {v8, v12, v10, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    move-object/from16 v6, v35

    .line 368
    invoke-virtual {v8, v2, v10, v6}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const-string v1, "DIAS CONSUMO:"

    .line 371
    invoke-virtual {v8, v12, v11, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    move-object/from16 v6, v21

    .line 372
    invoke-virtual {v8, v2, v11, v6}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    .line 378
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioLigacaoAgua()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 380
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioLigacaoAgua()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_10

    .line 383
    :cond_1a
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioEsgoto()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_10
    const/16 v2, 0x366

    const-string v3, "HISTORICO DE CONSUMO"

    .line 386
    invoke-virtual {v8, v7, v2, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const/16 v2, 0x389

    move-object/from16 v3, v23

    .line 389
    invoke-virtual {v8, v7, v2, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const/16 v5, 0xbd

    const-string v6, "CONS:"

    .line 390
    invoke-virtual {v8, v5, v2, v6}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const/16 v5, 0x10e

    .line 391
    invoke-virtual {v8, v5, v2, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const/16 v5, 0x19c

    const-string v6, "CONS"

    .line 392
    invoke-virtual {v8, v5, v2, v6}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const/16 v5, 0x1ea

    .line 393
    invoke-virtual {v8, v5, v2, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const/16 v3, 0x27b

    const-string v5, "CONS"

    .line 394
    invoke-virtual {v8, v3, v2, v5}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const/16 v3, 0x2c6

    const-string v5, "MEDIA"

    .line 396
    invoke-virtual {v8, v3, v2, v5}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const/16 v2, 0x3a2

    const/16 v3, 0x2c6

    .line 399
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v3, v2, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    .line 402
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v2, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoAnterioresPorImovelId(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x3bb

    if-eqz v1, :cond_1e

    const/4 v3, 0x0

    const/16 v5, 0x3bb

    const/16 v6, 0x2d

    :goto_11
    const/4 v9, 0x6

    if-ge v3, v9, :cond_1e

    .line 410
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    if-eqz v13, :cond_1b

    .line 413
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getTipoLigacao()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1c

    goto :goto_12

    :cond_1b
    if-eqz v15, :cond_1c

    .line 416
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getTipoLigacao()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1c

    goto :goto_12

    .line 420
    :cond_1c
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnoMesReferencia()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v6, v5, v10}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    add-int/lit16 v10, v6, 0x8e

    .line 421
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getConsumo()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x2

    invoke-static {v11, v9}, Lcom/br/ipad/isc/util/Util;->adicionarZerosEsquerdaNumero(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v10, v5, v9}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 v9, v3, 0x1

    .line 423
    rem-int/2addr v9, v11

    if-nez v9, :cond_1d

    add-int/lit16 v6, v6, 0xdf

    const/16 v5, 0x3bb

    goto :goto_12

    :cond_1d
    add-int/lit8 v5, v5, 0x19

    :goto_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1e
    const/16 v1, 0x424

    const-string v2, "EXTRATO DE CONSUMO DO MACROMEDIDOR"

    const/16 v3, 0xc8

    .line 434
    invoke-virtual {v8, v3, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x447

    const-string v2, "CONSUMO DO IM\u00d3VEL CONDOM\u00cdNIO"

    .line 437
    invoke-virtual {v8, v7, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, " m3"

    if-eqz v16, :cond_1f

    .line 441
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x258

    invoke-virtual {v8, v5, v1, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const/4 v3, 0x1

    .line 442
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_13

    :cond_1f
    if-eqz v17, :cond_20

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x258

    invoke-virtual {v8, v5, v1, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const/4 v3, 0x2

    .line 446
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_13

    :cond_20
    move-object/from16 v5, v18

    :goto_13
    if-eqz v5, :cond_21

    const/16 v1, 0x460

    const-string v3, "SOMA DOS CONSUMOS DOS IM\u00d3VEIS VINCULADOS"

    .line 451
    invoke-virtual {v8, v7, v1, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9, v5}, Lcom/br/ipad/isc/fachada/Fachada;->obterConsumoImoveisMicro(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x258

    invoke-virtual {v8, v5, v1, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    :cond_21
    add-int/lit8 v1, v1, 0x19

    const-string v3, "QUANTIDADE IM\u00d3VEIS VINCULADOS"

    .line 456
    invoke-virtual {v8, v7, v1, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->totalEconomias:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x258

    invoke-virtual {v8, v4, v1, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v1, v1, 0x19

    const-string v3, "CONSUMO RATEADO"

    if-eqz v22, :cond_22

    if-eqz v13, :cond_22

    .line 462
    :try_start_3
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 463
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_22

    .line 464
    invoke-virtual/range {v26 .. v26}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 466
    invoke-virtual {v8, v7, v1, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x258

    invoke-virtual {v8, v4, v1, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    goto/16 :goto_15

    :cond_22
    if-eqz v16, :cond_23

    move-object/from16 v4, v16

    goto :goto_14

    :cond_23
    if-eqz v17, :cond_24

    move-object/from16 v4, v17

    goto :goto_14

    :cond_24
    move-object/from16 v4, v18

    :goto_14
    if-eqz v4, :cond_27

    .line 478
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_25

    .line 479
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_25

    iget-object v5, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndicadorImovelRateioNegativo()Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 481
    invoke-virtual {v8, v7, v1, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const-string v3, " 0 m3"

    const/16 v4, 0x258

    .line 482
    invoke-virtual {v8, v4, v1, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    goto :goto_15

    .line 485
    :cond_25
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/br/ipad/isc/fachada/Fachada;->obterQuantidadeImovelMicro(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    div-int/2addr v5, v6

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-nez v5, :cond_26

    .line 487
    invoke-virtual {v8, v7, v1, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const-string v3, " 0 m3"

    const/16 v4, 0x258

    .line 489
    invoke-virtual {v8, v4, v1, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    goto :goto_15

    .line 493
    :cond_26
    invoke-virtual {v8, v7, v1, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x258

    invoke-virtual {v8, v4, v1, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    :cond_27
    :goto_15
    add-int/lit8 v1, v1, 0x19

    if-eqz v16, :cond_28

    goto :goto_16

    :cond_28
    if-eqz v17, :cond_29

    move-object/from16 v16, v17

    goto :goto_16

    :cond_29
    move-object/from16 v16, v18

    :goto_16
    if-eqz v16, :cond_2a

    .line 509
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 510
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_2a

    iget-object v3, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndicadorImovelRateioNegativo()Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const-string v2, "CONSUMO RATEADO POR UNIDADE"

    .line 512
    invoke-virtual {v8, v7, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const-string v2, "0 m3"

    const/16 v3, 0x258

    .line 514
    invoke-virtual {v8, v3, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    goto :goto_17

    :cond_2a
    const-string v3, "CONSUMO RATEADO POR UNIDADE"

    .line 517
    invoke-virtual {v8, v7, v1, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    .line 518
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v6, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/fachada/Fachada;->obterQuantidadeImovelMicro(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    div-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x258

    invoke-virtual {v8, v3, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    :goto_17
    add-int/lit16 v1, v1, 0x9b

    const/16 v2, 0x168

    const-string v3, "IMPORTANTE"

    .line 523
    invoke-virtual {v8, v2, v1, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x19

    const-string v2, "CASO O VALOR DO RATEIO ESTEJA ELEVADO"

    const/16 v3, 0x35

    .line 530
    invoke-virtual {v8, v3, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x19

    const-string v2, "1. Confirme a leitura do macro"

    const/16 v4, 0x3f

    .line 533
    invoke-virtual {v8, v4, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x19

    const-string v2, "2. Verifique os reservat\u00f3rios"

    .line 536
    invoke-virtual {v8, v4, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x19

    const-string v2, "3. Verifique se h\u00e1 apartamento ligado clandestino"

    .line 539
    invoke-virtual {v8, v4, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x19

    const-string v2, "QUALQUER IRREGULARIDADE COMUNIQUE AO SANEP ATRAV\u00c9S DO"

    .line 542
    invoke-virtual {v8, v3, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x19

    const-string v2, "SETOR DE ATENDIMENTO"

    .line 545
    invoke-virtual {v8, v3, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x19

    const-string v2, "RATEIO: Obtido atraves da diferen\u00e7a do consumo entre"

    .line 548
    invoke-virtual {v8, v3, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x19

    const-string v2, "o macromedidor e os consumos dos apartamentos"

    .line 551
    invoke-virtual {v8, v3, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x3c

    const/16 v2, 0x8e3

    .line 554
    iget-object v3, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v1, v2, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto70(IILjava/lang/String;)V

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->comandoImpressao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->appendTexto(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_18

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 560
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 561
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISC"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :goto_18
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->buffer:Ljava/lang/StringBuilder;

    return-object v1
.end method
