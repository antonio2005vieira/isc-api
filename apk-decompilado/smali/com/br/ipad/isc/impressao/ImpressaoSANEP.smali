.class public Lcom/br/ipad/isc/impressao/ImpressaoSANEP;
.super Lcom/br/ipad/isc/impressao/Impressao;
.source "ImpressaoSANEP.java"


# instance fields
.field protected final alinhamentoConsumo:I

.field protected final alinhamentoDescricao1:I

.field protected final alinhamentoDescricao2:I

.field protected final alinhamentoDescricao3:I

.field protected final alinhamentoValor:I

.field final margemEntreLinhas:I

.field final margemX:I

.field final margemXMatricula:I

.field modeloImpressora:Z

.field totalEconomias:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/br/ipad/isc/impressao/Impressao;-><init>()V

    const/4 v0, 0x4

    .line 36
    iput v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->margemX:I

    const/16 v0, 0xf

    .line 37
    iput v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->margemEntreLinhas:I

    const/16 v1, 0x2f

    .line 38
    iput v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->margemXMatricula:I

    const/16 v1, 0x2b

    .line 39
    iput v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->alinhamentoConsumo:I

    const/16 v1, 0x3c

    .line 40
    iput v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->alinhamentoValor:I

    const/16 v1, 0xa

    .line 41
    iput v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->alinhamentoDescricao1:I

    .line 42
    iput v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->alinhamentoDescricao2:I

    const/16 v0, 0x14

    .line 43
    iput v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->alinhamentoDescricao3:I

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->totalEconomias:I

    return-void
.end method


# virtual methods
.method protected categoriasEconomiasNovo(Ljava/util/ArrayList;)Ljava/lang/StringBuilder;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/CategoriaSubcategoria;",
            ">;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    iget-boolean v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x10f

    goto :goto_0

    :cond_0
    const/16 v1, 0x127

    :goto_0
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 374
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_5

    .line 376
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    const-string v11, ""

    if-ne v2, v3, :cond_1

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    iget v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->totalEconomias:I

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->totalEconomias:I

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/16 v5, 0x136

    .line 380
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move v6, v1

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 383
    :cond_1
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    iget v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->totalEconomias:I

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->totalEconomias:I

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/16 v5, 0x1d9

    .line 387
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move v6, v1

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 390
    :cond_2
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 393
    iget v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->totalEconomias:I

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->totalEconomias:I

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/16 v5, 0x276

    .line 394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move v6, v1

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 397
    :cond_3
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 400
    iget v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->totalEconomias:I

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->totalEconomias:I

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/16 v5, 0x300

    .line 401
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move v6, v1

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_5
    return-object v0
.end method

