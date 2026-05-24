.class public Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "ContaCategoriaConsumoFaixa.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa$ContasCategoriasConsumosFaixasTipos;,
        Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa$ContasCategoriasConsumosFaixas;
    }
.end annotation


# static fields
.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private contaCategoria:Lcom/br/ipad/isc/bean/ContaCategoria;

.field private id:Ljava/lang/Integer;

.field private idConsumoTarifaFaixa:Ljava/lang/Integer;

.field private numConsumo:Ljava/lang/Integer;

.field private numConsumoFinal:Ljava/lang/Integer;

.field private numConsumoInicial:Ljava/lang/Integer;

.field private ultimaAlteracao:Ljava/util/Date;

.field private valorFaturado:Ljava/math/BigDecimal;

.field private valorTarifa:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CCCF_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CTCG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CCCF_NNCONSUMO"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CCCF_VLFATURADO"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CCCF_NNCONSUMOINICIAL"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CCCF_NNCONSUMOFINAL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CCCF_VLTARIFA"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CCCF_TMULTIMAALTERACAO"

    aput-object v2, v0, v1

    .line 116
    sput-object v0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/math/BigDecimal;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/math/BigDecimal;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->numConsumo:Ljava/lang/Integer;

    .line 42
    iput-object p2, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->valorFaturado:Ljava/math/BigDecimal;

    .line 43
    iput-object p3, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->numConsumoInicial:Ljava/lang/Integer;

    .line 44
    iput-object p4, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->numConsumoFinal:Ljava/lang/Integer;

    .line 45
    iput-object p5, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->valorTarifa:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/math/BigDecimal;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/math/BigDecimal;Ljava/lang/Integer;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->numConsumo:Ljava/lang/Integer;

    .line 54
    iput-object p2, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->valorFaturado:Ljava/math/BigDecimal;

    .line 55
    iput-object p3, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->numConsumoInicial:Ljava/lang/Integer;

    .line 56
    iput-object p4, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->numConsumoFinal:Ljava/lang/Integer;

    .line 57
    iput-object p5, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->valorTarifa:Ljava/math/BigDecimal;

    .line 58
    iput-object p6, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->idConsumoTarifaFaixa:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 218
    :cond_0
    instance-of v1, p1, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 221
    :cond_1
    check-cast p1, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    .line 223
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getIdConsumoTarifaFaixa()Ljava/lang/Integer;

    move-result-object v1

    .line 224
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getIdConsumoTarifaFaixa()Ljava/lang/Integer;

    move-result-object v3

    .line 223
    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoInicial()Ljava/lang/Integer;

    move-result-object v1

    .line 226
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoInicial()Ljava/lang/Integer;

    move-result-object p1

    .line 225
    invoke-virtual {v1, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 121
    sget-object v0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getContaCategoria()Lcom/br/ipad/isc/bean/ContaCategoria;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->contaCategoria:Lcom/br/ipad/isc/bean/ContaCategoria;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdConsumoTarifaFaixa()Ljava/lang/Integer;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->idConsumoTarifaFaixa:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "conta_catg_cons_fx"

    return-object v0
.end method

.method public getNumConsumo()Ljava/lang/Integer;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->numConsumo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNumConsumoFinal()Ljava/lang/Integer;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->numConsumoFinal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNumConsumoInicial()Ljava/lang/Integer;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->numConsumoInicial:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->ultimaAlteracao:Ljava/util/Date;

    return-object v0
.end method

.method public getValorFaturado()Ljava/math/BigDecimal;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->valorFaturado:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getValorTarifa()Ljava/math/BigDecimal;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->valorTarifa:Ljava/math/BigDecimal;

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
            "Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 179
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "CCCF_ID"

    .line 181
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "CTCG_ID"

    .line 182
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "CCCF_NNCONSUMO"

    .line 183
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "CCCF_VLFATURADO"

    .line 184
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "CCCF_NNCONSUMOFINAL"

    .line 185
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "CCCF_NNCONSUMOINICIAL"

    .line 186
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "CCCF_VLTARIFA"

    .line 187
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "CCCF_TMULTIMAALTERACAO"

    .line 188
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    .line 190
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v15

    .line 193
    :goto_0
    new-instance v15, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    invoke-direct {v15}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;-><init>()V

    .line 195
    invoke-static {v0, v3, v4}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v3

    .line 196
    new-instance v3, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>(Ljava/lang/Integer;)V

    .line 197
    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setContaCategoria(Lcom/br/ipad/isc/bean/ContaCategoria;)V

    goto :goto_1

    :cond_0
    move-object/from16 v18, v3

    move/from16 v20, v4

    .line 199
    :goto_1
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setId(Ljava/lang/Integer;)V

    .line 200
    invoke-static {v0, v5, v6}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setNumConsumo(Ljava/lang/Integer;)V

    .line 201
    invoke-static {v0, v7, v8}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setValorFaturado(Ljava/math/BigDecimal;)V

    .line 202
    invoke-static {v0, v9, v10}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setNumConsumoFinal(Ljava/lang/Integer;)V

    .line 203
    invoke-static {v0, v11, v12}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setNumConsumoInicial(Ljava/lang/Integer;)V

    .line 204
    invoke-static {v0, v13, v14}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setValorTarifa(Ljava/math/BigDecimal;)V

    move/from16 v3, v16

    .line 205
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->setUltimaAlteracao(Ljava/lang/String;)V

    move-object/from16 v4, v17

    .line 207
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
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

    .line 159
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 160
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getContaCategoria()Lcom/br/ipad/isc/bean/ContaCategoria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaCategoria;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CTCG_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CCCF_NNCONSUMO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoFinal()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CCCF_NNCONSUMOFINAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoInicial()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CCCF_NNCONSUMOINICIAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CCCF_VLFATURADO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorTarifa()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorTarifa()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CCCF_VLTARIFA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_1
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CCCF_TMULTIMAALTERACAO"

    .line 170
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setContaCategoria(Lcom/br/ipad/isc/bean/ContaCategoria;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->contaCategoria:Lcom/br/ipad/isc/bean/ContaCategoria;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdConsumoTarifaFaixa(Ljava/lang/Integer;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->idConsumoTarifaFaixa:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setNumConsumo(Ljava/lang/Integer;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->numConsumo:Ljava/lang/Integer;

    return-void
.end method

.method public setNumConsumoFinal(Ljava/lang/Integer;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->numConsumoFinal:Ljava/lang/Integer;

    return-void
.end method

.method public setNumConsumoInicial(Ljava/lang/Integer;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->numConsumoInicial:Ljava/lang/Integer;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/String;)V
    .locals 0

    .line 113
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method

.method public setValorFaturado(Ljava/math/BigDecimal;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->valorFaturado:Ljava/math/BigDecimal;

    return-void
.end method

.method public setValorTarifa(Ljava/math/BigDecimal;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->valorTarifa:Ljava/math/BigDecimal;

    return-void
.end method
