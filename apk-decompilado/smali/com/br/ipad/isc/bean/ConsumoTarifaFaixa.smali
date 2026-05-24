.class public Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "ConsumoTarifaFaixa.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa$ConsumosTarifasFaixasTipos;,
        Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa$ConsumosTarifasFaixas;
    }
.end annotation


# static fields
.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private consumoFaixaFim:Ljava/lang/Integer;

.field private consumoFaixaInicio:Ljava/lang/Integer;

.field private consumoTarifaCategoria:Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

.field private dataVigencia:Ljava/util/Date;

.field private id:Ljava/lang/Integer;

.field private ultimaAlteracao:Ljava/util/Date;

.field private valorConsumoTarifa:Ljava/math/BigDecimal;

.field private valorConsumoTarifaEsgoto:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CTFX_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CSTC_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CTFX_DTVIGENCIA"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CTFX_NNCOSUMOFAIXAINICIO"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CTFX_NNCONSUMOFAIXAFIM"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CTFX_VLCONSUMOTARIFA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CTFX_TMULTIMAALTERACAO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CTFX_VLCONSUMOTARIFAESGOTO"

    aput-object v2, v0, v1

    .line 97
    sput-object v0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->insertFromFile(Ljava/util/ArrayList;J)V

    return-void
.end method

.method private insertFromFile(Ljava/util/ArrayList;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;-><init>()V

    long-to-int p3, p2

    .line 117
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->setId(Ljava/lang/Integer;)V

    .line 118
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->setConsumoTarifaCategoria(Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;)V

    const/4 p2, 0x2

    .line 120
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    .line 121
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->convertDateStrToDate1(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 122
    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->setDataVigencia(Ljava/util/Date;)V

    :cond_0
    const/4 p2, 0x5

    .line 124
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_1

    .line 125
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->setConsumoFaixaInicio(Ljava/lang/Integer;)V

    :cond_1
    const/4 p2, 0x6

    .line 127
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_2

    .line 128
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->setConsumoFaixaFim(Ljava/lang/Integer;)V

    :cond_2
    const/4 p2, 0x7

    .line 130
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_3

    .line 131
    new-instance p3, Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, p3}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->setValorConsumoTarifa(Ljava/math/BigDecimal;)V

    :cond_3
    const/16 p2, 0x8

    .line 134
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_4

    .line 135
    new-instance p3, Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p3, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, p3}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->setValorConsumoTarifaEsgoto(Ljava/math/BigDecimal;)V

    .line 138
    :cond_4
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->setUltimaAlteracao(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 100
    sget-object v0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getConsumoFaixaFim()Ljava/lang/Integer;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->consumoFaixaFim:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConsumoFaixaInicio()Ljava/lang/Integer;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->consumoFaixaInicio:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConsumoTarifaCategoria()Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->consumoTarifaCategoria:Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    return-object v0
.end method

.method public getDataVigencia()Ljava/util/Date;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->dataVigencia:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "consumo_tarifa_faixa"

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->ultimaAlteracao:Ljava/util/Date;

    return-object v0
.end method

.method public getValorConsumoTarifa()Ljava/math/BigDecimal;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->valorConsumoTarifa:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getValorConsumoTarifaEsgoto()Ljava/math/BigDecimal;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->valorConsumoTarifaEsgoto:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "CTFX_ID"

    .line 198
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "CTFX_NNCONSUMOFAIXAFIM"

    .line 199
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "CTFX_NNCOSUMOFAIXAINICIO"

    .line 200
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "CTFX_DTVIGENCIA"

    .line 201
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "CSTC_ID"

    .line 202
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "CTFX_VLCONSUMOTARIFA"

    .line 203
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "CTFX_TMULTIMAALTERACAO"

    .line 204
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "CTFX_VLCONSUMOTARIFAESGOTO"

    .line 205
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 207
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 208
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v15

    .line 210
    :goto_0
    new-instance v15, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;

    invoke-direct {v15}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;-><init>()V

    move/from16 v17, v12

    .line 211
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v12}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->setId(Ljava/lang/Integer;)V

    .line 212
    invoke-static {v0, v3, v4}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v12}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->setConsumoFaixaFim(Ljava/lang/Integer;)V

    .line 213
    invoke-static {v0, v5, v6}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v12}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->setConsumoFaixaInicio(Ljava/lang/Integer;)V

    .line 215
    invoke-static {v0, v8, v9}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 217
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v12

    .line 218
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move-object/from16 v19, v1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move/from16 v18, v2

    new-instance v2, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    invoke-direct {v2}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;-><init>()V

    invoke-virtual {v12, v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v1

    check-cast v1, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    .line 219
    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->setConsumoTarifaCategoria(Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;)V

    goto :goto_1

    :cond_0
    move-object/from16 v19, v1

    move/from16 v18, v2

    .line 222
    :goto_1
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertStrToDataBusca(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->setDataVigencia(Ljava/util/Date;)V

    .line 224
    invoke-static {v0, v10, v11}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->setValorConsumoTarifa(Ljava/math/BigDecimal;)V

    .line 225
    invoke-static {v0, v13, v14}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->setValorConsumoTarifaEsgoto(Ljava/math/BigDecimal;)V

    move/from16 v1, v17

    .line 226
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->setUltimaAlteracao(Ljava/lang/String;)V

    move-object/from16 v2, v16

    .line 228
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_1

    move-object v15, v2

    goto :goto_2

    :cond_1
    move v12, v1

    move-object/from16 v16, v2

    move/from16 v2, v18

    move-object/from16 v1, v19

    goto :goto_0

    :cond_2
    const/4 v15, 0x0

    :goto_2
    return-object v15
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 5

    .line 166
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 167
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoFaixaFim()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CTFX_NNCONSUMOFAIXAFIM"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getDataVigencia()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getDataVigencia()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "CTFX_DTVIGENCIA"

    .line 170
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoTarifaCategoria()Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    move-result-object v1

    const-string v3, "CSTC_ID"

    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoTarifaCategoria()Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoFaixaInicio()Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "CTFX_NNCOSUMOFAIXAINICIO"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoFaixaFim()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoTarifaCategoria()Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 180
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoTarifaCategoria()Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    :cond_2
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getValorConsumoTarifa()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getValorConsumoTarifa()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTFX_VLCONSUMOTARIFA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_3
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getValorConsumoTarifaEsgoto()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 186
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getValorConsumoTarifaEsgoto()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTFX_VLCONSUMOTARIFAESGOTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_4
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTFX_TMULTIMAALTERACAO"

    .line 189
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setConsumoFaixaFim(Ljava/lang/Integer;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->consumoFaixaFim:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoFaixaInicio(Ljava/lang/Integer;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->consumoFaixaInicio:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoTarifaCategoria(Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->consumoTarifaCategoria:Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    return-void
.end method

.method public setDataVigencia(Ljava/util/Date;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->dataVigencia:Ljava/util/Date;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method

.method public setValorConsumoTarifa(Ljava/math/BigDecimal;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->valorConsumoTarifa:Ljava/math/BigDecimal;

    return-void
.end method

.method public setValorConsumoTarifaEsgoto(Ljava/math/BigDecimal;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->valorConsumoTarifaEsgoto:Ljava/math/BigDecimal;

    return-void
.end method
