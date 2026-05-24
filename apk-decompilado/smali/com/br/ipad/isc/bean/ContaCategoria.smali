.class public Lcom/br/ipad/isc/bean/ContaCategoria;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "ContaCategoria.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/ContaCategoria$ContasCategoriasTipos;,
        Lcom/br/ipad/isc/bean/ContaCategoria$ContasCategorias;
    }
.end annotation


# static fields
.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private categoriaSubcategoria:Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

.field private id:Ljava/lang/Integer;

.field private numConsumo:Ljava/lang/Integer;

.field private numConsumoMinimo:Ljava/lang/Integer;

.field private tipoLigacao:Ljava/lang/Integer;

.field private ultimaAlteracao:Ljava/util/Date;

.field private valorFaturado:Ljava/math/BigDecimal;

.field private valorTarifaMinima:Ljava/math/BigDecimal;

.field vlFaturadoAntFaixa:[D

.field vlTarifaAntFaixa:[D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CTCG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CASC_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "LGTI_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CTCG_VLFATURADO"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CTCG_NNCONSUMO"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CTCG_VLTARIFAMINIMA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CTCG_NNCONSUMOMIN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CTCG_TMULTIMAALTERACAO"

    aput-object v2, v0, v1

    .line 105
    sput-object v0, Lcom/br/ipad/isc/bean/ContaCategoria;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [D

    .line 33
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->vlFaturadoAntFaixa:[D

    new-array v0, v0, [D

    .line 34
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->vlTarifaAntFaixa:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [D

    .line 33
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->vlFaturadoAntFaixa:[D

    new-array v0, v0, [D

    .line 34
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->vlTarifaAntFaixa:[D

    .line 43
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->id:Ljava/lang/Integer;

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static getSerialversionuid()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public getCategoriaSubcategoria()Lcom/br/ipad/isc/bean/CategoriaSubcategoria;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->categoriaSubcategoria:Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    return-object v0
.end method

.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 110
    sget-object v0, Lcom/br/ipad/isc/bean/ContaCategoria;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "conta_categoria"

    return-object v0
.end method

.method public getNumConsumo()Ljava/lang/Integer;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->numConsumo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNumConsumoMinimo()Ljava/lang/Integer;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->numConsumoMinimo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTipoLigacao()Ljava/lang/Integer;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->tipoLigacao:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->ultimaAlteracao:Ljava/util/Date;

    return-object v0
.end method

.method public getValorFaturado()Ljava/math/BigDecimal;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->valorFaturado:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getValorTarifaMinima()Ljava/math/BigDecimal;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->valorTarifaMinima:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getVlFaturadoAntFaixa()[D
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->vlFaturadoAntFaixa:[D

    return-object v0
.end method

.method public getVlTarifaAntFaixa()[D
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->vlTarifaAntFaixa:[D

    return-object v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ContaCategoria;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "CTCG_ID"

    .line 171
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "CASC_ID"

    .line 172
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "CTCG_NNCONSUMO"

    .line 173
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "CTCG_VLFATURADO"

    .line 174
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "LGTI_ID"

    .line 175
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "CTCG_NNCONSUMOMIN"

    .line 176
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "CTCG_VLTARIFAMINIMA"

    .line 177
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "CTCG_TMULTIMAALTERACAO"

    .line 178
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 180
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_2

    move/from16 v16, v15

    .line 181
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v15

    .line 184
    :goto_0
    new-instance v15, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct {v15}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>()V

    .line 185
    invoke-static {v0, v3, v4}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v3

    .line 186
    new-instance v3, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;-><init>(Ljava/lang/Integer;)V

    .line 187
    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ContaCategoria;->setCategoriaSubcategoria(Lcom/br/ipad/isc/bean/CategoriaSubcategoria;)V

    goto :goto_1

    :cond_0
    move-object/from16 v18, v3

    move/from16 v20, v4

    .line 189
    :goto_1
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ContaCategoria;->setId(Ljava/lang/Integer;)V

    .line 190
    invoke-static {v0, v5, v6}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ContaCategoria;->setNumConsumo(Ljava/lang/Integer;)V

    .line 191
    invoke-static {v0, v11, v12}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ContaCategoria;->setNumConsumoMinimo(Ljava/lang/Integer;)V

    .line 192
    invoke-static {v0, v9, v10}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ContaCategoria;->setTipoLigacao(Ljava/lang/Integer;)V

    .line 193
    invoke-static {v0, v7, v8}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ContaCategoria;->setValorFaturado(Ljava/math/BigDecimal;)V

    .line 194
    invoke-static {v0, v13, v14}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ContaCategoria;->setValorTarifaMinima(Ljava/math/BigDecimal;)V

    move/from16 v3, v16

    .line 195
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/br/ipad/isc/bean/ContaCategoria;->setUltimaAlteracao(Ljava/lang/String;)V

    move-object/from16 v4, v17

    .line 197
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-nez v15, :cond_1

    move-object v15, v4

    goto :goto_2

    :cond_1
    move/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v3, v18

    move/from16 v4, v20

    goto :goto_0

    :cond_2
    const/4 v15, 0x0

    :goto_2
    return-object v15
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 148
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 149
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaCategoria;->getCategoriaSubcategoria()Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaCategoria;->getCategoriaSubcategoria()Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CASC_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CTCG_NNCONSUMO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumoMinimo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CTCG_NNCONSUMOMIN"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaCategoria;->getTipoLigacao()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LGTI_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTCG_VLFATURADO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTCG_VLTARIFAMINIMA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_2
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTCG_TMULTIMAALTERACAO"

    .line 162
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setCategoriaSubcategoria(Lcom/br/ipad/isc/bean/CategoriaSubcategoria;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->categoriaSubcategoria:Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setNumConsumo(Ljava/lang/Integer;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->numConsumo:Ljava/lang/Integer;

    return-void
.end method

.method public setNumConsumoMinimo(Ljava/lang/Integer;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->numConsumoMinimo:Ljava/lang/Integer;

    return-void
.end method

.method public setTipoLigacao(Ljava/lang/Integer;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->tipoLigacao:Ljava/lang/Integer;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/util/Date;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method

.method public setValorFaturado(Ljava/math/BigDecimal;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->valorFaturado:Ljava/math/BigDecimal;

    return-void
.end method

.method public setValorTarifaMinima(Ljava/math/BigDecimal;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->valorTarifaMinima:Ljava/math/BigDecimal;

    return-void
.end method

.method public setVlFaturadoAntFaixa([D)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->vlFaturadoAntFaixa:[D

    return-void
.end method

.method public setVlTarifaAntFaixa([D)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoria;->vlTarifaAntFaixa:[D

    return-void
.end method
