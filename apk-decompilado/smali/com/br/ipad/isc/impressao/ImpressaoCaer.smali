.class public Lcom/br/ipad/isc/impressao/ImpressaoCaer;
.super Lcom/br/ipad/isc/impressao/Impressao;
.source "ImpressaoCaer.java"


# instance fields
.field protected xMargemDireita:I

.field protected yPularLinha:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/br/ipad/isc/impressao/Impressao;-><init>()V

    const/16 v0, 0x19

    .line 18
    iput v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoCaer;->yPularLinha:I

    const/16 v0, 0x35

    .line 19
    iput v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoCaer;->xMargemDireita:I

    return-void
.end method


# virtual methods
.method protected gerarCategoriaSubcategoria(Ljava/lang/Integer;)V
    .locals 13

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 26
    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 28
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 30
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x1fe

    const/16 v4, 0xfa

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getDescricaoCategoria()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v12, v9, 0x53

    const/4 v7, 0x0

    move-object v0, p0

    move v6, v12

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/ImpressaoCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v1, 0x7

    const/16 v3, 0x208

    const/16 v4, 0x104

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/ImpressaoCaer;->appendTexto(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
