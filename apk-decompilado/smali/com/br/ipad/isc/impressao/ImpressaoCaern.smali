.class public Lcom/br/ipad/isc/impressao/ImpressaoCaern;
.super Lcom/br/ipad/isc/impressao/Impressao;
.source "ImpressaoCaern.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/br/ipad/isc/impressao/Impressao;-><init>()V

    return-void
.end method


# virtual methods
.method protected gerarHistorico(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;I)I
    .locals 8

    const/4 v1, 0x5

    const/16 v3, 0x64

    const v5, 0x3dcccccd    # 0.1f

    move-object v0, p0

    move v2, p3

    move v4, p3

    .line 63
    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/impressao/ImpressaoCaern;->appendLinha(IIIIF)V

    const/4 v0, 0x1

    add-int/2addr p3, v0

    const-string v2, "HISTORICO DE CONSUMO"

    .line 67
    invoke-virtual {p0, v1, p3, v2}, Lcom/br/ipad/isc/impressao/ImpressaoCaern;->appendTexto70(IILjava/lang/String;)V

    add-int/2addr p3, v0

    add-int/lit8 v2, p3, 0x3

    const-string v3, "REF"

    .line 71
    invoke-virtual {p0, v1, v2, v3}, Lcom/br/ipad/isc/impressao/ImpressaoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v4, 0x12

    const-string v5, "CONSUMO"

    .line 72
    invoke-virtual {p0, v4, v2, v5}, Lcom/br/ipad/isc/impressao/ImpressaoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v4, 0x21

    .line 75
    invoke-virtual {p0, v4, v2, v3}, Lcom/br/ipad/isc/impressao/ImpressaoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v4, 0x2e

    .line 76
    invoke-virtual {p0, v4, v2, v5}, Lcom/br/ipad/isc/impressao/ImpressaoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v4, 0x3d

    .line 79
    invoke-virtual {p0, v4, v2, v3}, Lcom/br/ipad/isc/impressao/ImpressaoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v3, 0x4a

    .line 80
    invoke-virtual {p0, v3, v2, v5}, Lcom/br/ipad/isc/impressao/ImpressaoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v3, 0x59

    const-string v4, "MEDIA"

    .line 82
    invoke-virtual {p0, v3, v2, v4}, Lcom/br/ipad/isc/impressao/ImpressaoCaern;->appendTexto70(IILjava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/br/ipad/isc/impressao/ImpressaoCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioLigacaoAgua()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/br/ipad/isc/impressao/ImpressaoCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioLigacaoAgua()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/br/ipad/isc/impressao/ImpressaoCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioEsgoto()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    add-int/lit8 p3, p3, 0x6

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, p3, v2}, Lcom/br/ipad/isc/impressao/ImpressaoCaern;->appendTexto70(IILjava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/br/ipad/isc/impressao/ImpressaoCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 103
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoAnterioresPorImovelId(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    move v4, p3

    .line 106
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 108
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    const/4 v6, 0x2

    if-eqz p1, :cond_1

    .line 111
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getTipoLigacao()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v0, :cond_2

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 114
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getTipoLigacao()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v6, :cond_2

    goto :goto_2

    .line 120
    :cond_2
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnoMesReferencia()Ljava/lang/Integer;

    move-result-object v7

    .line 119
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 118
    invoke-virtual {p0, v1, v4, v7}, Lcom/br/ipad/isc/impressao/ImpressaoCaern;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 v7, v1, 0xd

    .line 122
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getConsumo()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-virtual {p0, v7, v4, v5}, Lcom/br/ipad/isc/impressao/ImpressaoCaern;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 v5, v3, 0x1

    .line 124
    rem-int/2addr v5, v6

    if-nez v5, :cond_3

    add-int/lit8 v1, v1, 0x1c

    move v4, p3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return p3
.end method

.method protected final getNumeroEconomias(Ljava/util/ArrayList;)[I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/CategoriaSubcategoria;",
            ">;)[I"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 31
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 32
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    .line 34
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    if-eq v5, v0, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    aget v5, v1, v6

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v5, v4

    aput v5, v1, v6

    goto :goto_1

    .line 44
    :cond_1
    aget v5, v1, v7

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v5, v4

    aput v5, v1, v7

    goto :goto_1

    .line 40
    :cond_2
    aget v5, v1, v6

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v5, v4

    aput v5, v1, v6

    goto :goto_1

    .line 36
    :cond_3
    aget v5, v1, v2

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v5, v4

    aput v5, v1, v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method
