.class public Lcom/br/ipad/isc/controladores/ControladorImovel;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorImovel.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorImovel;


# static fields
.field private static final MIN_IMOVEIS_POR_ENVIO:B = 0xat

.field private static final NEXT:B = 0x0t

.field private static final PREV:B = 0x1t

.field protected static context:Landroid/content/Context;

.field private static imovelSelecionado:Lcom/br/ipad/isc/bean/ImovelConta;

.field public static instancia:Lcom/br/ipad/isc/controladores/ControladorImovel;

.field private static qtdImoveis:I


# instance fields
.field private contadorEnvio:I

.field private contadorVisitados:I

.field private idImovelSelecionado:I

.field private indiceImovelCondomio:I

.field private qtdRegistros:I

.field private roteiroEstaInvertido:Z

.field private tipoMedicaoSelecionado:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorImovel;->imovelSelecionado:Lcom/br/ipad/isc/bean/ImovelConta;

    const/4 v0, 0x0

    .line 51
    sput v0, Lcom/br/ipad/isc/controladores/ControladorImovel;->qtdImoveis:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->qtdRegistros:I

    const/4 v1, 0x1

    .line 57
    iput v1, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->idImovelSelecionado:I

    .line 59
    iput v1, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->indiceImovelCondomio:I

    .line 71
    iput v0, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->contadorVisitados:I

    .line 94
    iput-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->roteiroEstaInvertido:Z

    .line 97
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIdImovelSelecionado()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIdImovelSelecionado()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIdImovelSelecionado()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->idImovelSelecionado:I

    :cond_0
    return-void
.end method

.method private andar(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 252
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v0

    .line 253
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIdImovelSelecionado()Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v2}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 261
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorTransmissaoOffline()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 262
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorTransmissaoOffline()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    :cond_0
    new-instance v1, Lcom/br/ipad/isc/background/BackGroundTaskEnviarImovelOnline;

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/background/BackGroundTaskEnviarImovelOnline;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 270
    invoke-virtual {v1}, Lcom/br/ipad/isc/background/BackGroundTaskEnviarImovelOnline;->start()V

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->getQtdImoveis()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 304
    :cond_2
    iget p1, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->idImovelSelecionado:I

    if-ne p1, v1, :cond_3

    .line 305
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->idImovelSelecionado:I

    goto :goto_0

    :cond_3
    sub-int/2addr p1, v1

    .line 307
    iput p1, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->idImovelSelecionado:I

    goto :goto_0

    .line 295
    :cond_4
    iget p1, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->idImovelSelecionado:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->idImovelSelecionado:I

    .line 297
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p1, v0, :cond_5

    .line 298
    iput v1, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->idImovelSelecionado:I

    .line 313
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorSistemaParametros()Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;

    move-result-object p1

    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->idImovelSelecionado:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->atualizarIdImovelSelecionadoSistemaParametros(Ljava/lang/Integer;)V

    .line 315
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object p1

    .line 316
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIdImovelSelecionado()Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v2}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    invoke-virtual {p1, v0, v2}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object p1

    check-cast p1, Lcom/br/ipad/isc/bean/ImovelConta;

    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorImovel;->imovelSelecionado:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 331
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcCondominio()Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 332
    iput v1, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->indiceImovelCondomio:I

    :cond_6
    const/high16 p1, -0x80000000

    return p1
.end method

