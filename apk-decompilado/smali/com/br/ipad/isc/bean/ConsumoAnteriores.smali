.class public Lcom/br/ipad/isc/bean/ConsumoAnteriores;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "ConsumoAnteriores.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/ConsumoAnteriores$ConsumosAnterioresTipos;,
        Lcom/br/ipad/isc/bean/ConsumoAnteriores$ConsumosAnteriores;
    }
.end annotation


# static fields
.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private anoMesReferencia:Ljava/lang/Integer;

.field private anormalidadeConsumo:Ljava/lang/Integer;

.field private anormalidadeLeitura:Ljava/lang/Integer;

.field private consumo:Ljava/lang/Integer;

.field private id:Ljava/lang/Integer;

.field private matricula:Lcom/br/ipad/isc/bean/ImovelConta;

.field private tipoLigacao:Ljava/lang/Integer;

.field private ultimaAlteracao:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CSAT_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "IMOV_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "LGTI_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CSAT_AMREFERENCIA"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CSAT_CONSUMOFATURADO"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CSAT_IDANORLEITURA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CSAT_IDANORMCONSUMO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CSAT_TMULTIMAALTERACAO"

    aput-object v2, v0, v1

    .line 95
    sput-object v0, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

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

    .line 27
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 28
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->insertFromFile(Ljava/util/ArrayList;)V

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

    .line 136
    new-instance v0, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    const/4 v1, 0x1

    .line 137
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setId(Ljava/lang/Integer;)V

    .line 138
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    const/4 v0, 0x2

    .line 140
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->setTipoLigacao(Ljava/lang/Integer;)V

    const/4 v0, 0x3

    .line 141
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->setAnoMesReferencia(Ljava/lang/Integer;)V

    const/4 v0, 0x4

    .line 142
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->setConsumo(Ljava/lang/Integer;)V

    const/4 v0, 0x5

    .line 143
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->setAnormalidadeLeitura(Ljava/lang/Integer;)V

    const/4 v0, 0x6

    .line 144
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->setAnormalidadeConsumo(Ljava/lang/Integer;)V

    .line 145
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->setUltimaAlteracao(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAnoMesReferencia()Ljava/lang/Integer;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->anoMesReferencia:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAnormalidadeConsumo()Ljava/lang/Integer;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->anormalidadeConsumo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAnormalidadeLeitura()Ljava/lang/Integer;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->anormalidadeLeitura:Ljava/lang/Integer;

    return-object v0
.end method

.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 101
    sget-object v0, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getConsumo()Ljava/lang/Integer;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->consumo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "consumo_anteriores"

    return-object v0
.end method

.method public getTipoLigacao()Ljava/lang/Integer;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->tipoLigacao:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->ultimaAlteracao:Ljava/util/Date;

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
            "Lcom/br/ipad/isc/bean/ConsumoAnteriores;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 172
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "CSAT_ID"

    .line 173
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "IMOV_ID"

    .line 174
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "CSAT_AMREFERENCIA"

    .line 175
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "CSAT_CONSUMOFATURADO"

    .line 176
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "CSAT_IDANORMCONSUMO"

    .line 177
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "CSAT_IDANORLEITURA"

    .line 178
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "LGTI_ID"

    .line 179
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "CSAT_TMULTIMAALTERACAO"

    .line 180
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    .line 182
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v15

    .line 184
    :goto_0
    new-instance v15, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-direct {v15}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;-><init>()V

    .line 186
    invoke-static {v0, v3, v4}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v3

    .line 187
    new-instance v3, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>(Ljava/lang/Integer;)V

    .line 188
    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    goto :goto_1

    :cond_0
    move-object/from16 v18, v3

    move/from16 v20, v4

    .line 190
    :goto_1
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->setId(Ljava/lang/Integer;)V

    .line 191
    invoke-static {v0, v5, v6}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->setAnoMesReferencia(Ljava/lang/Integer;)V

    .line 192
    invoke-static {v0, v7, v8}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->setConsumo(Ljava/lang/Integer;)V

    .line 193
    invoke-static {v0, v9, v10}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->setAnormalidadeConsumo(Ljava/lang/Integer;)V

    .line 194
    invoke-static {v0, v11, v12}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->setAnormalidadeLeitura(Ljava/lang/Integer;)V

    .line 195
    invoke-static {v0, v13, v14}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->setTipoLigacao(Ljava/lang/Integer;)V

    move/from16 v3, v16

    .line 196
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->setUltimaAlteracao(Ljava/lang/String;)V

    move-object/from16 v4, v17

    .line 198
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

    .line 154
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 156
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnoMesReferencia()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSAT_AMREFERENCIA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMOV_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getConsumo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSAT_CONSUMOFATURADO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnormalidadeConsumo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSAT_IDANORMCONSUMO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnormalidadeLeitura()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSAT_IDANORLEITURA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getTipoLigacao()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LGTI_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSAT_TMULTIMAALTERACAO"

    .line 163
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAnoMesReferencia(Ljava/lang/Integer;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->anoMesReferencia:Ljava/lang/Integer;

    return-void
.end method

.method public setAnormalidadeConsumo(Ljava/lang/Integer;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->anormalidadeConsumo:Ljava/lang/Integer;

    return-void
.end method

.method public setAnormalidadeLeitura(Ljava/lang/Integer;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->anormalidadeLeitura:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumo(Ljava/lang/Integer;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->consumo:Ljava/lang/Integer;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    return-void
.end method

.method public setTipoLigacao(Ljava/lang/Integer;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->tipoLigacao:Ljava/lang/Integer;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method
