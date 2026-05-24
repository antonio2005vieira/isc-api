.class public Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "ConsumoTarifaCategoria.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria$ConsumosTarifasCategoriasTipos;,
        Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria$ConsumosTarifasCategorias;
    }
.end annotation


# static fields
.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private consumoMinimoSubcategoria:Ljava/lang/Integer;

.field private consumoTarifa:Ljava/lang/Integer;

.field private dataVigencia:Ljava/util/Date;

.field private id:Ljava/lang/Integer;

.field private idCategoria:Ljava/lang/Integer;

.field private idSubcategoria:Ljava/lang/Integer;

.field private ultimaAlteracao:Ljava/util/Date;

.field private valorTarifaMinimaCategoria:Ljava/math/BigDecimal;

.field private valorTarifaMinimaCategoriaEsgoto:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CSTC_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CSTF_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CSTF_DTVIGENCIA"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CATG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SCAT_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CSTF_NNCONSUMOMINIMO"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CSTF_VLTARIFAMINIMA"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CSTF_VLTARIFAMINIMAESGOTO"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CSTF_TMULTIMAALTERACAO"

    aput-object v2, v0, v1

    .line 106
    sput-object v0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->id:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 26
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->insertFromFile(Ljava/util/ArrayList;)V

    return-void
.end method

.method private insertFromFile(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 129
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setConsumoTarifa(Ljava/lang/Integer;)V

    :cond_0
    const/4 v0, 0x2

    .line 132
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->convertDateStrToDate1(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setDataVigencia(Ljava/util/Date;)V

    :cond_1
    const/4 v0, 0x3

    .line 136
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setIdCategoria(Ljava/lang/Integer;)V

    :cond_2
    const/4 v0, 0x4

    .line 139
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setIdSubcategoria(Ljava/lang/Integer;)V

    :cond_3
    const/4 v0, 0x5

    .line 142
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 143
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setConsumoMinimoSubcategoria(Ljava/lang/Integer;)V

    :cond_4
    const/4 v0, 0x6

    .line 145
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 146
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setValorTarifaMinimaCategoria(Ljava/math/BigDecimal;)V

    :cond_5
    const/4 v0, 0x7

    .line 149
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 150
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setValorTarifaMinimaCategoriaEsgoto(Ljava/math/BigDecimal;)V

    .line 153
    :cond_6
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setUltimaAlteracao(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 112
    sget-object v0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getConsumoMinimoSubcategoria()Ljava/lang/Integer;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->consumoMinimoSubcategoria:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConsumoTarifa()Ljava/lang/Integer;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->consumoTarifa:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDataVigencia()Ljava/util/Date;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->dataVigencia:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdCategoria()Ljava/lang/Integer;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->idCategoria:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdSubcategoria()Ljava/lang/Integer;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->idSubcategoria:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "consumo_tarifa_categoria"

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->ultimaAlteracao:Ljava/util/Date;

    return-object v0
.end method

.method public getValorTarifaMinimaCategoria()Ljava/math/BigDecimal;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->valorTarifaMinimaCategoria:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getValorTarifaMinimaCategoriaEsgoto()Ljava/math/BigDecimal;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->valorTarifaMinimaCategoriaEsgoto:Ljava/math/BigDecimal;

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
            "Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 207
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CSTC_ID"

    .line 208
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "CSTF_ID"

    .line 209
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "CSTF_NNCONSUMOMINIMO"

    .line 210
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "CSTF_DTVIGENCIA"

    .line 211
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "SCAT_ID"

    .line 212
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "CATG_ID"

    .line 213
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "CSTF_VLTARIFAMINIMA"

    .line 214
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "CSTF_VLTARIFAMINIMAESGOTO"

    .line 215
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v16, v14

    const-string v14, "CSTF_TMULTIMAALTERACAO"

    .line 216
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move/from16 v17, v14

    .line 218
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v14

    .line 221
    :goto_0
    new-instance v14, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    invoke-direct {v14}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;-><init>()V

    move/from16 v19, v15

    .line 223
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setId(Ljava/lang/Integer;)V

    .line 224
    invoke-static {v0, v3, v4}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setConsumoTarifa(Ljava/lang/Integer;)V

    .line 225
    invoke-static {v0, v5, v6}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setConsumoMinimoSubcategoria(Ljava/lang/Integer;)V

    .line 227
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/br/ipad/isc/util/Util;->convertStrToDataBusca(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setDataVigencia(Ljava/util/Date;)V

    .line 229
    invoke-static {v0, v10, v11}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setIdCategoria(Ljava/lang/Integer;)V

    .line 230
    invoke-static {v0, v8, v9}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setIdSubcategoria(Ljava/lang/Integer;)V

    .line 231
    invoke-static {v0, v12, v13}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setValorTarifaMinimaCategoria(Ljava/math/BigDecimal;)V

    move/from16 v15, v19

    move/from16 v19, v2

    move-object/from16 v20, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v20

    .line 232
    invoke-static {v0, v1, v15}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setValorTarifaMinimaCategoriaEsgoto(Ljava/math/BigDecimal;)V

    move/from16 v2, v17

    move-object/from16 v17, v1

    .line 233
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setUltimaAlteracao(Ljava/lang/String;)V

    move-object/from16 v1, v18

    .line 235
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_0

    move-object v14, v1

    goto :goto_1

    :cond_0
    move-object/from16 v18, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move/from16 v17, v2

    move/from16 v2, v19

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    :goto_1
    return-object v14
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 182
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 184
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoTarifa()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSTF_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getConsumoMinimoSubcategoria()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSTF_NNCONSUMOMINIMO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getDataVigencia()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getDataVigencia()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSTF_DTVIGENCIA"

    .line 188
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdCategoria()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CATG_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdSubcategoria()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SCAT_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getValorTarifaMinimaCategoria()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getValorTarifaMinimaCategoria()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSTF_VLTARIFAMINIMA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getValorTarifaMinimaCategoriaEsgoto()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getValorTarifaMinimaCategoriaEsgoto()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSTF_VLTARIFAMINIMAESGOTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_2
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSTF_TMULTIMAALTERACAO"

    .line 199
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setConsumoMinimoSubcategoria(Ljava/lang/Integer;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->consumoMinimoSubcategoria:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoTarifa(Ljava/lang/Integer;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->consumoTarifa:Ljava/lang/Integer;

    return-void
.end method

.method public setDataVigencia(Ljava/util/Date;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->dataVigencia:Ljava/util/Date;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdCategoria(Ljava/lang/Integer;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->idCategoria:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdSubcategoria(Ljava/lang/Integer;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->idSubcategoria:Ljava/lang/Integer;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method

.method public setValorTarifaMinimaCategoria(Ljava/math/BigDecimal;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->valorTarifaMinimaCategoria:Ljava/math/BigDecimal;

    return-void
.end method

.method public setValorTarifaMinimaCategoriaEsgoto(Ljava/math/BigDecimal;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->valorTarifaMinimaCategoriaEsgoto:Ljava/math/BigDecimal;

    return-void
.end method