.method protected comandoImpressao()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/br/ipad/isc/impressao/Impressao;->comandoImpressao()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected dividirLinha(Ljava/lang/String;I)Ljava/lang/StringBuilder;
    .locals 7

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1041
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    add-int/2addr v2, p2

    .line 1043
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-le v2, v3, :cond_0

    .line 1044
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v5, v4, v3}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinhaSeiko(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1046
    :cond_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v5, v4, v3}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinhaSeiko(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/2addr v1, p2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected formatarContaCabecalho(DLjava/lang/String;Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;
    .locals 11

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    iget-boolean v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x32

    const/16 v6, 0x32

    goto :goto_0

    :cond_0
    const/16 v1, 0x46

    const/16 v6, 0x46

    :goto_0
    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/16 v5, 0x2a3

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v6, 0x66

    const-string v7, " "

    .line 336
    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    const/16 v5, 0x32

    .line 339
    iget-boolean v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x6e

    const/16 v6, 0x6e

    goto :goto_1

    :cond_1
    const/16 v1, 0x82

    const/16 v6, 0x82

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->retornaDescricaoAbreviadaMesDoAnoMes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    .line 339
    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    const/4 v4, 0x1

    const/16 v5, 0x2d

    .line 342
    iget-boolean v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xb5

    const/16 v6, 0xb5

    goto :goto_2

    :cond_2
    const/16 v1, 0xc8

    const/16 v6, 0xc8

    :goto_2
    const-string v1, ""

    if-eqz p3, :cond_3

    move-object v7, p3

    goto :goto_3

    :cond_3
    move-object v7, v1

    :goto_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    const/4 v4, 0x2

    const/16 v5, 0x2f

    .line 344
    iget-boolean p3, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    if-eqz p3, :cond_4

    const/16 p3, 0xfa

    const/16 v6, 0xfa

    goto :goto_4

    :cond_4
    const/16 p3, 0x10e

    const/16 v6, 0x10e

    :goto_4
    const-wide/16 v7, 0x0

    cmpl-double p3, p1, v7

    if-eqz p3, :cond_5

    invoke-static {p1, p2}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_5
    const-string p1, " "

    :goto_5
    move-object v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/16 v5, 0xc8

    .line 346
    iget-boolean p1, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    const/16 p2, 0x88

    if-eqz p1, :cond_6

    const/16 p1, 0x73

    const/16 v6, 0x73

    goto :goto_6

    :cond_6
    const/16 v6, 0x88

    :goto_6
    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getNomeUsuario()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/16 v5, 0xc8

    .line 348
    iget-boolean p1, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    if-eqz p1, :cond_7

    const/16 v6, 0x88

    goto :goto_7

    :cond_7
    const/16 p2, 0x9d

    const/16 v6, 0x9d

    :goto_7
    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getEndereco()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x32

    const/16 v9, 0x14

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->dividirLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/16 v5, 0xc8

    const/16 v6, 0xce

    .line 350
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "INSCRICAO: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/br/ipad/isc/fachada/Fachada;->formatarInscricao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\t\tGRUPO: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getGrupoFaturamento()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v6, 0xec

    .line 352
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PARA ADES\u00c3O AO DEB.AUTOMATICO: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoDebitoAutomaticoFormatado()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataInicioRelacao()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 355
    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataInicioRelacao()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xa

    .line 356
    invoke-virtual {p1, v10, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 359
    :cond_8
    iget-object p1, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 360
    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1

    .line 361
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->categoriasEconomiasNovo(Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method protected formatarContaCanhoto(DLjava/lang/String;Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;
    .locals 24

    move-object/from16 v8, p0

    .line 276
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    iget-boolean v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    const/16 v10, 0x8fc

    const/16 v11, 0x8e8

    if-eqz v0, :cond_0

    const/16 v4, 0x8fc

    goto :goto_0

    :cond_0
    const/16 v4, 0x8e8

    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/16 v3, 0x3c

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0xf0

    .line 279
    iget-boolean v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    if-eqz v0, :cond_1

    const/16 v4, 0x8fc

    goto :goto_1

    :cond_1
    const/16 v4, 0x8e8

    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/16 v3, 0x37

    .line 290
    iget-boolean v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    const/16 v10, 0x942

    const/16 v11, 0x92e

    if-eqz v0, :cond_2

    const/16 v4, 0x942

    goto :goto_2

    :cond_2
    const/16 v4, 0x92e

    :goto_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/16 v3, 0xf0

    .line 291
    iget-boolean v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    if-eqz v0, :cond_3

    const/16 v4, 0x942

    goto :goto_3

    :cond_3
    const/16 v4, 0x92e

    :goto_3
    invoke-static/range {p1 .. p2}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual/range {p4 .. p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoAgencia()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p4 .. p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoAgencia()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/16 v3, 0xc8

    const/16 v4, 0x9b0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "D\u00c9BITO AUTOM\u00c1TICO"

    move-object/from16 v0, p0

    .line 323
    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 296
    :cond_5
    :goto_4
    invoke-static {}, Lcom/br/ipad/isc/impressao/CodigoDeBarras;->getInstancia()Lcom/br/ipad/isc/impressao/CodigoDeBarras;

    move-result-object v10

    const/4 v0, 0x3

    .line 297
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 298
    invoke-virtual/range {p4 .. p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual/range {p4 .. p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAnoSemBarra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 299
    invoke-virtual/range {p4 .. p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getDigitoVerificadorConta()Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide/from16 v12, p1

    .line 296
    invoke-virtual/range {v10 .. v23}, Lcom/br/ipad/isc/impressao/CodigoDeBarras;->obterRepresentacaoNumericaCodigoBarra(Ljava/lang/Integer;DLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 301
    new-instance v11, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0xb

    .line 302
    invoke-virtual {v10, v7, v12}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0xc

    .line 303
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x17

    .line 304
    invoke-virtual {v10, v13, v15}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x18

    .line 305
    invoke-virtual {v10, v15, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x23

    .line 306
    invoke-virtual {v10, v6, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x24

    .line 307
    invoke-virtual {v10, v5, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    .line 308
    invoke-virtual {v10, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    .line 309
    invoke-virtual {v10, v3, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 311
    iget-boolean v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x99

    const/16 v16, 0x99

    goto :goto_5

    :cond_6
    const/16 v0, 0x91

    const/16 v16, 0x91

    :goto_5
    const/16 v17, 0x77e

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    const/4 v13, 0x0

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x5a

    .line 313
    iget-boolean v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    const/16 v4, 0x992

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    invoke-virtual {v10, v13, v12}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    .line 317
    invoke-virtual {v10, v2, v15}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    const/16 v3, 0x18

    .line 318
    invoke-virtual {v10, v3, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    const/16 v3, 0x24

    .line 319
    invoke-virtual {v10, v3, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "B I2OF5 1 2 105 60 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9ab

    invoke-virtual {v8, v2}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->ajusteY(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    return-object v9
.end method

.method protected formatarDadosHidrometroLeitura(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p6

    move-object/from16 v0, p7

    .line 54
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "N\u00c3O MEDIDO"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v0, v9}, Lcom/br/ipad/isc/fachada/Fachada;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    iget-object v2, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v2, v0}, Lcom/br/ipad/isc/fachada/Fachada;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    move-object v14, v1

    if-eqz p4, :cond_4

    .line 69
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p4 .. p4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoTipoPorId(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoTipo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoTipo;->getDescricao()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 71
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoTipo;->getDescricao()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v12

    :goto_1
    if-eqz v9, :cond_3

    .line 73
    invoke-virtual/range {p6 .. p6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 74
    invoke-virtual/range {p6 .. p6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    move-object v15, v0

    goto :goto_2

    :cond_4
    move-object v15, v12

    :goto_2
    const/16 v16, 0x19f

    .line 86
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p8 .. p8}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoAgua(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v7, 0x0

    const/16 v1, 0xd

    if-le v0, v1, :cond_5

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0xaa

    .line 88
    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x19f

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move/from16 v4, v18

    move-object/from16 p5, v13

    const/4 v13, 0x0

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    move-object/from16 p5, v13

    const/4 v13, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0xaa

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v4, 0x19f

    move-object/from16 v0, p0

    .line 90
    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_3
    if-eqz p1, :cond_6

    .line 96
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x2b2

    const/16 v4, 0x175

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    .line 97
    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_6
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x22b

    .line 101
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 102
    invoke-virtual/range {p8 .. p8}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigEsgoto()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoEsgoto(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v4, v16

    .line 101
    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    invoke-virtual {v14, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_4

    .line 109
    :cond_7
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    const/4 v2, 0x1

    move-object/from16 v3, p8

    invoke-virtual {v1, v3, v2}, Lcom/br/ipad/isc/fachada/Fachada;->obterTombamento(Lcom/br/ipad/isc/bean/ImovelConta;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v14, v0

    :goto_4
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x2a

    .line 113
    iget-boolean v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x1bd

    const/16 v4, 0x1bd

    goto :goto_5

    :cond_8
    const/16 v0, 0x1d3

    const/16 v4, 0x1d3

    :goto_5
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x37

    .line 116
    iget-boolean v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    const/16 v14, 0x16b

    const/16 v16, 0x177

    if-eqz v0, :cond_9

    const/16 v4, 0x16b

    goto :goto_6

    :cond_9
    const/16 v4, 0x177

    :goto_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0xf5

    .line 119
    iget-boolean v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    if-eqz v0, :cond_a

    const/16 v4, 0x16b

    goto :goto_7

    :cond_a
    const/16 v4, 0x177

    :goto_7
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x1c2

    .line 122
    iget-boolean v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    if-eqz v0, :cond_b

    const/16 v4, 0x16b

    goto :goto_8

    :cond_b
    const/16 v4, 0x177

    :goto_8
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x14

    if-le v0, v5, :cond_c

    invoke-virtual {v15, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_9

    :cond_c
    move-object v5, v15

    :goto_9
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x55

    const/16 v4, 0x203

    if-eqz v9, :cond_d

    .line 125
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_a

    :cond_d
    move-object v5, v12

    :goto_a
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x127

    const/16 v4, 0x1cc

    if-eqz p4, :cond_e

    .line 128
    invoke-virtual/range {p4 .. p4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 129
    invoke-virtual/range {p4 .. p4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_b

    :cond_e
    move-object v5, v12

    :goto_b
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    .line 128
    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/16 v2, 0x122

    const/16 v3, 0x203

    if-eqz v9, :cond_f

    .line 132
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    :cond_f
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p1, p0

    move/from16 p2, v0

    move/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v12

    move/from16 p7, v4

    move/from16 p8, v5

    invoke-virtual/range {p1 .. p8}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object v10
.end method

.method protected formatarDadosQualidadeAgua(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;
    .locals 16

    move-object/from16 v8, p0

    .line 156
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdLocalidade()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdSetorComercial()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarQualidadeAguaPorLocalidadeSetorComercial(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/QualidadeAgua;

    move-result-object v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdLocalidade()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarQualidadeAguaPorLocalidade(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/QualidadeAgua;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 166
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    new-instance v1, Lcom/br/ipad/isc/bean/QualidadeAgua;

    invoke-direct {v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;-><init>()V

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisar(Lcom/br/ipad/isc/bean/ObjetoBasico;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/QualidadeAgua;

    :cond_1
    move-object v10, v0

    const-string v11, ""

    .line 170
    iget-boolean v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x24e

    const/16 v12, 0x24e

    goto :goto_0

    :cond_2
    const/16 v0, 0x25c

    const/16 v12, 0x25c

    .line 171
    :goto_0
    iget-boolean v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x96

    const/16 v13, 0x96

    goto :goto_1

    :cond_3
    const/16 v0, 0x8c

    const/16 v13, 0x8c

    .line 172
    :goto_1
    iget-boolean v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x104

    const/16 v14, 0x104

    goto :goto_2

    :cond_4
    const/16 v0, 0xfa

    const/16 v14, 0xfa

    .line 173
    :goto_2
    iget-boolean v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->modeloImpressora:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x168

    const/16 v15, 0x168

    goto :goto_3

    :cond_5
    const/16 v0, 0x15e

    const/16 v15, 0x15e

    :goto_3
    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 176
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroTurbidez()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroTurbidez()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_4

    :cond_6
    move-object v5, v11

    :goto_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v13

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 177
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeTurbidezAnalisadas()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeTurbidezAnalisadas()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_5

    :cond_7
    move-object v5, v11

    :goto_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v14

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 178
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeTurbidezConforme()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeTurbidezConforme()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_6

    :cond_8
    move-object v5, v11

    :goto_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v15

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x14

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 182
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getCorPadrao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getCorPadrao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_7

    :cond_9
    move-object v5, v11

    :goto_7
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v13

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 183
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCorAnalisadas()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCorAnalisadas()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_8

    :cond_a
    move-object v5, v11

    :goto_8
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v14

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 184
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCorConforme()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCorConforme()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_9

    :cond_b
    move-object v5, v11

    :goto_9
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v15

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x14

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 188
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getCloroPadrao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getCloroPadrao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_a

    :cond_c
    move-object v5, v11

    :goto_a
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v13

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 189
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCloroAnalisadas()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCloroAnalisadas()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_b

    :cond_d
    move-object v5, v11

    :goto_b
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v14

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 190
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCloroConforme()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCloroConforme()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_c

    :cond_e
    move-object v5, v11

    :goto_c
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v15

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x14

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 194
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getColiformesTotaisPadrao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getColiformesTotaisPadrao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_d

    :cond_f
    move-object v5, v11

    :goto_d
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v13

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 195
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTotaisAnalisadas()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTotaisAnalisadas()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_e

    :cond_10
    move-object v5, v11

    :goto_e
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v14

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 196
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTotaisConforme()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTotaisConforme()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_f

    :cond_11
    move-object v5, v11

    :goto_f
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v15

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x14

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 200
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getColiformesTermoTolerantesPadrao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getColiformesTermoTolerantesPadrao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_10

    :cond_12
    move-object v5, v11

    :goto_10
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v13

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 201
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTermoTolerantesAnalisadas()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTermoTolerantesAnalisadas()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_11

    :cond_13
    move-object v5, v11

    :goto_11
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v14

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 202
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTermoTolerantesConforme()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTermoTolerantesConforme()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_12

    :cond_14
    move-object v5, v11

    :goto_12
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v15

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x14

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 206
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getFluorPadrao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getFluorPadrao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_13

    :cond_15
    move-object v5, v11

    :goto_13
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v13

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 207
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeFluorAnalisadas()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeFluorAnalisadas()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_14

    :cond_16
    move-object v5, v11

    :goto_14
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v14

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 208
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeFluorConforme()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeFluorConforme()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_15

    :cond_17
    move-object v5, v11

    :goto_15
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v15

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x14

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 212
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getPhPadrao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getPhPadrao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_16

    :cond_18
    move-object v5, v11

    :goto_16
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v13

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 213
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroPh()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroPh()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_17

    :cond_19
    move-object v5, v11

    :goto_17
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v14

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 214
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroPh()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroPh()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_18

    :cond_1a
    move-object v5, v11

    :goto_18
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v15

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object v9
.end method

.method protected formatarHistoricoConsumo(IILcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;
    .locals 18

    move-object/from16 v8, p0

    .line 220
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoAnterioresPorImovelTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v13, 0x2

    const-string v14, ""

    if-eqz v10, :cond_2

    .line 224
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 226
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x6

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 227
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_0
    invoke-static {v15}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 v6, 0x0

    .line 230
    :goto_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 231
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getTipoLigacao()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-ge v6, v11, :cond_1

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x1a4

    const/16 v4, 0x244

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnoMesReferencia()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    mul-int/lit8 v16, v6, 0x21

    move-object/from16 v0, p0

    move v12, v6

    move v6, v7

    const/16 v17, 0x6

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x1fe

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getConsumo()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/br/ipad/isc/util/Util;->adicionarZerosEsquerdaNumero(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    move v12, v6

    const/16 v17, 0x6

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x280

    const/16 v4, 0x1e1

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnoMesReferencia()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    mul-int/lit8 v16, v12, 0x21

    move-object/from16 v0, p0

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2da

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getConsumo()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/br/ipad/isc/util/Util;->adicionarZerosEsquerdaNumero(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v6, v12, 0x1

    const/4 v7, 0x6

    goto/16 :goto_1

    :cond_2
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x280

    const/16 v4, 0x2a8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "MEDIA:"

    move-object/from16 v0, p0

    .line 249
    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2cb

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/br/ipad/isc/util/Util;->adicionarZerosEsquerdaNumero(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 253
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoAnterioresPorImovelTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_6

    const/4 v15, 0x0

    .line 255
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const-string v7, "/"

    if-ge v15, v0, :cond_5

    .line 256
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getTipoLigacao()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v10, :cond_3

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x1a4

    const/16 v4, 0x258

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnoMesReferencia()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    mul-int/lit8 v16, v15, 0x21

    move-object/from16 v0, p0

    move-object v13, v7

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_3
    move-object v13, v7

    :goto_4
    if-ge v15, v11, :cond_4

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x221

    const/16 v4, 0x258

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getConsumo()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6, v5}, Lcom/br/ipad/isc/util/Util;->adicionarZerosEsquerdaNumero(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    mul-int/lit8 v7, v15, 0x21

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_4
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x2fd

    const/16 v4, 0x258

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getConsumo()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6, v5}, Lcom/br/ipad/isc/util/Util;->adicionarZerosEsquerdaNumero(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    mul-int/lit8 v7, v15, 0x21

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x2

    goto/16 :goto_3

    :cond_5
    move-object v13, v7

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x2ee

    const/16 v4, 0x2c6

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6, v5}, Lcom/br/ipad/isc/util/Util;->adicionarZerosEsquerdaNumero(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_6
    return-object v9
.end method

.method protected gerarLinhasCreditosRealizados(ILcom/br/ipad/isc/bean/ImovelConta;)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/br/ipad/isc/bean/ImovelConta;",
            ")",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 851
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 859
    iget-object v2, v0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCreditoRealizadoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move/from16 v8, p1

    if-ne v8, v7, :cond_5

    .line 876
    iget-object v8, v0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorCreditoTotal(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 877
    iget-object v10, v0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorContaSemCreditos(Ljava/lang/Integer;)D

    move-result-wide v10

    cmpl-double v12, v8, v4

    if-eqz v12, :cond_0

    cmpg-double v12, v10, v8

    if-gez v12, :cond_0

    sub-double/2addr v8, v10

    goto :goto_0

    :cond_0
    move-wide v8, v4

    :goto_0
    cmpl-double v12, v8, v4

    if-eqz v12, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 889
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_7

    new-array v13, v3, [Ljava/lang/StringBuilder;

    .line 891
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/br/ipad/isc/bean/CreditoRealizado;

    const-string v15, ""

    if-nez v8, :cond_2

    .line 897
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getDescricaoCreditoTipo()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v3, v13, v6

    .line 899
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getValor()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v3, v13, v7

    goto :goto_4

    :cond_2
    if-nez v12, :cond_4

    .line 905
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getValor()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    sub-double v18, v10, v3

    const-wide/16 v16, 0x0

    cmpg-double v5, v18, v16

    if-gez v5, :cond_3

    move-wide/from16 v18, v10

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    move-wide v10, v3

    .line 917
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getDescricaoCreditoTipo()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v3, v13, v6

    .line 919
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v3, v13, v7

    move-wide/from16 v10, v18

    goto :goto_5

    :cond_4
    :goto_4
    const-wide/16 v16, 0x0

    .line 923
    :goto_5
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v4, v16

    const/4 v3, 0x2

    goto/16 :goto_2

    :cond_5
    move-wide/from16 v16, v4

    new-array v3, v3, [Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    .line 929
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 931
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/br/ipad/isc/bean/CreditoRealizado;

    .line 932
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getValor()Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v9

    add-double/2addr v4, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 936
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "CREDITOS"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v2, v3, v6

    .line 938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v2, v3, v7

    .line 939
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v1
.end method

.method protected gerarLinhasDebitosCobrados(ILcom/br/ipad/isc/bean/ImovelConta;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/br/ipad/isc/bean/ImovelConta;",
            ")",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/StringBuilder;

    .line 735
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 737
    iget-object v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarDebitoCobradoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    const/4 v3, 0x2

    const-string v4, "0"

    const/16 v5, 0x9c4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne p1, v7, :cond_3

    const/4 p1, 0x0

    .line 743
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge p1, v8, :cond_7

    .line 745
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/br/ipad/isc/bean/DebitoCobrado;

    .line 747
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getCodigoDebito()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 748
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getCodigoDebito()Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 749
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getCodigoDebito()Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 750
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getIndicadorUso()Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 753
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getDescricaoDebitoTipo()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v9, v2, v6

    .line 755
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getVolumeDebito()Ljava/math/BigDecimal;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 756
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getVolumeDebito()Ljava/math/BigDecimal;

    move-result-object v9

    new-instance v10, Ljava/math/BigDecimal;

    invoke-direct {v10, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v9

    if-lez v9, :cond_1

    .line 757
    new-instance v9, Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getVolumeDebito()Ljava/math/BigDecimal;

    move-result-object v11

    invoke-static {v11}, Lcom/br/ipad/isc/util/Util;->formatarMoedaReal3Casas(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " M3"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v9, v2, v7

    .line 760
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getValor()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v9, v2, v3

    .line 762
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v1, [Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_3
    const-wide/16 v8, 0x0

    .line 768
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 769
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 770
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/br/ipad/isc/bean/DebitoCobrado;

    .line 772
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getCodigoDebito()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 773
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getCodigoDebito()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 774
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getCodigoDebito()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 775
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getIndicadorUso()Ljava/lang/Integer;

    move-result-object v4

    sget-object v10, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v4, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 777
    :cond_4
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getValor()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v10

    add-double/2addr v8, v10

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 783
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "DEBITOS"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object p1, v2, v6

    .line 785
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object p1, v2, v7

    .line 787
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object p1, v2, v3

    .line 788
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v0
.end method

.method protected gerarLinhasImpostosRetidos(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/br/ipad/isc/bean/ImovelConta;",
            ")",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 803
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContaImpostoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 807
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    .line 816
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 817
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/br/ipad/isc/bean/ContaImposto;

    .line 818
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ContaImposto;->getDescricaoImposto()Ljava/lang/String;

    move-result-object v7

    .line 819
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ContaImposto;->getPercentualAlicota()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v6

    .line 820
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "% "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    const-string v5, "DED. IMPOSTOS LEI FEDERAL N.9430 DE 27/12/1996"

    aput-object v5, v0, v3

    .line 830
    iget-object v5, p0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorImpostoTotal(Ljava/lang/Integer;)D

    move-result-wide v5

    const/4 p1, 0x2

    .line 833
    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, p1

    .line 835
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p1, v2, [Ljava/lang/String;

    aput-object v4, p1, v3

    .line 839
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method protected gerarLinhasTarifaAgua(Lcom/br/ipad/isc/bean/ConsumoHistorico;Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ImovelConta;Z)Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/br/ipad/isc/bean/ConsumoHistorico;",
            "Ljava/lang/Integer;",
            "Lcom/br/ipad/isc/bean/ImovelConta;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 415
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 419
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v10, :cond_17

    const/4 v0, 0x0

    const/4 v12, 0x0

    .line 424
    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_16

    .line 425
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    .line 427
    new-instance v1, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct {v1}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>()V

    .line 429
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 430
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getId()Ljava/lang/Integer;

    move-result-object v2

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContaCategoriaPorCategoriaSubcategoriaId(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ContaCategoria;

    move-result-object v15

    .line 432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v15, :cond_0

    .line 435
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 436
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ContaCategoria;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_0
    move-object v7, v1

    add-int/lit8 v16, v0, 0x1

    const-string v6, ""

    .line 440
    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v5, 0xf

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    const/4 v0, 0x4

    const-string v1, "AGUA"

    .line 443
    invoke-virtual {v8, v14, v0, v5, v1}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinhaSeiko(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x2f

    .line 445
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "AGUA"

    move-object/from16 v0, p0

    const/16 v14, 0xf

    move-object/from16 v5, v19

    move-object/from16 v21, v6

    move/from16 v6, v17

    move-object/from16 v22, v7

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    :goto_1
    move-object/from16 v21, v6

    move-object/from16 v22, v7

    const/16 v14, 0xf

    .line 452
    :goto_2
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getFatorEconomiaCategoria()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 453
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getFatorEconomiaCategoria()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    .line 454
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getFatorEconomiaCategoria()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    .line 457
    :cond_3
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    move v7, v0

    .line 460
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndcTarifaCatgoria()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " UNIDADE(S)"

    const-string v2, " "

    const/16 v3, 0x28

    if-eqz v0, :cond_7

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getDescricaoCategoria()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v3, :cond_5

    if-eqz p4, :cond_4

    .line 470
    invoke-virtual {v6, v11, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v14, v11, v0}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->setDetalhamentoContaDescricao(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v13, v6

    goto :goto_4

    :cond_4
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v4, 0x37

    .line 472
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v11, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    mul-int/lit8 v17, v16, 0x19

    move-object/from16 v0, p0

    move v3, v4

    move v4, v5

    move-object v5, v13

    move-object v13, v6

    move v6, v14

    move v14, v7

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move v11, v14

    goto :goto_5

    :cond_5
    move-object v13, v6

    if-eqz p4, :cond_6

    .line 477
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v14, v11, v0}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->setDetalhamentoContaDescricao(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v11, v7

    goto :goto_5

    :cond_6
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x37

    .line 479
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x0

    mul-int/lit8 v14, v16, 0x19

    move-object/from16 v0, p0

    move-object v5, v13

    move v11, v7

    move v7, v14

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_5
    move-object v6, v13

    goto/16 :goto_7

    :cond_7
    move v11, v7

    .line 485
    new-instance v14, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getDescricaoAbreviadaSubcategoria()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v3, :cond_9

    if-eqz p4, :cond_8

    const/4 v0, 0x0

    .line 490
    invoke-virtual {v14, v0, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v0, v2}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->setDetalhamentoContaDescricao(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v4, 0x37

    .line 493
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v14, v0, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    mul-int/lit8 v13, v16, 0x19

    move-object/from16 v0, p0

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v13

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_9
    if-eqz p4, :cond_a

    .line 498
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2, v0}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->setDetalhamentoContaDescricao(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_a
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x37

    .line 501
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x0

    mul-int/lit8 v7, v16, 0x19

    move-object/from16 v0, p0

    move-object v5, v14

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_6
    move-object v6, v14

    :goto_7
    const/4 v13, 0x0

    .line 506
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    if-eqz v15, :cond_b

    move-object/from16 v0, v21

    .line 507
    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 508
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumoMinimo()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_8

    .line 510
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 511
    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_c

    .line 512
    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_8

    .line 514
    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object v0

    :goto_8
    move-object v14, v0

    const/16 v5, 0x2b

    const-string v4, " M3"

    if-nez p1, :cond_e

    if-eqz v15, :cond_e

    .line 519
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_e

    add-int/lit8 v16, v16, 0x1

    .line 521
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARIFA MINIMA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    int-to-double v7, v11

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v7

    invoke-static {v1, v2}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " POR UNIDADE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_d

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 530
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/br/ipad/isc/util/Util;->completaStringComEspacoAEsquerda(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 532
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x3c

    invoke-static {v0, v5}, Lcom/br/ipad/isc/util/Util;->completaStringComEspacoAEsquerda(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    .line 530
    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->setDetalhamentoConta(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :cond_d
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x3f

    .line 535
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x0

    mul-int/lit8 v8, v16, 0x19

    move-object/from16 v0, p0

    move-object v11, v4

    move v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 536
    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x212

    .line 538
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2a8

    .line 540
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 541
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    .line 540
    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :cond_e
    move-object v11, v4

    if-eqz v15, :cond_13

    move-object/from16 v8, v22

    if-eqz v8, :cond_13

    .line 550
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    add-int/lit8 v16, v16, 0x1

    if-eqz p4, :cond_f

    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 562
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumoMinimo()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/br/ipad/isc/util/Util;->completaStringComEspacoAEsquerda(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 564
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x3c

    invoke-static {v0, v6}, Lcom/br/ipad/isc/util/Util;->completaStringComEspacoAEsquerda(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    const/16 v14, 0x2b

    move-object v5, v7

    .line 562
    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->setDetalhamentoConta(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_f
    const/16 v14, 0x2b

    :goto_9
    const/4 v15, 0x0

    .line 577
    :goto_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v15, v0, :cond_15

    add-int/lit8 v16, v16, 0x1

    .line 580
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    .line 582
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoFinal()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xf423f

    const-string v7, " M3 "

    const-string v2, " M3 - R$ "

    if-ne v0, v1, :cond_11

    .line 586
    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACIMA DE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoInicial()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v19, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorTarifa()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " POR M3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_10

    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 592
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 593
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/br/ipad/isc/util/Util;->completaStringComEspacoAEsquerda(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 594
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x3c

    invoke-static {v0, v6}, Lcom/br/ipad/isc/util/Util;->completaStringComEspacoAEsquerda(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    .line 592
    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->setDetalhamentoConta(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :cond_10
    const/16 v6, 0x3c

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x49

    .line 597
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v17, 0x0

    mul-int/lit8 v20, v16, 0x19

    move-object/from16 v0, p0

    const/16 v21, 0x3c

    move/from16 v6, v17

    move-object v13, v7

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x212

    .line 599
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2a8

    .line 603
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 604
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    .line 603
    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :cond_11
    move-object v13, v7

    const/16 v19, 0x1

    .line 614
    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoInicial()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " M3 A "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoFinal()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorTarifa()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " POR M3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_12

    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 620
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/br/ipad/isc/util/Util;->completaStringComEspacoAEsquerda(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 622
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x3c

    invoke-static {v0, v7}, Lcom/br/ipad/isc/util/Util;->completaStringComEspacoAEsquerda(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    .line 620
    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->setDetalhamentoConta(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_12
    const/16 v7, 0x3c

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x49

    .line 625
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x0

    mul-int/lit8 v20, v16, 0x19

    move-object/from16 v0, p0

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x212

    .line 627
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2a8

    .line 630
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_b
    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x0

    goto/16 :goto_a

    :cond_13
    const/16 v14, 0x2b

    if-eqz v15, :cond_15

    add-int/lit8 v16, v16, 0x1

    .line 640
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "CONSUMO DE AGUA"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_14

    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 643
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/br/ipad/isc/util/Util;->completaStringComEspacoAEsquerda(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 645
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x3c

    invoke-static {v0, v5}, Lcom/br/ipad/isc/util/Util;->completaStringComEspacoAEsquerda(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    .line 643
    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->setDetalhamentoConta(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_14
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x35

    .line 649
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x0

    mul-int/lit8 v8, v16, 0x19

    move-object/from16 v0, p0

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x212

    .line 650
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2a8

    .line 653
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 654
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    .line 653
    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_15
    :goto_c
    move/from16 v0, v16

    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x0

    move-object/from16 v8, p0

    goto/16 :goto_0

    :cond_16
    move v11, v0

    goto :goto_d

    :cond_17
    const/4 v11, 0x0

    .line 663
    :goto_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 664
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected gerarLinhasTarifaEsgoto(Lcom/br/ipad/isc/bean/ConsumoHistorico;Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ImovelConta;Z)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/br/ipad/isc/bean/ConsumoHistorico;",
            "Ljava/lang/Integer;",
            "Lcom/br/ipad/isc/bean/ImovelConta;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 1233
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1237
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1239
    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentCobrancaEsgoto()Ljava/math/BigDecimal;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v10, :cond_18

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1244
    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_17

    .line 1245
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    .line 1247
    new-instance v0, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>()V

    .line 1249
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 1250
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getId()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContaCategoriaPorCategoriaSubcategoriaId(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ContaCategoria;

    move-result-object v7

    .line 1252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_0

    .line 1255
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 1256
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ContaCategoria;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    move-object v6, v0

    const-string v5, ""

    .line 1259
    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    const/16 v0, 0xa

    const-string v1, "ESGOTO"

    .line 1262
    invoke-virtual {v8, v0, v12, v1}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->setDetalhamentoContaDescricao(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x2f

    .line 1265
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "ESGOTO"

    move-object/from16 v0, p0

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    move-object/from16 v20, v6

    move/from16 v6, v16

    move-object v12, v7

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    :goto_1
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object v12, v7

    .line 1271
    :goto_2
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getFatorEconomiaCategoria()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1272
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getFatorEconomiaCategoria()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    .line 1273
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getFatorEconomiaCategoria()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    .line 1276
    :cond_3
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    move v7, v0

    .line 1279
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1280
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndcTarifaCatgoria()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    .line 1281
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v12, :cond_b

    add-int/lit8 v14, v14, 0x1

    const-string v1, " UNIDADE(S)"

    const-string v2, " "

    const/16 v3, 0xf

    const/16 v4, 0x28

    if-eqz v0, :cond_7

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getDescricaoCategoria()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v4, :cond_5

    if-eqz p4, :cond_4

    const/4 v0, 0x0

    .line 1293
    invoke-virtual {v6, v0, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v3, v0, v1}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->setDetalhamentoContaDescricao(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v15, v6

    move-object/from16 v17, v10

    move v10, v7

    goto/16 :goto_4

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x37

    .line 1295
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v0, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    mul-int/lit8 v18, v14, 0x19

    move-object/from16 v0, p0

    move v4, v5

    move-object v5, v15

    move-object v15, v6

    move/from16 v6, v17

    move-object/from16 v17, v10

    move v10, v7

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_5
    move-object v15, v6

    move-object/from16 v17, v10

    move v10, v7

    if-eqz p4, :cond_6

    .line 1299
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v8, v3, v1, v0}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->setDetalhamentoContaDescricao(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_6
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x37

    .line 1301
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x0

    mul-int/lit8 v7, v14, 0x19

    move-object/from16 v0, p0

    move-object v5, v15

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_7
    move-object/from16 v17, v10

    move v10, v7

    .line 1306
    new-instance v7, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getDescricaoAbreviadaSubcategoria()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v4, :cond_9

    if-eqz p4, :cond_8

    const/4 v0, 0x0

    .line 1311
    invoke-virtual {v7, v0, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v3, v0, v1}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->setDetalhamentoContaDescricao(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v15, v7

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x37

    .line 1313
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v0, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    mul-int/lit8 v18, v14, 0x19

    move-object/from16 v0, p0

    move v4, v5

    move-object v5, v6

    move v6, v15

    move-object v15, v7

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    move-object v15, v7

    if-eqz p4, :cond_a

    .line 1317
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v8, v3, v1, v0}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->setDetalhamentoContaDescricao(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_a
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x37

    .line 1319
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x0

    mul-int/lit8 v7, v14, 0x19

    move-object/from16 v0, p0

    move-object v5, v15

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_4
    move-object v6, v15

    goto :goto_5

    :cond_b
    move-object v15, v6

    move-object/from16 v17, v10

    move v10, v7

    :goto_5
    const/4 v15, 0x0

    .line 1325
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    if-eqz v12, :cond_c

    move-object/from16 v0, v19

    .line 1326
    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1327
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumoMinimo()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6

    .line 1329
    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinEsgoto()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1330
    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinEsgoto()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_d

    .line 1331
    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinEsgoto()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6

    .line 1333
    :cond_d
    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object v0

    :goto_6
    const/16 v5, 0x2b

    const-string v4, " M3"

    if-nez p1, :cond_e

    if-eqz v12, :cond_e

    .line 1338
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v1, v2, :cond_e

    add-int/lit8 v14, v14, 0x1

    .line 1341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TARIFA MINIMA "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v18

    int-to-double v7, v10

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double v18, v18, v7

    invoke-static/range {v18 .. v19}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " POR UNIDADE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1343
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_16

    .line 1348
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x14

    const/4 v4, 0x0

    .line 1349
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1350
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/br/ipad/isc/util/Util;->completaStringComEspacoAEsquerda(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1351
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/br/ipad/isc/util/Util;->completaStringComEspacoAEsquerda(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    move-object v3, v6

    move-object v4, v5

    move-object v5, v7

    .line 1349
    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->setDetalhamentoConta(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_e
    if-eqz v12, :cond_14

    move-object/from16 v8, v20

    if-eqz v8, :cond_14

    .line 1370
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    add-int/lit8 v14, v14, 0x1

    if-eqz p4, :cond_f

    .line 1380
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumoMinimo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 1381
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/br/ipad/isc/util/Util;->completaStringComEspacoAEsquerda(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1383
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x3c

    invoke-static {v0, v7}, Lcom/br/ipad/isc/util/Util;->completaStringComEspacoAEsquerda(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object v12, v4

    move-object v4, v6

    const/16 v7, 0x2b

    move-object v5, v10

    .line 1381
    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->setDetalhamentoConta(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_f
    move-object v12, v4

    const/16 v7, 0x2b

    :goto_7
    const/4 v10, 0x0

    .line 1396
    :goto_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_16

    add-int/lit8 v14, v14, 0x1

    .line 1399
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    .line 1401
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoFinal()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xf423f

    const-string v6, " M3 "

    const-string v2, " M3 - R$ "

    if-ne v0, v1, :cond_12

    .line 1402
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorTarifa()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v11, :cond_10

    .line 1404
    invoke-virtual {v0, v11}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v1, Ljava/math/BigDecimal;

    const/16 v3, 0x64

    invoke-direct {v1, v3}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-static {v0, v1}, Lcom/br/ipad/isc/util/Util;->dividirArredondando(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1410
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACIMA DE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoInicial()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " POR M3"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_11

    .line 1414
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 1415
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/br/ipad/isc/util/Util;->completaStringComEspacoAEsquerda(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1417
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x3c

    invoke-static {v0, v6}, Lcom/br/ipad/isc/util/Util;->completaStringComEspacoAEsquerda(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    .line 1415
    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->setDetalhamentoConta(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v8

    const/16 v8, 0x2b

    goto/16 :goto_9

    :cond_11
    const/16 v16, 0x3c

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x49

    .line 1419
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v19, 0x0

    mul-int/lit8 v20, v14, 0x19

    move-object/from16 v0, p0

    move-object v15, v6

    move/from16 v6, v19

    move-object/from16 v19, v8

    const/16 v8, 0x2b

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x212

    .line 1421
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2a8

    .line 1425
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1426
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    .line 1425
    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_12
    move-object v15, v6

    move-object/from16 v19, v8

    const/16 v8, 0x2b

    .line 1432
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorTarifa()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1440
    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoInicial()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " M3 A "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoFinal()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " POR M3 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_13

    .line 1444
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 1445
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1446
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/br/ipad/isc/util/Util;->completaStringComEspacoAEsquerda(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1447
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x3c

    invoke-static {v0, v5}, Lcom/br/ipad/isc/util/Util;->completaStringComEspacoAEsquerda(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v5, v6

    .line 1445
    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->setDetalhamentoConta(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_13
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x49

    .line 1450
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x0

    mul-int/lit8 v20, v14, 0x19

    move-object/from16 v0, p0

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x212

    .line 1452
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2a8

    .line 1455
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, v19

    const/16 v7, 0x2b

    const/4 v15, 0x0

    goto/16 :goto_8

    :cond_14
    move-object v10, v4

    const/16 v8, 0x2b

    if-eqz v12, :cond_16

    add-int/lit8 v14, v14, 0x1

    .line 1464
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "CONSUMO DE ESGOTO"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_15

    .line 1467
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 1468
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1469
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/br/ipad/isc/util/Util;->completaStringComEspacoAEsquerda(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1470
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x3c

    invoke-static {v0, v5}, Lcom/br/ipad/isc/util/Util;->completaStringComEspacoAEsquerda(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    .line 1468
    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->setDetalhamentoConta(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_15
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x35

    .line 1472
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x0

    mul-int/lit8 v8, v14, 0x19

    move-object/from16 v0, p0

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x212

    .line 1473
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2a8

    .line 1476
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1477
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    .line 1476
    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_16
    :goto_a
    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, v17

    goto/16 :goto_0

    :cond_17
    move v12, v14

    goto :goto_b

    :cond_18
    const/4 v12, 0x0

    .line 1485
    :goto_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1486
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1487
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected gerarLinhasTarifaPoco(ZLcom/br/ipad/isc/bean/ImovelConta;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/br/ipad/isc/bean/ImovelConta;",
            ")",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/StringBuilder;

    .line 1146
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    iget-object v3, v0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    .line 1152
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x2

    const/16 v16, 0x1

    if-ge v7, v14, :cond_4

    .line 1154
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    .line 1156
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getId()Ljava/lang/Integer;

    move-result-object v14

    .line 1158
    new-instance v17, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>()V

    .line 1159
    new-instance v17, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>()V

    .line 1161
    iget-object v6, v0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 1162
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContaCategoriaPorCategoriaSubcategoriaId(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ContaCategoria;

    move-result-object v6

    .line 1164
    iget-object v15, v0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 1165
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v14, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContaCategoriaPorCategoriaSubcategoriaId(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ContaCategoria;

    move-result-object v4

    if-eqz v6, :cond_1

    .line 1168
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1169
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v14

    add-double/2addr v12, v14

    .line 1171
    :cond_0
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1172
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1173
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v9, v5

    :cond_1
    if-eqz v4, :cond_3

    .line 1178
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1179
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1180
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v8, v5

    .line 1182
    :cond_2
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1183
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    add-double/2addr v10, v4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    const-string v3, "ESGOTO "

    const-wide/16 v4, 0x0

    if-ne v8, v9, :cond_5

    cmpl-double v6, v10, v4

    if-eqz v6, :cond_5

    cmpl-double v6, v12, v4

    if-eqz v6, :cond_6

    .line 1192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v4, v2, v3

    .line 1194
    aget-object v4, v2, v3

    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentCobrancaEsgoto()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    aget-object v3, v2, v3

    const-string v4, " % DO VALOR DE \u00c1GUA "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v15

    .line 1201
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    cmpl-double v6, v12, v4

    if-eqz v6, :cond_6

    .line 1207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v4, v2, v3

    .line 1209
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v16

    .line 1211
    aget-object v3, v2, v16

    const-string v4, " M3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v15

    .line 1214
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    return-object v1
.end method

.method protected getDadosLigacaoSeiko(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/ConsumoHistorico;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;)Ljava/lang/StringBuilder;
    .locals 12

    move-object v0, p0

    .line 1058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    if-eqz p2, :cond_0

    .line 1063
    iget-object v3, v0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoTipoPorId(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoTipo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1064
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoTipo;->getDescricao()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1065
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoTipo;->getDescricao()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz p3, :cond_1

    .line 1070
    iget-object v4, v0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoTipoPorId(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoTipo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1071
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoTipo;->getDescricao()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1072
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoTipo;->getDescricao()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1077
    :cond_1
    iget-object v4, v0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoAgua(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    .line 1078
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x41

    const/16 v8, 0xd

    const/4 v9, 0x4

    const/16 v10, 0xf

    const/4 v11, 0x1

    if-le v5, v8, :cond_2

    .line 1079
    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/br/ipad/isc/util/Util;->adicionarEspacoDireita(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v11, v9, v7, v4}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinhaSeiko(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1081
    :cond_2
    invoke-static {v10, v4}, Lcom/br/ipad/isc/util/Util;->adicionarEspacoDireita(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v11, v9, v7, v4}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinhaSeiko(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v4, 0x13

    .line 1086
    iget-object v5, v0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigEsgoto()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoEsgoto(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/br/ipad/isc/util/Util;->adicionarEspacoDireita(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->asciiToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    iget-object v4, v0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 1089
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1091
    invoke-virtual {p0, v4}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->categoriasEconomiasNovo(Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->asciiToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NAO MEDIDO"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p6, :cond_3

    .line 1098
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-eqz p7, :cond_4

    .line 1101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1105
    :cond_4
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1106
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    .line 1109
    :cond_5
    iget-object v2, v0, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    move-object v4, p1

    invoke-virtual {v2, p1, v11}, Lcom/br/ipad/isc/fachada/Fachada;->obterTombamento(Lcom/br/ipad/isc/bean/ImovelConta;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v5

    :goto_3
    const/16 v2, 0x37

    .line 1113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/br/ipad/isc/util/Util;->adicionarEspacoDireita(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v11, v9, v2, v4}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->formarLinhaSeiko(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    .line 1116
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/br/ipad/isc/util/Util;->adicionarEspacoDireita(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->asciiToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/br/ipad/isc/util/Util;->adicionarEspacoDireita(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->asciiToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x14

    if-le v2, v4, :cond_6

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_6
    invoke-virtual {p0, v3}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->asciiToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1
.end method

.method protected retornaIndicadorDiscriminar(IICLcom/br/ipad/isc/bean/ImovelConta;)I
    .locals 6

    .line 673
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    .line 675
    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->obterQntDebitoCobradoPorImovelId(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    .line 676
    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/fachada/Fachada;->obterQntContaImpostoPorImovelId(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    .line 677
    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/br/ipad/isc/fachada/Fachada;->obterQntCreditoRealizadoPorImovelId(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p4

    const/16 v0, 0x63

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq p3, v0, :cond_3

    const/16 v0, 0x64

    if-eq p3, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    const/4 v5, 0x1

    :cond_1
    if-eqz v2, :cond_2

    add-int/lit8 v5, v5, 0x2

    :cond_2
    if-eqz v1, :cond_5

    sub-int/2addr p1, p2

    sub-int/2addr p1, v5

    .line 694
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-le p2, p1, :cond_5

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    const/4 v5, 0x2

    :cond_4
    if-eqz p4, :cond_5

    sub-int/2addr p1, p2

    sub-int/2addr p1, v5

    .line 710
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-le p2, p1, :cond_5

    :goto_0
    const/4 v3, 0x2

    :cond_5
    :goto_1
    return v3
.end method
