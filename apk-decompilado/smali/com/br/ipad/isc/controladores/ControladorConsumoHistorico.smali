.class public Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorConsumoHistorico.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorConsumoHistorico;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;


# instance fields
.field private repositorioConsumoHistorico:Lcom/br/ipad/isc/repositorios/RepositorioConsumoHistorico;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;
    .locals 2

    .line 39
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    .line 41
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoHistorico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioConsumoHistorico;

    move-result-object v1

    iput-object v1, v0, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->repositorioConsumoHistorico:Lcom/br/ipad/isc/repositorios/RepositorioConsumoHistorico;

    .line 44
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    return-object v0
.end method


# virtual methods
.method public ajustarConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;ILjava/lang/Integer;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    move-object v0, p2

    .line 72
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-lez v1, :cond_7

    .line 77
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v3

    .line 78
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 82
    div-int/2addr v1, v3

    .line 85
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->getControladorConsumoTarifaCategoria()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

    move-result-object v1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoTarifa()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->buscarConsumoTarifaCategoriaPorCodigo(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    .line 87
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getDataVigencia()Ljava/util/Date;

    move-result-object v4

    .line 93
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v5

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v5

    .line 95
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    .line 98
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 99
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 100
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 106
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    .line 108
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getDataVigencia()Ljava/util/Date;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/br/ipad/isc/util/Util;->compararData(Ljava/util/Date;Ljava/util/Date;)I

    move-result v10

    if-nez v10, :cond_2

    .line 109
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoTarifa()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoTarifa()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_2

    .line 110
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdCategoria()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdCategoria()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_2

    .line 111
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdSubcategoria()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdSubcategoria()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v7, v10, :cond_2

    .line 115
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 120
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoMinimoSubcategoria()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_0

    .line 133
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    .line 135
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getDataVigencia()Ljava/util/Date;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/br/ipad/isc/util/Util;->compararData(Ljava/util/Date;Ljava/util/Date;)I

    move-result v9

    if-nez v9, :cond_4

    .line 136
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoTarifa()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoTarifa()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v9, v10, :cond_4

    .line 137
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdCategoria()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v9, v10, :cond_4

    .line 138
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdSubcategoria()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdSubcategoria()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_4

    .line 144
    :cond_5
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 149
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoMinimoSubcategoria()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    goto/16 :goto_0

    .line 160
    :cond_6
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v1, p3

    mul-int v1, v1, p3

    .line 163
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v1

    goto :goto_3

    .line 166
    :cond_7
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int v3, v1, p3

    :goto_3
    if-eqz p4, :cond_a

    move/from16 v1, p5

    if-ne v1, v2, :cond_8

    .line 175
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v1

    .line 176
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 180
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 181
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v3

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamento(Ljava/lang/Integer;)V

    .line 184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamentoHelper(Ljava/lang/Integer;)V

    .line 185
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    goto :goto_4

    .line 190
    :cond_8
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v1

    .line 191
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 194
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 196
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v3

    .line 199
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamento(Ljava/lang/Integer;)V

    .line 200
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamentoHelper(Ljava/lang/Integer;)V

    .line 201
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 207
    :cond_9
    :goto_4
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v2, v4

    if-ne v1, v2, :cond_a

    .line 208
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    .line 213
    :cond_a
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    return-void
.end method

.method public ajusteMensalConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/HidrometroInstalado;ILcom/br/ipad/isc/bean/ConsumoHistorico;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 227
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v0

    .line 228
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v1

    .line 230
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v2

    .line 240
    invoke-static {v1, v0}, Lcom/br/ipad/isc/util/Util;->obterQuantidadeDiasEntreDuasDatas(Ljava/util/Date;Ljava/util/Date;)D

    move-result-wide v3

    double-to-int v1, v3

    if-lez v1, :cond_8

    .line 251
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDataAjusteLeitura()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 254
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDataAjusteLeitura()Ljava/util/Date;

    move-result-object v2

    .line 253
    invoke-static {v0, v2}, Lcom/br/ipad/isc/util/Util;->obterQuantidadeDiasEntreDuasDatasPositivo(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    goto :goto_0

    .line 259
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 262
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 265
    invoke-static {v3}, Lcom/br/ipad/isc/util/Util;->quantidadeDiasMes(Ljava/util/Calendar;)I

    move-result v0

    .line 268
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getQtdDiasAjusteConsumo()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 269
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getQtdDiasAjusteConsumo()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 276
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setQtdDiasAjustado(Ljava/lang/Integer;)V

    sub-int v2, v0, v1

    const/4 v3, -0x3

    if-lt v2, v3, :cond_2

    const/4 v3, 0x3

    if-le v2, v3, :cond_8

    .line 283
    :cond_2
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 286
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 287
    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4, v1, v2}, Lcom/br/ipad/isc/util/Util;->divideDepoisMultiplica(III)I

    move-result v2

    add-int/2addr v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne p3, v4, :cond_3

    .line 296
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object p3

    .line 297
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 296
    invoke-virtual {p3, p1, v2}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumDigitosLeituraHidrometro()Ljava/lang/Integer;

    move-result-object p1

    .line 296
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    if-ne p3, v5, :cond_4

    .line 300
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object p3

    .line 301
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 300
    invoke-virtual {p3, p1, v2}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p1

    .line 301
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumDigitosLeituraHidrometro()Ljava/lang/Integer;

    move-result-object p1

    .line 300
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_4
    :goto_1
    const/16 p1, 0xa

    .line 305
    invoke-static {p1, v2}, Lcom/br/ipad/isc/util/Util;->pow(II)I

    move-result p3

    .line 308
    invoke-static {p1, v2}, Lcom/br/ipad/isc/util/Util;->pow(II)I

    move-result p1

    sub-int/2addr p1, v4

    if-gez v3, :cond_5

    add-int/2addr v3, p3

    .line 312
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamento(Ljava/lang/Integer;)V

    .line 313
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamentoHelper(Ljava/lang/Integer;)V

    goto :goto_2

    :cond_5
    if-le v3, p1, :cond_6

    sub-int/2addr v3, p3

    .line 319
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamento(Ljava/lang/Integer;)V

    .line 320
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamentoHelper(Ljava/lang/Integer;)V

    goto :goto_2

    .line 324
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamento(Ljava/lang/Integer;)V

    .line 325
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamentoHelper(Ljava/lang/Integer;)V

    .line 330
    :cond_7
    :goto_2
    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v1, v0}, Lcom/br/ipad/isc/util/Util;->divideDepoisMultiplica(III)I

    move-result p1

    .line 333
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    :cond_8
    return-void
.end method

.method public buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->repositorioConsumoHistorico:Lcom/br/ipad/isc/repositorios/RepositorioConsumoHistorico;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 56
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public obterConsumoImoveisMicro(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->repositorioConsumoHistorico:Lcom/br/ipad/isc/repositorios/RepositorioConsumoHistorico;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoHistorico;->obterConsumoImoveisMicro(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 349
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 350
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public obterQuantidadeRegistroConsumoHistorico()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->repositorioConsumoHistorico:Lcom/br/ipad/isc/repositorios/RepositorioConsumoHistorico;

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoHistorico;->obterQuantidadeRegistroConsumoHistorico()Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 361
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v0, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v1, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 48
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->context:Landroid/content/Context;

    return-void
.end method
