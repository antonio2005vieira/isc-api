.class public final Lcom/br/ipad/isc/repositorios/BDScript;
.super Ljava/lang/Object;
.source "BDScript.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ( "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 294
    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_1

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p3, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_0

    const-string v1, ", "

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, " );"

    .line 300
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public obterScriptBanco()[Ljava/lang/String;
    .locals 56

    move-object/from16 v0, p0

    .line 71
    new-instance v1, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao$SequencialRotaMarcacoesTipos;

    new-instance v2, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;

    invoke-direct {v2}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao$SequencialRotaMarcacoesTipos;-><init>(Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;)V

    .line 72
    new-instance v2, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;

    new-instance v3, Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-direct {v3}, Lcom/br/ipad/isc/bean/SistemaParametros;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;-><init>(Lcom/br/ipad/isc/bean/SistemaParametros;)V

    .line 73
    new-instance v3, Lcom/br/ipad/isc/bean/ConsumoAnormalidade$ConsumoAnormalidadesTipos;

    new-instance v4, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade$ConsumoAnormalidadesTipos;-><init>(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    .line 74
    new-instance v4, Lcom/br/ipad/isc/bean/ImovelConta$ImovelContasTipos;

    new-instance v5, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v5}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5}, Lcom/br/ipad/isc/bean/ImovelConta$ImovelContasTipos;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 75
    new-instance v5, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;

    new-instance v6, Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-direct {v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;-><init>(Lcom/br/ipad/isc/bean/HidrometroInstalado;)V

    .line 76
    new-instance v6, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;

    new-instance v7, Lcom/br/ipad/isc/bean/ConsumoHistorico;

    invoke-direct {v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;-><init>(Lcom/br/ipad/isc/bean/ConsumoHistorico;)V

    .line 77
    new-instance v7, Lcom/br/ipad/isc/bean/ImovelRevisitar$ImoveisRevisitarTipos;

    new-instance v8, Lcom/br/ipad/isc/bean/ImovelRevisitar;

    invoke-direct {v8}, Lcom/br/ipad/isc/bean/ImovelRevisitar;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v8}, Lcom/br/ipad/isc/bean/ImovelRevisitar$ImoveisRevisitarTipos;-><init>(Lcom/br/ipad/isc/bean/ImovelRevisitar;)V

    .line 78
    new-instance v8, Lcom/br/ipad/isc/bean/CategoriaSubcategoria$CategoriasSubcategoriasTipos;

    new-instance v9, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    invoke-direct {v9}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v8, v9}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria$CategoriasSubcategoriasTipos;-><init>(Lcom/br/ipad/isc/bean/CategoriaSubcategoria;)V

    .line 79
    new-instance v9, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;

    new-instance v10, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    invoke-direct {v10}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, v10}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;-><init>(Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;)V

    .line 80
    new-instance v10, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;

    new-instance v11, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v11}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v10, v11}, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;-><init>(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)V

    .line 81
    new-instance v11, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;

    new-instance v12, Lcom/br/ipad/isc/bean/QualidadeAgua;

    invoke-direct {v12}, Lcom/br/ipad/isc/bean/QualidadeAgua;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v11, v12}, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;-><init>(Lcom/br/ipad/isc/bean/QualidadeAgua;)V

    .line 82
    new-instance v12, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo$FaturamentoSituacaoTipoTipos;

    new-instance v13, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    invoke-direct {v13}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;-><init>()V

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v12, v13}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo$FaturamentoSituacaoTipoTipos;-><init>(Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;)V

    .line 83
    new-instance v13, Lcom/br/ipad/isc/bean/CreditoRealizado$CreditoRealizadoTipos;

    new-instance v14, Lcom/br/ipad/isc/bean/CreditoRealizado;

    invoke-direct {v14}, Lcom/br/ipad/isc/bean/CreditoRealizado;-><init>()V

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v13, v14}, Lcom/br/ipad/isc/bean/CreditoRealizado$CreditoRealizadoTipos;-><init>(Lcom/br/ipad/isc/bean/CreditoRealizado;)V

    .line 84
    new-instance v14, Lcom/br/ipad/isc/bean/ContaImposto$ContaImpostosTipos;

    new-instance v15, Lcom/br/ipad/isc/bean/ContaImposto;

    invoke-direct {v15}, Lcom/br/ipad/isc/bean/ContaImposto;-><init>()V

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v14, v15}, Lcom/br/ipad/isc/bean/ContaImposto$ContaImpostosTipos;-><init>(Lcom/br/ipad/isc/bean/ContaImposto;)V

    .line 85
    new-instance v15, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria$ConsumosTarifasCategoriasTipos;

    move-object/from16 v16, v1

    new-instance v1, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    invoke-direct {v1}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v15, v1}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria$ConsumosTarifasCategoriasTipos;-><init>(Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;)V

    .line 86
    new-instance v1, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa$ConsumosTarifasFaixasTipos;

    move-object/from16 v17, v9

    new-instance v9, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;

    invoke-direct {v9}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v9}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa$ConsumosTarifasFaixasTipos;-><init>(Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;)V

    .line 87
    new-instance v9, Lcom/br/ipad/isc/bean/ContaCategoria$ContasCategoriasTipos;

    move-object/from16 v18, v8

    new-instance v8, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct {v8}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, v8}, Lcom/br/ipad/isc/bean/ContaCategoria$ContasCategoriasTipos;-><init>(Lcom/br/ipad/isc/bean/ContaCategoria;)V

    .line 88
    new-instance v8, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa$ContasCategoriasConsumosFaixasTipos;

    move-object/from16 v19, v9

    new-instance v9, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    invoke-direct {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v8, v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa$ContasCategoriasConsumosFaixasTipos;-><init>(Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;)V

    .line 89
    new-instance v9, Lcom/br/ipad/isc/bean/ConsumoAnteriores$ConsumosAnterioresTipos;

    move-object/from16 v20, v8

    new-instance v8, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-direct {v8}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, v8}, Lcom/br/ipad/isc/bean/ConsumoAnteriores$ConsumosAnterioresTipos;-><init>(Lcom/br/ipad/isc/bean/ConsumoAnteriores;)V

    .line 90
    new-instance v8, Lcom/br/ipad/isc/bean/ContaDebito$ContasDebitosTipos;

    move-object/from16 v21, v9

    new-instance v9, Lcom/br/ipad/isc/bean/ContaDebito;

    invoke-direct {v9}, Lcom/br/ipad/isc/bean/ContaDebito;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v8, v9}, Lcom/br/ipad/isc/bean/ContaDebito$ContasDebitosTipos;-><init>(Lcom/br/ipad/isc/bean/ContaDebito;)V

    .line 91
    new-instance v9, Lcom/br/ipad/isc/bean/DebitoCobrado$DebitosCobradosTipos;

    move-object/from16 v22, v8

    new-instance v8, Lcom/br/ipad/isc/bean/DebitoCobrado;

    invoke-direct {v8}, Lcom/br/ipad/isc/bean/DebitoCobrado;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, v8}, Lcom/br/ipad/isc/bean/DebitoCobrado$DebitosCobradosTipos;-><init>(Lcom/br/ipad/isc/bean/DebitoCobrado;)V

    .line 92
    new-instance v8, Lcom/br/ipad/isc/bean/ConsumoTipo$ConsumosTiposTipos;

    move-object/from16 v23, v9

    new-instance v9, Lcom/br/ipad/isc/bean/ConsumoTipo;

    invoke-direct {v9}, Lcom/br/ipad/isc/bean/ConsumoTipo;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v8, v9}, Lcom/br/ipad/isc/bean/ConsumoTipo$ConsumosTiposTipos;-><init>(Lcom/br/ipad/isc/bean/ConsumoTipo;)V

    .line 93
    new-instance v9, Lcom/br/ipad/isc/bean/Foto$FotosTipos;

    move-object/from16 v24, v8

    new-instance v8, Lcom/br/ipad/isc/bean/Foto;

    invoke-direct {v8}, Lcom/br/ipad/isc/bean/Foto;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, v8}, Lcom/br/ipad/isc/bean/Foto$FotosTipos;-><init>(Lcom/br/ipad/isc/bean/Foto;)V

    .line 94
    new-instance v8, Lcom/br/ipad/isc/bean/LogFinalizacao$LogFinalizacoesTipos;

    move-object/from16 v25, v9

    new-instance v9, Lcom/br/ipad/isc/bean/LogFinalizacao;

    invoke-direct {v9}, Lcom/br/ipad/isc/bean/LogFinalizacao;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v8, v9}, Lcom/br/ipad/isc/bean/LogFinalizacao$LogFinalizacoesTipos;-><init>(Lcom/br/ipad/isc/bean/LogFinalizacao;)V

    .line 95
    new-instance v9, Lcom/br/ipad/isc/bean/ContaComunicado$ContaComunicadosTipos;

    move-object/from16 v26, v8

    new-instance v8, Lcom/br/ipad/isc/bean/ContaComunicado;

    invoke-direct {v8}, Lcom/br/ipad/isc/bean/ContaComunicado;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, v8}, Lcom/br/ipad/isc/bean/ContaComunicado$ContaComunicadosTipos;-><init>(Lcom/br/ipad/isc/bean/ContaComunicado;)V

    .line 96
    new-instance v8, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo$LigacaoAguaSituacaoConsumoTipoTipos;

    move-object/from16 v27, v9

    new-instance v9, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;

    invoke-direct {v9}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v8, v9}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo$LigacaoAguaSituacaoConsumoTipoTipos;-><init>(Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;)V

    .line 98
    new-instance v9, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;

    invoke-direct {v9}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;-><init>()V

    .line 99
    new-instance v28, Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-direct/range {v28 .. v28}, Lcom/br/ipad/isc/bean/SistemaParametros;-><init>()V

    .line 100
    new-instance v29, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct/range {v29 .. v29}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    .line 101
    new-instance v30, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct/range {v30 .. v30}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    .line 102
    new-instance v31, Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-direct/range {v31 .. v31}, Lcom/br/ipad/isc/bean/HidrometroInstalado;-><init>()V

    .line 103
    new-instance v32, Lcom/br/ipad/isc/bean/ConsumoHistorico;

    invoke-direct/range {v32 .. v32}, Lcom/br/ipad/isc/bean/ConsumoHistorico;-><init>()V

    .line 104
    new-instance v33, Lcom/br/ipad/isc/bean/ImovelRevisitar;

    invoke-direct/range {v33 .. v33}, Lcom/br/ipad/isc/bean/ImovelRevisitar;-><init>()V

    .line 105
    new-instance v34, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    invoke-direct/range {v34 .. v34}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;-><init>()V

    .line 106
    new-instance v35, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    invoke-direct/range {v35 .. v35}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;-><init>()V

    .line 107
    new-instance v36, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct/range {v36 .. v36}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    .line 108
    new-instance v37, Lcom/br/ipad/isc/bean/QualidadeAgua;

    invoke-direct/range {v37 .. v37}, Lcom/br/ipad/isc/bean/QualidadeAgua;-><init>()V

    .line 109
    new-instance v38, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    invoke-direct/range {v38 .. v38}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;-><init>()V

    .line 110
    new-instance v39, Lcom/br/ipad/isc/bean/CreditoRealizado;

    invoke-direct/range {v39 .. v39}, Lcom/br/ipad/isc/bean/CreditoRealizado;-><init>()V

    .line 111
    new-instance v40, Lcom/br/ipad/isc/bean/ContaImposto;

    invoke-direct/range {v40 .. v40}, Lcom/br/ipad/isc/bean/ContaImposto;-><init>()V

    .line 112
    new-instance v41, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    invoke-direct/range {v41 .. v41}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;-><init>()V

    .line 113
    new-instance v42, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;

    invoke-direct/range {v42 .. v42}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;-><init>()V

    .line 114
    new-instance v43, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct/range {v43 .. v43}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>()V

    .line 115
    new-instance v44, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    invoke-direct/range {v44 .. v44}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;-><init>()V

    .line 116
    new-instance v45, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-direct/range {v45 .. v45}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;-><init>()V

    .line 117
    new-instance v46, Lcom/br/ipad/isc/bean/ContaDebito;

    invoke-direct/range {v46 .. v46}, Lcom/br/ipad/isc/bean/ContaDebito;-><init>()V

    .line 118
    new-instance v47, Lcom/br/ipad/isc/bean/DebitoCobrado;

    invoke-direct/range {v47 .. v47}, Lcom/br/ipad/isc/bean/DebitoCobrado;-><init>()V

    .line 119
    new-instance v48, Lcom/br/ipad/isc/bean/ConsumoTipo;

    invoke-direct/range {v48 .. v48}, Lcom/br/ipad/isc/bean/ConsumoTipo;-><init>()V

    .line 120
    new-instance v49, Lcom/br/ipad/isc/bean/Foto;

    invoke-direct/range {v49 .. v49}, Lcom/br/ipad/isc/bean/Foto;-><init>()V

    .line 121
    new-instance v50, Lcom/br/ipad/isc/bean/LogFinalizacao;

    invoke-direct/range {v50 .. v50}, Lcom/br/ipad/isc/bean/LogFinalizacao;-><init>()V

    .line 122
    new-instance v51, Lcom/br/ipad/isc/bean/ContaComunicado;

    invoke-direct/range {v51 .. v51}, Lcom/br/ipad/isc/bean/ContaComunicado;-><init>()V

    .line 123
    new-instance v52, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;

    invoke-direct/range {v52 .. v52}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;-><init>()V

    move-object/from16 v53, v8

    const/16 v8, 0x26

    new-array v8, v8, [Ljava/lang/String;

    move-object/from16 v54, v9

    .line 128
    invoke-virtual/range {v36 .. v36}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getNomeTabela()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v55, v1

    invoke-virtual/range {v36 .. v36}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getColunas()[Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->getTipos()[Ljava/lang/String;

    move-result-object v10

    .line 128
    invoke-direct {v0, v9, v1, v10}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    aput-object v1, v8, v9

    .line 131
    invoke-virtual/range {v37 .. v37}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v37 .. v37}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getColunas()[Ljava/lang/String;

    move-result-object v9

    .line 132
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->getTipos()[Ljava/lang/String;

    move-result-object v10

    .line 131
    invoke-direct {v0, v1, v9, v10}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x1

    aput-object v1, v8, v9

    .line 134
    invoke-virtual/range {v38 .. v38}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v38 .. v38}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getColunas()[Ljava/lang/String;

    move-result-object v9

    .line 135
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo$FaturamentoSituacaoTipoTipos;->getTipos()[Ljava/lang/String;

    move-result-object v10

    .line 134
    invoke-direct {v0, v1, v9, v10}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x2

    aput-object v1, v8, v9

    .line 137
    invoke-virtual/range {v28 .. v28}, Lcom/br/ipad/isc/bean/SistemaParametros;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v28 .. v28}, Lcom/br/ipad/isc/bean/SistemaParametros;->getColunas()[Ljava/lang/String;

    move-result-object v9

    .line 138
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->getTipos()[Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-direct {v0, v1, v9, v2}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v8, v2

    .line 140
    invoke-virtual/range {v29 .. v29}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v29 .. v29}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade$ConsumoAnormalidadesTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v8, v2

    .line 143
    invoke-virtual/range {v30 .. v30}, Lcom/br/ipad/isc/bean/ImovelConta;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v30 .. v30}, Lcom/br/ipad/isc/bean/ImovelConta;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta$ImovelContasTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v8, v2

    .line 146
    invoke-virtual/range {v39 .. v39}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v39 .. v39}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/CreditoRealizado$CreditoRealizadoTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v8, v2

    .line 149
    invoke-virtual/range {v40 .. v40}, Lcom/br/ipad/isc/bean/ContaImposto;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v40 .. v40}, Lcom/br/ipad/isc/bean/ContaImposto;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ContaImposto$ContaImpostosTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v8, v2

    .line 152
    invoke-virtual/range {v31 .. v31}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v31 .. v31}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v8, v2

    .line 155
    invoke-virtual/range {v32 .. v32}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v32 .. v32}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v8, v2

    .line 158
    invoke-virtual/range {v33 .. v33}, Lcom/br/ipad/isc/bean/ImovelRevisitar;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v33 .. v33}, Lcom/br/ipad/isc/bean/ImovelRevisitar;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ImovelRevisitar$ImoveisRevisitarTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v8, v2

    .line 161
    invoke-virtual/range {v41 .. v41}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v41 .. v41}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria$ConsumosTarifasCategoriasTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 161
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v8, v2

    .line 164
    invoke-virtual/range {v42 .. v42}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v42 .. v42}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual/range {v55 .. v55}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa$ConsumosTarifasFaixasTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v8, v2

    .line 167
    invoke-virtual/range {v43 .. v43}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v43 .. v43}, Lcom/br/ipad/isc/bean/ContaCategoria;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual/range {v19 .. v19}, Lcom/br/ipad/isc/bean/ContaCategoria$ContasCategoriasTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v8, v2

    .line 170
    invoke-virtual/range {v44 .. v44}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v44 .. v44}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual/range {v20 .. v20}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa$ContasCategoriasConsumosFaixasTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v8, v2

    .line 173
    invoke-virtual/range {v45 .. v45}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v45 .. v45}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual/range {v21 .. v21}, Lcom/br/ipad/isc/bean/ConsumoAnteriores$ConsumosAnterioresTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v8, v2

    .line 176
    invoke-virtual/range {v46 .. v46}, Lcom/br/ipad/isc/bean/ContaDebito;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v46 .. v46}, Lcom/br/ipad/isc/bean/ContaDebito;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-virtual/range {v22 .. v22}, Lcom/br/ipad/isc/bean/ContaDebito$ContasDebitosTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v8, v2

    .line 179
    invoke-virtual/range {v34 .. v34}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v34 .. v34}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria$CategoriasSubcategoriasTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v8, v2

    .line 182
    invoke-virtual/range {v47 .. v47}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v47 .. v47}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-virtual/range {v23 .. v23}, Lcom/br/ipad/isc/bean/DebitoCobrado$DebitosCobradosTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v8, v2

    .line 185
    invoke-virtual/range {v35 .. v35}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v35 .. v35}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v8, v2

    .line 188
    invoke-virtual/range {v48 .. v48}, Lcom/br/ipad/isc/bean/ConsumoTipo;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v48 .. v48}, Lcom/br/ipad/isc/bean/ConsumoTipo;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual/range {v24 .. v24}, Lcom/br/ipad/isc/bean/ConsumoTipo$ConsumosTiposTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v8, v2

    .line 191
    invoke-virtual/range {v49 .. v49}, Lcom/br/ipad/isc/bean/Foto;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v49 .. v49}, Lcom/br/ipad/isc/bean/Foto;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual/range {v25 .. v25}, Lcom/br/ipad/isc/bean/Foto$FotosTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v8, v2

    .line 194
    invoke-virtual/range {v54 .. v54}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v54 .. v54}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao$SequencialRotaMarcacoesTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v8, v2

    .line 197
    invoke-virtual/range {v50 .. v50}, Lcom/br/ipad/isc/bean/LogFinalizacao;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v50 .. v50}, Lcom/br/ipad/isc/bean/LogFinalizacao;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual/range {v26 .. v26}, Lcom/br/ipad/isc/bean/LogFinalizacao$LogFinalizacoesTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v8, v2

    .line 200
    invoke-virtual/range {v52 .. v52}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v52 .. v52}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual/range {v53 .. v53}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo$LigacaoAguaSituacaoConsumoTipoTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v8, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE UNIQUE INDEX consumo_tarifa_categoria_idx ON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    invoke-direct {v2}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;-><init>()V

    .line 204
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getNomeTabela()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "CSTF_ID"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CATG_ID"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "SCAT_ID"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "CSTF_DTVIGENCIA"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ");"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x19

    aput-object v1, v8, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CREATE UNIQUE INDEX consumo_tarifa_faixa_idx ON "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;

    invoke-direct {v7}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;-><init>()V

    .line 208
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getNomeTabela()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "CSTC_ID"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "CTFX_DTVIGENCIA"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "CTFX_NNCOSUMOFAIXAINICIO"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x1a

    aput-object v1, v8, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CREATE UNIQUE INDEX categoria_subcategoria_idx ON "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    invoke-direct {v7}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;-><init>()V

    .line 212
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getNomeTabela()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "IMOV_ID"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1b

    aput-object v1, v8, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE UNIQUE INDEX conta_categoria_idx ON "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>()V

    .line 216
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CASC_ID"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "LGTI_ID"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1c

    aput-object v1, v8, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE UNIQUE INDEX conta_catg_cons_fx_idx ON "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;-><init>()V

    .line 219
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CTCG_ID"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CCCF_NNCONSUMOINICIAL"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1d

    aput-object v1, v8, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE  INDEX consumo_anteriores_fx_idx ON "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;-><init>()V

    .line 222
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CSAT_ID"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1e

    aput-object v1, v8, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE INDEX consumo_historico_fx_idx ON "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/ConsumoHistorico;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;-><init>()V

    .line 224
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CSHI_ID"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1f

    aput-object v1, v8, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE UNIQUE INDEX qualidade_agua_fx_idx ON "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/QualidadeAgua;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/QualidadeAgua;-><init>()V

    .line 226
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "QLAG_ID"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "LOCA_ID"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "STCM_ID"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x20

    aput-object v1, v8, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE UNIQUE INDEX consumo_anormalidade_fx_idx ON "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    .line 228
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CSAN_ID"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x21

    aput-object v1, v8, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE UNIQUE INDEX hidrometro_instalado_fx_idx ON "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;-><init>()V

    .line 230
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "HIIN_ID"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x22

    aput-object v1, v8, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE UNIQUE INDEX leitura_anormalidade_fx_idx ON "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    .line 232
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "LTAN_ID"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x23

    aput-object v1, v8, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE UNIQUE INDEX imovel_conta_idx ON "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    .line 236
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "IMCT_NMINSCRICAO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v8, v2

    .line 239
    invoke-virtual/range {v51 .. v51}, Lcom/br/ipad/isc/bean/ContaComunicado;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v51 .. v51}, Lcom/br/ipad/isc/bean/ContaComunicado;->getColunas()[Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-virtual/range {v27 .. v27}, Lcom/br/ipad/isc/bean/ContaComunicado$ContaComunicadosTipos;->getTipos()[Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/repositorios/BDScript;->createTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v8, v2

    return-object v8
.end method

.method public obterScriptExcluirBanco()[Ljava/lang/String;
    .locals 5

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;

    invoke-direct {v3}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;-><init>()V

    .line 252
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->getNomeTabela()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/Foto;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/Foto;-><init>()V

    .line 253
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/Foto;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/ConsumoTipo;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ConsumoTipo;-><init>()V

    .line 254
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoTipo;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;-><init>()V

    .line 255
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/DebitoCobrado;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/DebitoCobrado;-><init>()V

    .line 256
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;-><init>()V

    .line 257
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/ContaDebito;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ContaDebito;-><init>()V

    .line 258
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ContaDebito;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;-><init>()V

    .line 259
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;-><init>()V

    .line 260
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>()V

    .line 261
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;-><init>()V

    .line 262
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;-><init>()V

    .line 263
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/ImovelRevisitar;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ImovelRevisitar;-><init>()V

    .line 264
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelRevisitar;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xc

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/ConsumoHistorico;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;-><init>()V

    .line 265
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;-><init>()V

    .line 266
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xe

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/ContaImposto;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ContaImposto;-><init>()V

    .line 267
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ContaImposto;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xf

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/CreditoRealizado;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/CreditoRealizado;-><init>()V

    .line 268
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    .line 269
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x11

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    .line 270
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x12

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/SistemaParametros;-><init>()V

    .line 271
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/SistemaParametros;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x13

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;-><init>()V

    .line 272
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x14

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/QualidadeAgua;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/QualidadeAgua;-><init>()V

    .line 273
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x15

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    .line 274
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x16

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/LogFinalizacao;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/LogFinalizacao;-><init>()V

    .line 275
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/LogFinalizacao;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x17

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/br/ipad/isc/bean/ContaComunicado;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ContaComunicado;-><init>()V

    .line 276
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ContaComunicado;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x18

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;

    invoke-direct {v2}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;-><init>()V

    .line 277
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->getNomeTabela()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    return-object v0
.end method
