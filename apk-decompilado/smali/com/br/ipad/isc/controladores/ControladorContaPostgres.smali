.class public Lcom/br/ipad/isc/controladores/ControladorContaPostgres;
.super Lcom/br/ipad/isc/controladores/ControladorConta;
.source "ControladorContaPostgres.java"


# static fields
.field private static instance:Lcom/br/ipad/isc/controladores/ControladorContaPostgres;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorContaPostgres;
    .locals 1

    .line 33
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorContaPostgres;->instance:Lcom/br/ipad/isc/controladores/ControladorContaPostgres;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorContaPostgres;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorContaPostgres;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorContaPostgres;->instance:Lcom/br/ipad/isc/controladores/ControladorContaPostgres;

    .line 36
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorContaPostgres;->instance:Lcom/br/ipad/isc/controladores/ControladorContaPostgres;

    return-object v0
.end method


# virtual methods
.method public controlaSubstituicaoHidrometro(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ConsumoHistorico;Ljava/lang/Integer;I)Z
    .locals 6

    .line 312
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataInstalacaoHidrometro()Ljava/util/Date;

    move-result-object v0

    .line 314
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/br/ipad/isc/util/Util;->compararData(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v1, :cond_2

    .line 315
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/br/ipad/isc/util/Util;->compararData(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 319
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraHidrometoInstalada()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 320
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraHidrometoInstalada()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 322
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v1

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v5

    .line 329
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoMedidoMes(Ljava/lang/Integer;)V

    .line 330
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/br/ipad/isc/util/Util;->obterQuantidadeDiasEntreDuasDatasPositivo(Ljava/util/Date;Ljava/util/Date;)I

    .line 337
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 338
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 340
    invoke-virtual {p2, p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    .line 341
    new-instance v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 342
    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    const/4 v3, 0x1

    :cond_2
    if-nez v3, :cond_5

    .line 353
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumDigitosLeituraHidrometro()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    .line 354
    invoke-static {v1, v0}, Lcom/br/ipad/isc/util/Util;->pow(II)I

    move-result v0

    .line 355
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/controladores/ControladorContaPostgres;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v0

    sub-int/2addr v1, v0

    mul-int/lit8 p4, p4, 0x3

    if-gt v1, p4, :cond_5

    if-lez v1, :cond_5

    .line 361
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoMedidoMes(Ljava/lang/Integer;)V

    .line 362
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 363
    invoke-virtual {p2, p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    .line 365
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getCodigoSituacaoLeituraAnterior()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v4, :cond_4

    if-ne p1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x6

    .line 370
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto :goto_3

    .line 368
    :cond_4
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 373
    :goto_3
    new-instance p1, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    const/16 p3, 0x10

    invoke-direct {p1, p3}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 374
    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    goto :goto_4

    :cond_5
    move v4, v3

    :goto_4
    return v4
.end method

.method public recuperarDadosConsumoAnormalidadeAcao(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;ILcom/br/ipad/isc/bean/ConsumoAnormalidade;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    .line 65
    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getConsumoMedio()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_0
    move/from16 v3, p4

    if-ne v3, v2, :cond_1

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioLigacaoAgua()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioEsgoto()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 74
    :goto_0
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v4

    .line 76
    invoke-virtual/range {p5 .. p5}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoPerfil()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorContaPostgres;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->obterCategoriaPrincipal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorContaPostgres;->getControladorConsumoAnormalidadeAcao()Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 83
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 82
    invoke-virtual {v8, v6, v9, v7}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->buscarConsumoAnormalidadeAcao(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    .line 86
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_24

    .line 92
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getMensagemConta()Ljava/lang/String;

    move-result-object v9

    .line 93
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getMensagemContaSegundoMes()Ljava/lang/String;

    move-result-object v10

    .line 94
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getMensagemContaTerceiroMes()Ljava/lang/String;

    move-result-object v11

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12, v2}, Lcom/br/ipad/isc/util/Util;->subtrairMesDoAnoMes(II)I

    move-result v12

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorContaPostgres;->getControladorConsumoAnteriores()Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;

    move-result-object v13

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v13, v14, v15, v12}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->buscarConsumoAnterioresPorImovelAnormalidade(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    move-result-object v12

    const/16 v13, 0x3c

    const-string v15, "6"

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eqz v12, :cond_15

    const-string v2, ""

    .line 104
    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto/16 :goto_7

    .line 129
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9, v7}, Lcom/br/ipad/isc/util/Util;->subtrairMesDoAnoMes(II)I

    move-result v9

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorContaPostgres;->getControladorConsumoAnteriores()Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;

    move-result-object v12

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v7, v14, v9}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->buscarConsumoAnterioresPorImovelAnormalidade(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 133
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_5

    .line 158
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7, v8}, Lcom/br/ipad/isc/util/Util;->subtrairMesDoAnoMes(II)I

    move-result v7

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorContaPostgres;->getControladorConsumoAnteriores()Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;

    move-result-object v9

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v10, v12, v7}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->buscarConsumoAnterioresPorImovelAnormalidade(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 162
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    .line 189
    :cond_5
    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM_SHORT:Ljava/lang/Short;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getIndicadorCobrancaConsumoNormal()Ljava/lang/Short;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Short;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 190
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x0

    goto/16 :goto_9

    .line 192
    :cond_6
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getIdLeituraAnormalidadeConsumoTerceiroMes()Ljava/lang/Integer;

    move-result-object v2

    .line 193
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getFatorConsumoTerceiroMes()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 194
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setNumeroMesMotivoRevisao(Ljava/lang/Integer;)V

    if-eqz v11, :cond_1a

    .line 198
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 200
    invoke-static {v11, v13}, Lcom/br/ipad/isc/util/Util;->dividirString(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_7
    const/16 v4, 0x28

    .line 202
    invoke-static {v11, v4}, Lcom/br/ipad/isc/util/Util;->dividirString(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 205
    :goto_2
    array-length v6, v4

    const/4 v9, 0x1

    if-eq v6, v9, :cond_a

    const/4 v10, 0x2

    if-eq v6, v10, :cond_9

    if-eq v6, v8, :cond_8

    goto/16 :goto_9

    .line 207
    :cond_8
    aget-object v6, v4, v10

    invoke-virtual {v0, v6}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade3(Ljava/lang/String;)V

    .line 209
    :cond_9
    aget-object v6, v4, v9

    invoke-virtual {v0, v6}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade2(Ljava/lang/String;)V

    :cond_a
    const/4 v6, 0x0

    .line 211
    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade1(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 163
    :cond_b
    :goto_3
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getIdLeituraAnormalidadeConsumoTerceiroMes()Ljava/lang/Integer;

    move-result-object v2

    .line 164
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getFatorConsumoTerceiroMes()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 165
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setNumeroMesMotivoRevisao(Ljava/lang/Integer;)V

    if-eqz v11, :cond_1a

    .line 169
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 171
    invoke-static {v11, v13}, Lcom/br/ipad/isc/util/Util;->dividirString(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_c
    const/16 v4, 0x28

    .line 173
    invoke-static {v11, v4}, Lcom/br/ipad/isc/util/Util;->dividirString(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 176
    :goto_4
    array-length v6, v4

    const/4 v9, 0x1

    if-eq v6, v9, :cond_f

    const/4 v10, 0x2

    if-eq v6, v10, :cond_e

    if-eq v6, v8, :cond_d

    goto/16 :goto_9

    .line 178
    :cond_d
    aget-object v6, v4, v10

    invoke-virtual {v0, v6}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade3(Ljava/lang/String;)V

    .line 180
    :cond_e
    aget-object v6, v4, v9

    invoke-virtual {v0, v6}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade2(Ljava/lang/String;)V

    :cond_f
    const/4 v6, 0x0

    .line 182
    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade1(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 134
    :cond_10
    :goto_5
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getIdLeituraAnormalidadeConsumoSegundoMes()Ljava/lang/Integer;

    move-result-object v2

    .line 135
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getFatorConsumoSegundoMes()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v6, 0x2

    .line 136
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setNumeroMesMotivoRevisao(Ljava/lang/Integer;)V

    if-eqz v10, :cond_1a

    .line 140
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 142
    invoke-static {v10, v13}, Lcom/br/ipad/isc/util/Util;->dividirString(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_11
    const/16 v4, 0x28

    .line 144
    invoke-static {v10, v4}, Lcom/br/ipad/isc/util/Util;->dividirString(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 147
    :goto_6
    array-length v6, v4

    const/4 v9, 0x1

    if-eq v6, v9, :cond_14

    const/4 v10, 0x2

    if-eq v6, v10, :cond_13

    if-eq v6, v8, :cond_12

    goto :goto_9

    .line 149
    :cond_12
    aget-object v6, v4, v10

    invoke-virtual {v0, v6}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade3(Ljava/lang/String;)V

    .line 151
    :cond_13
    aget-object v6, v4, v9

    invoke-virtual {v0, v6}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade2(Ljava/lang/String;)V

    :cond_14
    const/4 v6, 0x0

    .line 153
    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade1(Ljava/lang/String;)V

    goto :goto_9

    .line 105
    :cond_15
    :goto_7
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getIdLeituraAnormalidadeConsumo()Ljava/lang/Integer;

    move-result-object v2

    .line 106
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getFatorConsumo()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v6, 0x1

    .line 107
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setNumeroMesMotivoRevisao(Ljava/lang/Integer;)V

    if-eqz v9, :cond_1a

    .line 111
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 113
    invoke-static {v9, v13}, Lcom/br/ipad/isc/util/Util;->dividirString(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_16
    const/16 v4, 0x28

    .line 115
    invoke-static {v9, v4}, Lcom/br/ipad/isc/util/Util;->dividirString(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 118
    :goto_8
    array-length v6, v4

    const/4 v9, 0x1

    if-eq v6, v9, :cond_19

    const/4 v10, 0x2

    if-eq v6, v10, :cond_18

    if-eq v6, v8, :cond_17

    goto :goto_9

    .line 120
    :cond_17
    aget-object v6, v4, v10

    invoke-virtual {v0, v6}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade3(Ljava/lang/String;)V

    .line 122
    :cond_18
    aget-object v6, v4, v9

    invoke-virtual {v0, v6}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade2(Ljava/lang/String;)V

    :cond_19
    const/4 v6, 0x0

    .line 124
    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade1(Ljava/lang/String;)V

    .line 221
    :cond_1a
    :goto_9
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    move-object/from16 v4, p5

    .line 226
    invoke-virtual {v1, v4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    if-eqz v2, :cond_1b

    .line 228
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1b

    .line 230
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 231
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto/16 :goto_a

    :cond_1b
    if-eqz v2, :cond_1c

    .line 233
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1c

    .line 236
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    const/16 v0, 0x8

    .line 238
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto/16 :goto_a

    :cond_1c
    const/4 v4, 0x5

    const/4 v6, 0x6

    if-eqz v2, :cond_20

    .line 241
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_20

    if-eq v5, v6, :cond_1d

    if-ne v5, v4, :cond_1f

    :cond_1d
    if-eqz v7, :cond_1f

    int-to-double v3, v3

    .line 249
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Lcom/br/ipad/isc/util/Util;->arredondar(D)I

    move-result v3

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoEstouro()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v3, :cond_1e

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoEstouro()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_a

    .line 254
    :cond_1e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_a

    .line 257
    :cond_1f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 258
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto :goto_a

    :cond_20
    if-eqz v2, :cond_21

    .line 261
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_21

    goto :goto_a

    :cond_21
    if-eqz v2, :cond_22

    .line 265
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_22

    .line 267
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v3, v0, :cond_23

    .line 268
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 269
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto :goto_a

    :cond_22
    if-eqz v2, :cond_23

    .line 272
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_23

    .line 273
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v3, v0, :cond_23

    .line 274
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 275
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    :cond_23
    :goto_a
    if-eqz v7, :cond_24

    if-eqz v2, :cond_24

    .line 285
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_24

    .line 286
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v2, v0

    .line 287
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    .line 288
    invoke-static {v2, v3}, Lcom/br/ipad/isc/util/Util;->arredondar(D)I

    move-result v0

    .line 289
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    :cond_24
    return-void
.end method
