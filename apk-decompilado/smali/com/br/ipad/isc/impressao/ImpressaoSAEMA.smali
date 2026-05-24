.class public Lcom/br/ipad/isc/impressao/ImpressaoSAEMA;
.super Lcom/br/ipad/isc/impressao/Impressao;
.source "ImpressaoSAEMA.java"


# instance fields
.field protected xMargemDireita:I

.field protected yPularLinha:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/br/ipad/isc/impressao/Impressao;-><init>()V

    const/16 v0, 0x19

    .line 15
    iput v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoSAEMA;->yPularLinha:I

    const/16 v0, 0x35

    .line 16
    iput v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoSAEMA;->xMargemDireita:I

    return-void
.end method


# virtual methods
.method protected gerarCategoriaSubcategoria(Ljava/lang/Integer;)V
    .locals 9

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoSAEMA;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 23
    invoke-virtual {v1, p1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    .line 31
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 34
    :goto_0
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoSAEMA;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v1, p1}, Lcom/br/ipad/isc/fachada/Fachada;->obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v5, 0x109

    const-string v1, ""

    if-ne v4, v3, :cond_1

    const/4 v2, 0x7

    const/4 v3, 0x2

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v4, 0x14a

    const/16 v8, 0x109

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v8

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/ImpressaoSAEMA;->appendTexto(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne v4, v2, :cond_2

    const/16 v3, 0x1e0

    const/4 v2, 0x7

    const/4 v4, 0x3

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x109

    move-object v0, p0

    move v1, v2

    move v2, v4

    move v4, v8

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/ImpressaoSAEMA;->appendTexto(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    if-ne v4, v2, :cond_3

    const/16 v3, 0x30c

    const/4 v2, 0x7

    const/4 v4, 0x4

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x109

    move-object v0, p0

    move v1, v2

    move v2, v4

    move v4, v8

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/ImpressaoSAEMA;->appendTexto(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    if-ne v4, v2, :cond_4

    const/16 v3, 0x3a2

    const/4 v2, 0x7

    const/4 v4, 0x5

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, v2

    move v2, v4

    move v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/ImpressaoSAEMA;->appendTexto(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