.method private calcularValorFaturadoFaixa(ILjava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 6

    .line 1291
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    const-string v0, ""

    const/16 v1, 0xc9

    if-ge p1, v1, :cond_1

    .line 1298
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "10000"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/16 v3, 0xa

    if-gt p1, v3, :cond_0

    goto/16 :goto_0

    .line 1308
    :cond_0
    new-instance v3, Ljava/math/BigDecimal;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/math/BigDecimal;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 1309
    new-instance v4, Ljava/math/BigDecimal;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 1311
    new-instance v3, Ljava/math/BigDecimal;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 1313
    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 1315
    invoke-virtual {p2, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 1317
    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    goto :goto_0

    .line 1323
    :cond_1
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "11.2"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1325
    new-instance v2, Ljava/math/BigDecimal;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 1327
    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 1329
    invoke-virtual {p2, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method private calculoSimples(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;ILjava/util/Date;)V
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    move/from16 v0, p3

    .line 645
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    .line 647
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndcTarifaCatgoria()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 649
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v2

    .line 654
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v2

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v3

    .line 662
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    .line 663
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 665
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getTipoCalculoTarifa()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v10, 0x5

    const/4 v4, 0x0

    const/4 v11, 0x1

    const-string v12, ""

    if-ne v3, v10, :cond_9

    .line 670
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v8, v4

    move-object v15, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    .line 675
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getFatorEconomiaCategoria()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 676
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getFatorEconomiaCategoria()Ljava/lang/Integer;

    move-result-object v3

    .line 677
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    .line 679
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getFatorEconomiaCategoria()Ljava/lang/Integer;

    move-result-object v3

    .line 678
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v3

    .line 684
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    .line 686
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v5

    .line 688
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v10

    .line 683
    invoke-virtual {v3, v4, v5, v10}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->obterQuantidadeEconomias(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    .line 682
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    .line 691
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v3

    .line 690
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    move v10, v3

    if-eqz v1, :cond_2

    .line 700
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorConsumoTarifaCategoria()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 706
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v16

    .line 707
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoTarifa()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move v4, v1

    move v13, v6

    move-object/from16 v6, v16

    move/from16 v20, v7

    move/from16 v7, v18

    move-object/from16 v21, v8

    move-object/from16 v8, p4

    .line 701
    invoke-virtual/range {v3 .. v8}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->pesquisarDadosTarifaImovel(ZLjava/lang/String;Ljava/lang/String;ILjava/util/Date;)Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    move-result-object v3

    goto :goto_2

    :cond_2
    move v13, v6

    move/from16 v20, v7

    move-object/from16 v21, v8

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorConsumoTarifaCategoria()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 715
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 716
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoTarifa()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v4, v1

    move-object/from16 v8, p4

    .line 710
    invoke-virtual/range {v3 .. v8}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->pesquisarDadosTarifaImovel(ZLjava/lang/String;Ljava/lang/String;ILjava/util/Date;)Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    move-result-object v3

    if-nez v3, :cond_3

    .line 719
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorConsumoTarifaCategoria()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

    move-result-object v22

    const/16 v23, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 723
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 725
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v25

    .line 726
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoTarifa()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v27, p4

    .line 720
    invoke-virtual/range {v22 .. v27}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->pesquisarDadosTarifaImovel(ZLjava/lang/String;Ljava/lang/String;ILjava/util/Date;)Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    move-result-object v3

    :cond_3
    :goto_2
    if-ne v0, v11, :cond_4

    .line 736
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getValorTarifaMinimaCategoria()Ljava/math/BigDecimal;

    move-result-object v4

    goto :goto_3

    .line 738
    :cond_4
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getValorTarifaMinimaCategoriaEsgoto()Ljava/math/BigDecimal;

    move-result-object v4

    .line 740
    :goto_3
    new-instance v5, Ljava/math/BigDecimal;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 743
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoMinimoSubcategoria()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int v5, v5, v10

    if-nez v15, :cond_5

    .line 748
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdCategoria()Ljava/lang/Integer;

    move-result-object v3

    :goto_4
    move-object v15, v3

    move-object v8, v4

    move v6, v10

    goto :goto_5

    .line 752
    :cond_5
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getValorTarifaMinimaCategoria()Ljava/math/BigDecimal;

    move-result-object v6

    move-object/from16 v7, v21

    invoke-virtual {v7, v6}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v6

    if-gez v6, :cond_6

    .line 753
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdCategoria()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    :cond_6
    move-object v8, v7

    move v6, v13

    :goto_5
    move/from16 v3, v20

    add-int v7, v3, v5

    const/4 v10, 0x5

    goto/16 :goto_0

    :cond_7
    move v13, v6

    move v3, v7

    .line 760
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/2addr v4, v13

    if-le v13, v11, :cond_8

    .line 764
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v3

    rem-int/2addr v5, v13

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    .line 767
    :goto_6
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v3, :cond_a

    if-gtz v5, :cond_a

    .line 768
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rem-int v5, v3, v9

    goto :goto_7

    .line 772
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rem-int v5, v3, v9

    move-object v15, v4

    const/4 v4, 0x0

    .line 783
    :cond_a
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorContaCategoria()Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    move-result-object v3

    .line 784
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v6

    .line 783
    invoke-virtual {v3, v6, v0}, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->removerImovelContaCategoria(Ljava/lang/Integer;I)V

    .line 786
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v10, v4

    move v13, v5

    const/4 v3, 0x0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    .line 788
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_b

    .line 793
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v3, v9

    :cond_b
    move v7, v3

    .line 801
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getFatorEconomiaCategoria()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 802
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getFatorEconomiaCategoria()Ljava/lang/Integer;

    move-result-object v3

    .line 803
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_c

    .line 805
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getFatorEconomiaCategoria()Ljava/lang/Integer;

    move-result-object v3

    .line 804
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_9

    :cond_c
    if-eqz v1, :cond_d

    .line 808
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v3

    .line 810
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    .line 812
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v5

    .line 814
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v6

    .line 809
    invoke-virtual {v3, v4, v5, v6}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->obterQuantidadeEconomias(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    .line 808
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_9

    .line 817
    :cond_d
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v3

    .line 816
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_9
    move v6, v3

    if-eqz v1, :cond_e

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorConsumoTarifaCategoria()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 830
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 832
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v16

    .line 833
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoTarifa()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move v4, v1

    move/from16 v28, v6

    move-object/from16 v6, v16

    move/from16 v29, v7

    move/from16 v7, v18

    move-object/from16 v30, v8

    move-object/from16 v8, p4

    .line 827
    invoke-virtual/range {v3 .. v8}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->pesquisarDadosTarifaImovel(ZLjava/lang/String;Ljava/lang/String;ILjava/util/Date;)Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    move-result-object v3

    goto :goto_a

    :cond_e
    move/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v30, v8

    .line 835
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorConsumoTarifaCategoria()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 841
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 842
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoTarifa()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v4, v1

    move-object/from16 v8, p4

    .line 836
    invoke-virtual/range {v3 .. v8}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->pesquisarDadosTarifaImovel(ZLjava/lang/String;Ljava/lang/String;ILjava/util/Date;)Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    move-result-object v3

    if-nez v3, :cond_f

    .line 845
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorConsumoTarifaCategoria()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

    move-result-object v20

    const/16 v21, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 849
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 851
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v23

    .line 852
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoTarifa()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v25, p4

    .line 846
    invoke-virtual/range {v20 .. v25}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->pesquisarDadosTarifaImovel(ZLjava/lang/String;Ljava/lang/String;ILjava/util/Date;)Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    move-result-object v3

    :cond_f
    :goto_a
    move-object v8, v3

    .line 861
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getTipoCalculoTarifa()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_10

    .line 862
    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v8, v3}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setValorTarifaMinimaCategoria(Ljava/math/BigDecimal;)V

    .line 863
    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v8, v3}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setValorTarifaMinimaCategoriaEsgoto(Ljava/math/BigDecimal;)V

    const/16 v16, 0x0

    .line 864
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setConsumoMinimoSubcategoria(Ljava/lang/Integer;)V

    goto :goto_b

    :cond_10
    const/16 v16, 0x0

    :goto_b
    if-ne v0, v11, :cond_11

    .line 873
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getValorTarifaMinimaCategoria()Ljava/math/BigDecimal;

    move-result-object v3

    goto :goto_c

    .line 875
    :cond_11
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getValorTarifaMinimaCategoriaEsgoto()Ljava/math/BigDecimal;

    move-result-object v3

    :goto_c
    move-object v7, v3

    .line 877
    new-instance v3, Ljava/math/BigDecimal;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v28

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    .line 880
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoMinimoSubcategoria()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int v18, v3, v6

    .line 883
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoMinimoSubcategoria()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 890
    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    move-object/from16 v21, v2

    move/from16 v19, v10

    move v11, v13

    const/4 v2, 0x0

    const/16 v22, 0x0

    move-object v13, v3

    move/from16 v3, v29

    :goto_d
    if-ge v2, v6, :cond_37

    if-lez v11, :cond_16

    if-le v11, v9, :cond_12

    move v3, v11

    goto :goto_e

    :cond_12
    const/4 v3, 0x1

    .line 910
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getTipoCalculoTarifa()Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v23, v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v24, v9

    const/4 v9, 0x5

    if-ne v5, v9, :cond_15

    .line 913
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdCategoria()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    move/from16 v5, v29

    if-lt v5, v4, :cond_13

    add-int v17, v10, v3

    move/from16 v19, v17

    move/from16 v17, v5

    goto :goto_f

    :cond_13
    add-int v17, v5, v3

    move/from16 v19, v10

    :goto_f
    sub-int/2addr v11, v3

    goto :goto_11

    :cond_14
    move/from16 v5, v29

    if-ge v5, v4, :cond_17

    goto :goto_10

    :cond_15
    move/from16 v5, v29

    :goto_10
    add-int v17, v5, v3

    sub-int/2addr v11, v3

    move/from16 v19, v10

    :goto_11
    move/from16 v41, v17

    move/from16 v17, v11

    move/from16 v11, v41

    goto :goto_12

    :cond_16
    move-object/from16 v23, v5

    move/from16 v24, v9

    move/from16 v5, v29

    const/4 v9, 0x5

    :cond_17
    move/from16 v19, v10

    move/from16 v17, v11

    move v11, v5

    .line 936
    :goto_12
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoMinimoSubcategoria()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v3, v11, v3

    if-lez v3, :cond_18

    .line 941
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoMinimoSubcategoria()Ljava/lang/Integer;

    move-result-object v25

    .line 940
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    goto :goto_13

    .line 944
    :cond_18
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoMinimoSubcategoria()Ljava/lang/Integer;

    move-result-object v25

    .line 943
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v11, v9, :cond_19

    .line 946
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoMinimoSubcategoria()Ljava/lang/Integer;

    move-result-object v9

    .line 945
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v25

    goto :goto_13

    :cond_19
    move/from16 v25, v11

    :goto_13
    if-lez v19, :cond_1a

    move/from16 v9, v19

    goto :goto_15

    :cond_1a
    if-lez v3, :cond_1b

    :goto_14
    move v9, v3

    goto :goto_15

    .line 971
    :cond_1b
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoMinimoSubcategoria()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 973
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoMinimoSubcategoria()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v3, v11, v3

    goto :goto_14

    :cond_1c
    const/4 v9, 0x0

    :goto_15
    if-lez v9, :cond_36

    if-eqz v1, :cond_1d

    .line 984
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorConsumoTarifaFaixa()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;

    move-result-object v3

    .line 988
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v27

    .line 990
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v28

    .line 991
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoTarifa()Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move/from16 v31, v4

    move v4, v1

    move/from16 v32, v9

    move-object/from16 v9, v23

    move/from16 v23, v5

    move-object/from16 v5, v27

    move/from16 v27, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v7

    move/from16 v7, v29

    move-object/from16 v29, v8

    move-object/from16 v8, p4

    .line 985
    invoke-virtual/range {v3 .. v8}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;->selecionarFaixasCalculoValorFaturadoPorCodigo(ZLjava/lang/Integer;Ljava/lang/Integer;ILjava/util/Date;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_16

    :cond_1d
    move/from16 v31, v4

    move/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move/from16 v32, v9

    move-object/from16 v9, v23

    move/from16 v23, v5

    .line 994
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorConsumoTarifaFaixa()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;

    move-result-object v3

    .line 998
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v5

    .line 1000
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v6

    .line 1001
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoTarifa()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v4, v1

    move-object/from16 v8, p4

    .line 995
    invoke-virtual/range {v3 .. v8}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;->selecionarFaixasCalculoValorFaturadoPorCodigo(ZLjava/lang/Integer;Ljava/lang/Integer;ILjava/util/Date;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 1004
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1005
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorConsumoTarifaFaixa()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;

    move-result-object v33

    const/16 v34, 0x1

    .line 1009
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v35

    .line 1011
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v36

    .line 1012
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoTarifa()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move-object/from16 v38, p4

    .line 1006
    invoke-virtual/range {v33 .. v38}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;->selecionarFaixasCalculoValorFaturadoPorCodigo(ZLjava/lang/Integer;Ljava/lang/Integer;ILjava/util/Date;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1022
    :cond_1f
    :goto_16
    invoke-virtual/range {v29 .. v29}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoMinimoSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 1023
    invoke-virtual/range {v29 .. v29}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoMinimoSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    .line 1024
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_20

    .line 1026
    invoke-virtual/range {v29 .. v29}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoMinimoSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    .line 1025
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_17

    :cond_20
    const/4 v4, 0x0

    .line 1030
    :goto_17
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getTipoCalculoTarifa()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2b

    .line 1032
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;

    const/4 v5, 0x1

    if-ne v0, v5, :cond_21

    .line 1036
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getValorConsumoTarifa()Ljava/math/BigDecimal;

    move-result-object v5

    goto :goto_19

    .line 1038
    :cond_21
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getValorConsumoTarifaEsgoto()Ljava/math/BigDecimal;

    move-result-object v5

    .line 1041
    :goto_19
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoFaixaFim()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_28

    .line 1043
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoFaixaFim()Ljava/lang/Integer;

    move-result-object v6

    .line 1042
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v11, v6, :cond_28

    .line 1046
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v3

    .line 1045
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v6, p0

    .line 1049
    invoke-direct {v6, v11, v9, v5}, Lcom/br/ipad/isc/controladores/ControladorImovel;->calcularValorFaturadoFaixa(ILjava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    .line 1054
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoFaixaInicio()Ljava/lang/Integer;

    move-result-object v8

    .line 1053
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1056
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoFaixaFim()Ljava/lang/Integer;

    move-result-object v25

    .line 1055
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v39, v1

    .line 1058
    new-instance v1, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    .line 1059
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    .line 1060
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 1061
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    .line 1062
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getId()Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v32, v1

    move-object/from16 v34, v7

    move-object/from16 v37, v5

    invoke-direct/range {v32 .. v38}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;-><init>(Ljava/lang/Integer;Ljava/math/BigDecimal;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/math/BigDecimal;Ljava/lang/Integer;)V

    move-object/from16 v5, v30

    .line 1064
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1067
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1069
    :cond_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_27

    .line 1071
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    .line 1073
    invoke-virtual {v8, v1}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_22

    .line 1075
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 1077
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 1079
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    add-int v4, v4, v25

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setNumConsumo(Ljava/lang/Integer;)V

    goto :goto_1a

    .line 1082
    :cond_23
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setNumConsumo(Ljava/lang/Integer;)V

    .line 1086
    :cond_24
    :goto_1a
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 1088
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v4

    if-eqz v4, :cond_25

    .line 1092
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v4

    move/from16 v25, v3

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 1091
    invoke-virtual {v1, v3}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setValorFaturado(Ljava/math/BigDecimal;)V

    goto :goto_1b

    :cond_25
    move/from16 v25, v3

    .line 1096
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setValorFaturado(Ljava/math/BigDecimal;)V

    goto :goto_1b

    :cond_26
    move/from16 v25, v3

    .line 1100
    :goto_1b
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_27
    move/from16 v25, v3

    .line 1108
    :goto_1c
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_28
    move-object/from16 v6, p0

    move/from16 v39, v1

    move-object/from16 v5, v30

    move-object/from16 v30, v5

    move/from16 v1, v39

    goto/16 :goto_18

    :cond_29
    move-object/from16 v6, p0

    move/from16 v39, v1

    move-object/from16 v5, v30

    move-object/from16 v7, v28

    :cond_2a
    :goto_1d
    move/from16 v20, v10

    goto/16 :goto_24

    :cond_2b
    move-object/from16 v6, p0

    move/from16 v39, v1

    move-object/from16 v5, v30

    if-eqz v15, :cond_2d

    if-eqz v15, :cond_2c

    .line 1118
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v1

    .line 1117
    invoke-virtual {v15, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_1e

    :cond_2c
    move/from16 v20, v10

    goto/16 :goto_23

    :cond_2d
    :goto_1e
    move-object/from16 v7, v28

    move/from16 v1, v32

    const/4 v8, 0x0

    .line 1121
    :goto_1f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v8, v6, :cond_2a

    if-lez v1, :cond_2a

    .line 1122
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;

    move-object/from16 v30, v3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2e

    .line 1126
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getValorConsumoTarifa()Ljava/math/BigDecimal;

    move-result-object v20

    goto :goto_20

    .line 1128
    :cond_2e
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getValorConsumoTarifaEsgoto()Ljava/math/BigDecimal;

    move-result-object v20

    :goto_20
    move-object/from16 v3, v20

    .line 1132
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoFaixaFim()Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    sub-int v4, v20, v4

    if-ge v1, v4, :cond_2f

    move v4, v1

    .line 1140
    :cond_2f
    new-instance v0, Ljava/math/BigDecimal;

    move/from16 v20, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1143
    invoke-virtual {v7, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    add-int v25, v25, v4

    .line 1152
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoFaixaInicio()Ljava/lang/Integer;

    move-result-object v10

    .line 1151
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1155
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoFaixaFim()Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    sub-int/2addr v1, v4

    move/from16 v40, v1

    .line 1160
    new-instance v1, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    .line 1161
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    .line 1162
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 1163
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    .line 1164
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getId()Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v32, v1

    move-object/from16 v34, v0

    move-object/from16 v37, v3

    invoke-direct/range {v32 .. v38}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;-><init>(Ljava/lang/Integer;Ljava/math/BigDecimal;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/math/BigDecimal;Ljava/lang/Integer;)V

    .line 1166
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1169
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1171
    :cond_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1173
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    .line 1175
    invoke-virtual {v3, v1}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1177
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 1179
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 1181
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setNumConsumo(Ljava/lang/Integer;)V

    goto :goto_21

    .line 1184
    :cond_31
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setNumConsumo(Ljava/lang/Integer;)V

    .line 1188
    :cond_32
    :goto_21
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 1190
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1194
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1193
    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setValorFaturado(Ljava/math/BigDecimal;)V

    goto :goto_22

    .line 1198
    :cond_33
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setValorFaturado(Ljava/math/BigDecimal;)V

    .line 1202
    :cond_34
    :goto_22
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1210
    :cond_35
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoFaixaFim()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, p3

    move/from16 v10, v20

    move-object/from16 v3, v30

    move/from16 v1, v40

    goto/16 :goto_1f

    :cond_36
    move/from16 v39, v1

    move/from16 v31, v4

    move/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move/from16 v20, v10

    move-object/from16 v9, v23

    move/from16 v23, v5

    move-object/from16 v5, v30

    :goto_23
    move-object/from16 v7, v28

    .line 1220
    :goto_24
    invoke-virtual {v13, v7}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v13

    add-int v22, v22, v25

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p3

    move-object/from16 v30, v5

    move-object v5, v9

    move v3, v11

    move/from16 v11, v17

    move/from16 v10, v20

    move/from16 v9, v24

    move/from16 v6, v27

    move-object/from16 v7, v28

    move-object/from16 v8, v29

    move/from16 v4, v31

    move/from16 v1, v39

    move/from16 v29, v23

    goto/16 :goto_d

    :cond_37
    move/from16 v39, v1

    move v0, v3

    move/from16 v24, v9

    move-object v9, v5

    move-object/from16 v5, v30

    .line 1244
    new-instance v1, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct {v1}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>()V

    .line 1246
    invoke-virtual {v1, v14}, Lcom/br/ipad/isc/bean/ContaCategoria;->setCategoriaSubcategoria(Lcom/br/ipad/isc/bean/CategoriaSubcategoria;)V

    .line 1247
    invoke-virtual {v1, v13}, Lcom/br/ipad/isc/bean/ContaCategoria;->setValorFaturado(Ljava/math/BigDecimal;)V

    .line 1249
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/bean/ContaCategoria;->setNumConsumo(Ljava/lang/Integer;)V

    .line 1250
    invoke-virtual {v1, v9}, Lcom/br/ipad/isc/bean/ContaCategoria;->setValorTarifaMinima(Ljava/math/BigDecimal;)V

    .line 1252
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/bean/ContaCategoria;->setNumConsumoMinimo(Ljava/lang/Integer;)V

    .line 1253
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/bean/ContaCategoria;->setTipoLigacao(Ljava/lang/Integer;)V

    .line 1254
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoria;->getId()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 1255
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoria;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_38

    goto :goto_25

    .line 1261
    :cond_38
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    goto :goto_26

    .line 1256
    :cond_39
    :goto_25
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    move-result-wide v2

    .line 1258
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1259
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/bean/ContaCategoria;->setId(Ljava/lang/Integer;)V

    .line 1265
    :goto_26
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3a
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    .line 1266
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getContaCategoria()Lcom/br/ipad/isc/bean/ContaCategoria;

    move-result-object v4

    if-eqz v4, :cond_3a

    .line 1267
    invoke-virtual {v3, v1}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setContaCategoria(Lcom/br/ipad/isc/bean/ContaCategoria;)V

    .line 1268
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v4

    .line 1269
    invoke-virtual {v4, v3}, Lcom/br/ipad/isc/controladores/ControladorBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    goto :goto_27

    :cond_3b
    move v3, v0

    move v13, v11

    move/from16 v10, v19

    move-object/from16 v2, v21

    move/from16 v9, v24

    move/from16 v1, v39

    const/4 v11, 0x1

    move/from16 v0, p3

    goto/16 :goto_8

    :cond_3c
    return-void
.end method

.method public static getInstancia()Lcom/br/ipad/isc/controladores/ControladorImovel;
    .locals 1

    .line 136
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorImovel;->instancia:Lcom/br/ipad/isc/controladores/ControladorImovel;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorImovel;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorImovel;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorImovel;->instancia:Lcom/br/ipad/isc/controladores/ControladorImovel;

    .line 140
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorImovel;->instancia:Lcom/br/ipad/isc/controladores/ControladorImovel;

    return-object v0
.end method


# virtual methods
.method public andarConta(Ljava/lang/String;II)I
    .locals 0

    const/high16 p1, -0x80000000

    return p1
.end method

.method public anterior()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 232
    iget-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->roteiroEstaInvertido:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 233
    invoke-direct {p0, v0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->andar(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 235
    invoke-direct {p0, v0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->andar(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public calcularConsumoMinimoImovel(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/util/Date;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 397
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v0

    .line 398
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    .line 403
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 404
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ""

    .line 405
    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 407
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    .line 406
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 413
    :goto_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorConsumoTarifaCategoria()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

    move-result-object v5

    .line 414
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->buscarConsumosTarifasCategorias(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v5

    .line 416
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    .line 419
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getDataVigencia()Ljava/util/Date;

    move-result-object v8

    .line 418
    invoke-static {p2, v8}, Lcom/br/ipad/isc/util/Util;->compararData(Ljava/util/Date;Ljava/util/Date;)I

    move-result v8

    if-nez v8, :cond_2

    .line 420
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoTarifa()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 421
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoTarifa()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 422
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v8

    .line 423
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdCategoria()Ljava/lang/Integer;

    move-result-object v9

    .line 424
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 425
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdSubcategoria()Ljava/lang/Integer;

    move-result-object v8

    .line 426
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v4, v8, :cond_2

    .line 428
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoMinimoSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    .line 427
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 430
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v6

    .line 429
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    mul-int v4, v4, v6

    add-int/2addr v2, v4

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_0

    .line 438
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    .line 441
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getDataVigencia()Ljava/util/Date;

    move-result-object v6

    .line 440
    invoke-static {p2, v6}, Lcom/br/ipad/isc/util/Util;->compararData(Ljava/util/Date;Ljava/util/Date;)I

    move-result v6

    if-nez v6, :cond_4

    .line 442
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoTarifa()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 443
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoTarifa()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 444
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v6

    .line 445
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdCategoria()Ljava/lang/Integer;

    move-result-object v7

    .line 446
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 447
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdSubcategoria()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 448
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdSubcategoria()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_4

    .line 450
    :cond_5
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoMinimoSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    .line 449
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 452
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v3

    .line 451
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int v4, v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_0

    :cond_6
    return v2
.end method

.method public calcularValores(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 544
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/controladores/ControladorImovel;->deveAplicarCalculoSimples(Lcom/br/ipad/isc/bean/ImovelConta;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 545
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    .line 546
    aget-object v0, v0, v2

    check-cast v0, Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 548
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->calculoSimples(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;ILjava/util/Date;)V

    goto :goto_0

    .line 551
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/br/ipad/isc/controladores/ControladorImovel;->calculoProporcionalMaisUmaTarifa(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;I)V

    :goto_0
    const/4 p2, 0x2

    if-ne p3, p2, :cond_9

    .line 556
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v0

    .line 557
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    .line 558
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 559
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    .line 561
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorContaCategoria()Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    move-result-object v3

    .line 563
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getId()Ljava/lang/Integer;

    move-result-object v4

    .line 564
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 562
    invoke-virtual {v3, v4, v5}, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->buscarContaCategoriaPorCategoriaSubcategoriaId(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ContaCategoria;

    move-result-object v3

    if-nez v3, :cond_1

    .line 567
    new-instance v3, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct {v3}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>()V

    .line 570
    :cond_1
    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 571
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentCobrancaEsgoto()Ljava/math/BigDecimal;

    move-result-object v5

    new-instance v6, Ljava/math/BigDecimal;

    const-string v7, "100"

    invoke-direct {v6, v7}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x4

    invoke-virtual {v5, v6, p2, v7}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v5

    .line 574
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 576
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 577
    invoke-virtual {v4, p2, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    .line 581
    :cond_2
    sget-object v6, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 582
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 583
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    .line 584
    invoke-virtual {v6, p2, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v6

    :cond_3
    if-eqz v3, :cond_6

    .line 589
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 590
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorContaCategoriaConsumoFaixa()Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;

    move-result-object v8

    .line 591
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaCategoria;->getId()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;->buscarContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 593
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 594
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    .line 597
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 598
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v10

    .line 599
    invoke-virtual {v10, p2, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v10

    .line 600
    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setValorFaturado(Ljava/math/BigDecimal;)V

    .line 603
    :cond_4
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorTarifa()Ljava/math/BigDecimal;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 604
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorTarifa()Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v10

    .line 605
    invoke-virtual {v10, p2, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v10

    .line 606
    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setValorTarifa(Ljava/math/BigDecimal;)V

    .line 608
    :cond_5
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    goto :goto_2

    .line 616
    :cond_6
    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/bean/ContaCategoria;->setValorFaturado(Ljava/math/BigDecimal;)V

    .line 617
    invoke-virtual {v3, v6}, Lcom/br/ipad/isc/bean/ContaCategoria;->setValorTarifaMinima(Ljava/math/BigDecimal;)V

    .line 619
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/bean/ContaCategoria;->setTipoLigacao(Ljava/lang/Integer;)V

    .line 621
    invoke-virtual {v3, v2}, Lcom/br/ipad/isc/bean/ContaCategoria;->setCategoriaSubcategoria(Lcom/br/ipad/isc/bean/CategoriaSubcategoria;)V

    .line 622
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaCategoria;->getId()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 623
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaCategoria;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_3

    .line 627
    :cond_7
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    goto/16 :goto_1

    .line 624
    :cond_8
    :goto_3
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/controladores/ControladorBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method public calculoProporcionalMaisUmaTarifa(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;I)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 1404
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorConsumoTarifaCategoria()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

    move-result-object v0

    .line 1405
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->buscarConsumosTarifasCategorias(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1409
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v1

    .line 1410
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    .line 1411
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1410
    invoke-virtual {v1, v2, v4}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v1

    .line 1412
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v2

    .line 1413
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    .line 1414
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1413
    invoke-virtual {v2, v4, v6}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 1421
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 1424
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v1

    goto :goto_0

    .line 1428
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v1

    .line 1433
    :goto_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v1}, Lcom/br/ipad/isc/util/Util;->obterDiferencasDatasDias(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v6

    .line 1442
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v2

    .line 1443
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1444
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 1449
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_c

    .line 1451
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    .line 1454
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getDataVigencia()Ljava/util/Date;

    move-result-object v10

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    .line 1453
    invoke-direct {v11, v12, v13, v14, v10}, Lcom/br/ipad/isc/controladores/ControladorImovel;->calculoSimples(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;ILjava/util/Date;)V

    .line 1461
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v3

    if-eq v9, v10, :cond_2

    add-int/lit8 v10, v9, 0x1

    .line 1462
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    .line 1464
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getDataVigencia()Ljava/util/Date;

    move-result-object v10

    const/4 v15, -0x1

    .line 1463
    invoke-static {v10, v15}, Lcom/br/ipad/isc/util/Util;->adicionarNumeroDiasDeUmaData(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v10

    goto :goto_2

    .line 1466
    :cond_2
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    :goto_2
    if-nez v9, :cond_3

    .line 1479
    invoke-static {v10, v1}, Lcom/br/ipad/isc/util/Util;->obterDiferencasDatasDias(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v15

    goto :goto_3

    .line 1487
    :cond_3
    invoke-static {v10, v1}, Lcom/br/ipad/isc/util/Util;->obterDiferencasDatasDias(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v15

    const-wide/16 v17, 0x1

    add-long v15, v15, v17

    :goto_3
    move/from16 v18, v9

    move-wide v8, v15

    long-to-double v8, v8

    move-object/from16 v16, v4

    long-to-double v3, v6

    .line 1495
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v3

    const/4 v3, 0x4

    invoke-static {v8, v9, v3}, Lcom/br/ipad/isc/util/Util;->arredondar(DI)D

    move-result-wide v3

    const/4 v8, 0x0

    .line 1506
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_b

    .line 1508
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    .line 1515
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorContaCategoria()Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    move-result-object v9

    .line 1517
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 1516
    invoke-virtual {v9, v1, v15}, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->buscarContaCategoriaPorCategoriaSubcategoriaId(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ContaCategoria;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1519
    new-instance v1, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct {v1}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>()V

    .line 1522
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v8, :cond_5

    move-object/from16 v9, v16

    .line 1523
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/br/ipad/isc/bean/ContaCategoria;

    goto :goto_5

    :cond_5
    move-object/from16 v9, v16

    const/4 v15, 0x0

    :goto_5
    if-nez v15, :cond_6

    .line 1529
    new-instance v15, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct {v15}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>()V

    .line 1530
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoria;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/br/ipad/isc/bean/ContaCategoria;->setId(Ljava/lang/Integer;)V

    .line 1531
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoria;->getCategoriaSubcategoria()Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/br/ipad/isc/bean/ContaCategoria;->setCategoriaSubcategoria(Lcom/br/ipad/isc/bean/CategoriaSubcategoria;)V

    .line 1532
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/br/ipad/isc/bean/ContaCategoria;->setNumConsumo(Ljava/lang/Integer;)V

    .line 1533
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumoMinimo()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/br/ipad/isc/bean/ContaCategoria;->setNumConsumoMinimo(Ljava/lang/Integer;)V

    .line 1534
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoria;->getTipoLigacao()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/br/ipad/isc/bean/ContaCategoria;->setTipoLigacao(Ljava/lang/Integer;)V

    .line 1536
    new-instance v5, Ljava/math/BigDecimal;

    move-object/from16 v20, v0

    const-string v0, "0"

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Lcom/br/ipad/isc/bean/ContaCategoria;->setValorFaturado(Ljava/math/BigDecimal;)V

    .line 1537
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Lcom/br/ipad/isc/bean/ContaCategoria;->setValorTarifaMinima(Ljava/math/BigDecimal;)V

    .line 1538
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v15, v0}, Lcom/br/ipad/isc/bean/ContaCategoria;->setUltimaAlteracao(Ljava/util/Date;)V

    .line 1540
    invoke-virtual {v9, v8, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_6

    :cond_6
    move-object/from16 v20, v0

    .line 1542
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoria;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/br/ipad/isc/bean/ContaCategoria;->setId(Ljava/lang/Integer;)V

    .line 1543
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoria;->getCategoriaSubcategoria()Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/br/ipad/isc/bean/ContaCategoria;->setCategoriaSubcategoria(Lcom/br/ipad/isc/bean/CategoriaSubcategoria;)V

    :goto_6
    move-object v0, v15

    .line 1548
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v21

    move-wide/from16 v23, v6

    mul-double v5, v21, v3

    const/4 v7, 0x2

    .line 1547
    invoke-static {v5, v6, v7}, Lcom/br/ipad/isc/util/Util;->arredondar(DI)D

    move-result-wide v5

    .line 1553
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v15

    mul-double v11, v15, v3

    .line 1552
    invoke-static {v11, v12, v7}, Lcom/br/ipad/isc/util/Util;->arredondar(DI)D

    move-result-wide v11

    .line 1557
    new-instance v7, Ljava/math/BigDecimal;

    .line 1558
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v21

    add-double v5, v21, v5

    invoke-direct {v7, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1557
    invoke-virtual {v0, v7}, Lcom/br/ipad/isc/bean/ContaCategoria;->setValorFaturado(Ljava/math/BigDecimal;)V

    .line 1561
    new-instance v5, Ljava/math/BigDecimal;

    .line 1562
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    add-double/2addr v6, v11

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1561
    invoke-virtual {v0, v5}, Lcom/br/ipad/isc/bean/ContaCategoria;->setValorTarifaMinima(Ljava/math/BigDecimal;)V

    .line 1566
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ContaCategoria;->getId()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 1567
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ContaCategoria;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_7

    goto :goto_7

    .line 1573
    :cond_7
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    goto :goto_8

    .line 1568
    :cond_8
    :goto_7
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v5

    .line 1569
    invoke-virtual {v5, v0}, Lcom/br/ipad/isc/controladores/ControladorBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    move-result-wide v5

    .line 1570
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1571
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/br/ipad/isc/bean/ContaCategoria;->setId(Ljava/lang/Integer;)V

    .line 1579
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorContaCategoriaConsumoFaixa()Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;

    move-result-object v5

    .line 1581
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoria;->getId()Ljava/lang/Integer;

    move-result-object v1

    .line 1580
    invoke-virtual {v5, v1}, Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;->buscarContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_a

    const/4 v5, 0x0

    .line 1584
    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-gt v5, v6, :cond_a

    .line 1585
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    .line 1587
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v7

    .line 1588
    invoke-virtual {v7}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v11

    mul-double v11, v11, v3

    const/4 v7, 0x2

    .line 1587
    invoke-static {v11, v12, v7}, Lcom/br/ipad/isc/util/Util;->arredondar(DI)D

    move-result-wide v11

    .line 1590
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorTarifa()Ljava/math/BigDecimal;

    move-result-object v16

    .line 1591
    invoke-virtual/range {v16 .. v16}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v21

    move-object/from16 v19, v1

    move-object/from16 v16, v2

    mul-double v1, v21, v3

    .line 1590
    invoke-static {v1, v2, v7}, Lcom/br/ipad/isc/util/Util;->arredondar(DI)D

    move-result-wide v1

    .line 1593
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ContaCategoria;->getVlFaturadoAntFaixa()[D

    move-result-object v21

    .line 1594
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ContaCategoria;->getVlTarifaAntFaixa()[D

    move-result-object v22

    if-nez v18, :cond_9

    .line 1600
    new-instance v15, Ljava/math/BigDecimal;

    move-wide/from16 v25, v3

    invoke-static {v11, v12, v7}, Lcom/br/ipad/isc/util/Util;->arredondar(DI)D

    move-result-wide v3

    invoke-direct {v15, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v6, v15}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setValorFaturado(Ljava/math/BigDecimal;)V

    .line 1601
    new-instance v3, Ljava/math/BigDecimal;

    invoke-static {v1, v2, v7}, Lcom/br/ipad/isc/util/Util;->arredondar(DI)D

    move-result-wide v13

    invoke-direct {v3, v13, v14}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v6, v3}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setValorTarifa(Ljava/math/BigDecimal;)V

    .line 1603
    invoke-static {v11, v12, v7}, Lcom/br/ipad/isc/util/Util;->arredondar(DI)D

    move-result-wide v3

    aput-wide v3, v21, v5

    .line 1604
    invoke-static {v1, v2, v7}, Lcom/br/ipad/isc/util/Util;->arredondar(DI)D

    move-result-wide v1

    aput-wide v1, v22, v5

    goto :goto_a

    :cond_9
    move-wide/from16 v25, v3

    .line 1607
    new-instance v3, Ljava/math/BigDecimal;

    aget-wide v13, v21, v5

    add-double/2addr v13, v11

    invoke-static {v13, v14, v7}, Lcom/br/ipad/isc/util/Util;->arredondar(DI)D

    move-result-wide v11

    invoke-direct {v3, v11, v12}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v6, v3}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setValorFaturado(Ljava/math/BigDecimal;)V

    .line 1608
    new-instance v3, Ljava/math/BigDecimal;

    aget-wide v11, v22, v5

    add-double/2addr v11, v1

    invoke-static {v11, v12, v7}, Lcom/br/ipad/isc/util/Util;->arredondar(DI)D

    move-result-wide v1

    invoke-direct {v3, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v6, v3}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setValorTarifa(Ljava/math/BigDecimal;)V

    .line 1614
    :goto_a
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v2, v16

    move-object/from16 v1, v19

    move-wide/from16 v3, v25

    goto/16 :goto_9

    :cond_a
    move-object/from16 v16, v2

    move-wide/from16 v25, v3

    const/4 v7, 0x2

    const/4 v0, 0x1

    .line 1657
    invoke-static {v10, v0}, Lcom/br/ipad/isc/util/Util;->adicionarNumeroDiasDeUmaData(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v2, v16

    move-object/from16 v0, v20

    move-wide/from16 v6, v23

    move-wide/from16 v3, v25

    const/4 v5, 0x2

    move-object/from16 v16, v9

    goto/16 :goto_4

    :cond_b
    move-object/from16 v20, v0

    move-wide/from16 v23, v6

    move-object/from16 v9, v16

    const/4 v0, 0x1

    const/4 v7, 0x2

    move-object/from16 v16, v2

    add-int/lit8 v2, v18, 0x1

    move-object v4, v9

    move-object/from16 v0, v20

    move-wide/from16 v6, v23

    const/4 v3, 0x1

    const/4 v5, 0x2

    move v9, v2

    move-object/from16 v2, v16

    goto/16 :goto_1

    :cond_c
    return-void
.end method

.method public carregarImovelSelecionado()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 1337
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    .line 1338
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v1

    .line 1339
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIdImovelSelecionado()Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v2}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 1341
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->setImovelSelecionado(Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 1343
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->idImovelSelecionado:I

    return-void
.end method

.method public deveAplicarCalculoSimples(Lcom/br/ipad/isc/bean/ImovelConta;)[Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 473
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 475
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorConsumoTarifaCategoria()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

    move-result-object v3

    .line 476
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->buscarConsumosTarifasCategorias(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v3

    .line 478
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 484
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v5

    .line 485
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 488
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v5

    .line 491
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    .line 496
    :cond_1
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 500
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getDataVigencia()Ljava/util/Date;

    move-result-object v5

    move-object v8, v5

    const/4 v6, 0x1

    :goto_1
    if-ge v6, v4, :cond_5

    .line 506
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getDataVigencia()Ljava/util/Date;

    move-result-object v9

    .line 508
    invoke-static {v5, v9}, Lcom/br/ipad/isc/util/Util;->compararData(Ljava/util/Date;Ljava/util/Date;)I

    move-result v10

    if-ltz v10, :cond_2

    move-object v10, v5

    goto :goto_2

    :cond_2
    move-object v10, v9

    .line 518
    :goto_2
    invoke-static {v5, v9}, Lcom/br/ipad/isc/util/Util;->compararData(Ljava/util/Date;Ljava/util/Date;)I

    move-result v9

    if-eqz v9, :cond_4

    .line 522
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-static {v10, v9}, Lcom/br/ipad/isc/util/Util;->compararData(Ljava/util/Date;Ljava/util/Date;)I

    move-result v9

    if-gez v9, :cond_3

    .line 523
    invoke-static {p1, v10}, Lcom/br/ipad/isc/util/Util;->compararData(Ljava/util/Date;Ljava/util/Date;)I

    move-result v9

    if-gez v9, :cond_3

    .line 524
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    .line 527
    :cond_3
    invoke-static {p1, v10}, Lcom/br/ipad/isc/util/Util;->compararData(Ljava/util/Date;Ljava/util/Date;)I

    move-result v9

    if-ltz v9, :cond_4

    move-object v8, v10

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    aput-object v2, v1, v0

    aput-object v8, v1, v7

    return-object v1
.end method

.method public deveTentarEnviar()Z
    .locals 3

    .line 150
    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->contadorEnvio:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 152
    iput v1, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->contadorEnvio:I

    :cond_1
    return v0
.end method

.method public getContadorVisitados()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->contadorVisitados:I

    return v0
.end method

.method public getImovelSelecionado()Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1

    .line 116
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorImovel;->imovelSelecionado:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object v0
.end method

.method public getIndiceAtual()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->idImovelSelecionado:I

    return v0
.end method

.method public getIndiceAtualImovelCondominio()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->indiceImovelCondomio:I

    return v0
.end method

.method public getQtdRegistros()I
    .locals 1

    .line 1351
    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->qtdRegistros:I

    return v0
.end method

.method public getQuantidadeImoveis()I
    .locals 1

    .line 1347
    sget v0, Lcom/br/ipad/isc/controladores/ControladorImovel;->qtdImoveis:I

    return v0
.end method

.method public getTipoMedicaoSelecionado()I
    .locals 1

    .line 348
    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->tipoMedicaoSelecionado:I

    return v0
.end method

.method public inverterRoteiro()V
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->roteiroEstaInvertido:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->roteiroEstaInvertido:Z

    return-void
.end method

.method public poco(Ljava/lang/String;II)I
    .locals 0

    const/high16 p1, -0x80000000

    return p1
.end method

.method public proximo()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 214
    iget-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->roteiroEstaInvertido:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 215
    invoke-direct {p0, v0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->andar(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, v0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->andar(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public proximoNaoLido()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 1360
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v0

    .line 1361
    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->getIdsNaoLidos()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1363
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1364
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v1

    const/4 v2, 0x0

    .line 1365
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v2, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v2}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ImovelConta;

    if-eqz v0, :cond_0

    .line 1367
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/controladores/ControladorImovel;->setImovelSelecionado(Lcom/br/ipad/isc/bean/ImovelConta;)V

    :cond_0
    return-void
.end method

.method public roteiroEstaInvertido()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->roteiroEstaInvertido:Z

    return v0
.end method

.method public setContadorVisitados(I)V
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 168
    iput p1, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->contadorVisitados:I

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 87
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorImovel;->context:Landroid/content/Context;

    return-void
.end method

.method public setImovelSelecionado(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 1

    .line 120
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorImovel;->imovelSelecionado:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 121
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->idImovelSelecionado:I

    .line 123
    sget-object p1, Lcom/br/ipad/isc/controladores/ControladorImovel;->imovelSelecionado:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcCondominio()Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 124
    iput p1, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->indiceImovelCondomio:I

    :cond_0
    return-void
.end method

.method public setIndiceImovelCondomio(I)V
    .locals 0

    .line 339
    iput p1, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->indiceImovelCondomio:I

    return-void
.end method

.method public setQtdRegistros(I)V
    .locals 0

    .line 1355
    iput p1, p0, Lcom/br/ipad/isc/controladores/ControladorImovel;->qtdRegistros:I

    return-void
.end method
