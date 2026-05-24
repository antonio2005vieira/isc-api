.class public Lcom/br/ipad/isc/bean/ConsumoHistorico;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "ConsumoHistorico.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;,
        Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricos;
    }
.end annotation


# static fields
.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private anormalidadeLeituraFaturada:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

.field private consumoAnormalidade:Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

.field private consumoCobradoMes:Ljava/lang/Integer;

.field private consumoCobradoMesImoveisMicro:Ljava/lang/Integer;

.field private consumoCobradoMesOriginal:Ljava/lang/Integer;

.field private consumoCobradoSemContratoDemanda:Ljava/lang/Integer;

.field private consumoMedidoMes:Ljava/lang/Integer;

.field private consumoRateio:Ljava/lang/Integer;

.field private diasConsumo:Ljava/lang/Integer;

.field private id:Ljava/lang/Integer;

.field private leituraAtual:Ljava/lang/Integer;

.field private matricula:Lcom/br/ipad/isc/bean/ImovelConta;

.field private numeroMesMotivoRevisao:Ljava/lang/Integer;

.field private tipoConsumo:Ljava/lang/Integer;

.field private tipoLigacao:Ljava/lang/Integer;

.field private ultimaAlteracao:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CSHI_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "IMOV_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "LGTI_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CSHI_NNCONSUMOMEDIDO"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CSHI_NNCONSUMOCOBRADO"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CSHI_NNCONSUMOCOBMICRO"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CSHI_NNCONSUMORATEIO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CSHI_NNCONCOBSEMCTDEMAN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CSHI_NNCONSCOBORIGINAL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "CSHI_NNLEITURAATUAL"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CSTP_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CSAN_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CSHI_NNDIASCONSUMO"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "LTAN_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CSHI_TMULTIMAALTERACAO"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "CSHI_NNMESMOTIVOREVISAO"

    aput-object v2, v0, v1

    .line 168
    sput-object v0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    const/4 v0, 0x0

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoMedidoMes:Ljava/lang/Integer;

    .line 47
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoCobradoMes:Ljava/lang/Integer;

    .line 48
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoCobradoMesImoveisMicro:Ljava/lang/Integer;

    .line 49
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoRateio:Ljava/lang/Integer;

    .line 50
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoCobradoSemContratoDemanda:Ljava/lang/Integer;

    .line 51
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoCobradoMesOriginal:Ljava/lang/Integer;

    .line 52
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->leituraAtual:Ljava/lang/Integer;

    .line 53
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->tipoConsumo:Ljava/lang/Integer;

    .line 54
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->numeroMesMotivoRevisao:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoCobradoMes:Ljava/lang/Integer;

    .line 61
    iput-object p2, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->tipoConsumo:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->anormalidadeLeituraFaturada:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    return-object v0
.end method

.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 180
    sget-object v0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoAnormalidade:Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    return-object v0
.end method

.method public getConsumoCobradoMes()Ljava/lang/Integer;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoCobradoMes:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConsumoCobradoMesImoveisMicro()Ljava/lang/Integer;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoCobradoMesImoveisMicro:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConsumoCobradoMesOriginal()Ljava/lang/Integer;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoCobradoMesOriginal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConsumoCobradoSemContratoDemanda()Ljava/lang/Integer;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoCobradoSemContratoDemanda:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConsumoMedidoMes()Ljava/lang/Integer;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoMedidoMes:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConsumoRateio()Ljava/lang/Integer;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoRateio:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDiasConsumo()Ljava/lang/Integer;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->diasConsumo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLeituraAtual()Ljava/lang/Integer;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->leituraAtual:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "consumo_historico"

    return-object v0
.end method

.method public getNumeroMesMotivoRevisao()Ljava/lang/Integer;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->numeroMesMotivoRevisao:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTipoConsumo()Ljava/lang/Integer;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->tipoConsumo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTipoLigacao()Ljava/lang/Integer;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->tipoLigacao:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->ultimaAlteracao:Ljava/util/Date;

    return-object v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoHistorico;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    const-string v0, "CSHI_ID"

    .line 264
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v0, "CSAN_ID"

    .line 265
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v0, "LTAN_ID"

    .line 266
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "CSHI_NNCONSUMOCOBMICRO"

    .line 267
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "CSHI_NNCONSCOBORIGINAL"

    .line 268
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "CSHI_NNCONCOBSEMCTDEMAN"

    .line 269
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "CSHI_NNCONSUMOMEDIDO"

    .line 270
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "CSHI_NNCONSUMORATEIO"

    .line 271
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "CSHI_NNCONSUMOCOBRADO"

    move-object/from16 v16, v13

    .line 272
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v17, v13

    const-string v13, "CSHI_NNDIASCONSUMO"

    move-object/from16 v18, v15

    .line 273
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v19, v13

    const-string v13, "CSHI_NNLEITURAATUAL"

    move/from16 v20, v15

    .line 274
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v0, "IMOV_ID"

    move-object/from16 v21, v13

    .line 275
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v22, v15

    const-string v15, "CSTP_ID"

    move/from16 v23, v14

    .line 276
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move/from16 v24, v14

    const-string v14, "LGTI_ID"

    move-object/from16 v25, v15

    .line 277
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v0, "CSHI_TMULTIMAALTERACAO"

    move-object/from16 v26, v14

    .line 278
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v0, "CSHI_NNMESMOTIVOREVISAO"

    move/from16 v27, v14

    .line 279
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move/from16 v28, v14

    .line 281
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v14

    .line 283
    :goto_0
    new-instance v14, Lcom/br/ipad/isc/bean/ConsumoHistorico;

    invoke-direct {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;-><init>()V

    .line 286
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    move-result-object v0

    .line 287
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v30
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v31, v13

    :try_start_1
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13
    :try_end_1
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v30, v15

    :try_start_2
    new-instance v15, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v15}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    invoke-virtual {v0, v13, v15}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 289
    invoke-virtual {v14, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 290
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setId(Ljava/lang/Integer;)V

    .line 292
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    move-result-object v0

    .line 293
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v15, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {v15}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    invoke-virtual {v0, v13, v15}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    .line 294
    invoke-virtual {v14, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    .line 295
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    move-result-object v0

    .line 296
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v15, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v15}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    invoke-virtual {v0, v13, v15}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    .line 297
    invoke-virtual {v14, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setAnormalidadeLeituraFaturada(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)V
    :try_end_2
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move/from16 v31, v13

    :goto_1
    move/from16 v30, v15

    .line 300
    :goto_2
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const-string v15, "ISC"

    invoke-static {v15, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 304
    :goto_3
    invoke-static {v1, v5, v6}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMesImoveisMicro(Ljava/lang/Integer;)V

    .line 305
    invoke-static {v1, v7, v8}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMesOriginal(Ljava/lang/Integer;)V

    .line 306
    invoke-static {v1, v9, v10}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoSemContratoDemanda(Ljava/lang/Integer;)V

    .line 307
    invoke-static {v1, v11, v12}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoMedidoMes(Ljava/lang/Integer;)V

    move-object/from16 v15, v16

    move/from16 v13, v23

    .line 308
    invoke-static {v1, v15, v13}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    move/from16 v16, v2

    move/from16 v2, v17

    move/from16 v17, v3

    move-object/from16 v3, v18

    .line 309
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    move/from16 v18, v2

    move/from16 v2, v20

    move-object/from16 v32, v19

    move-object/from16 v19, v3

    move-object/from16 v3, v32

    .line 310
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setDiasConsumo(Ljava/lang/Integer;)V

    move/from16 v2, v22

    move-object/from16 v32, v21

    move-object/from16 v21, v3

    move-object/from16 v3, v32

    .line 311
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    move-object/from16 v23, v3

    move/from16 v2, v24

    move-object/from16 v3, v25

    .line 312
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    move-object/from16 v3, v26

    move/from16 v2, v30

    .line 313
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoLigacao(Ljava/lang/Integer;)V

    move/from16 v2, v27

    .line 314
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setUltimaAlteracao(Ljava/lang/Long;)V

    move/from16 v27, v2

    move/from16 v2, v28

    .line 315
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setNumeroMesMotivoRevisao(Ljava/lang/Integer;)V

    move-object/from16 v1, v29

    .line 317
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    move-object/from16 v29, v1

    move/from16 v28, v2

    move-object/from16 v26, v3

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v1, p1

    move/from16 v23, v13

    move-object/from16 v16, v15

    move/from16 v15, v30

    move/from16 v13, v31

    goto/16 :goto_0
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 237
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 239
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMOV_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoLigacao()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LGTI_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoMedidoMes()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSHI_NNCONSUMOMEDIDO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSHI_NNCONSUMOCOBRADO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesImoveisMicro()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSHI_NNCONSUMOCOBMICRO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSHI_NNCONSUMORATEIO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoSemContratoDemanda()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSHI_NNCONCOBSEMCTDEMAN"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSHI_NNCONSCOBORIGINAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSHI_NNLEITURAATUAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSTP_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSAN_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSHI_NNDIASCONSUMO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LTAN_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "CSHI_TMULTIMAALTERACAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 257
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getNumeroMesMotivoRevisao()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSHI_NNMESMOTIVOREVISAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public setAnormalidadeLeituraFaturada(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->anormalidadeLeituraFaturada:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    return-void
.end method

.method public setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoAnormalidade:Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    return-void
.end method

.method public setConsumoCobradoMes(Ljava/lang/Integer;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoCobradoMes:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoCobradoMesImoveisMicro(Ljava/lang/Integer;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoCobradoMesImoveisMicro:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoCobradoMesOriginal(Ljava/lang/Integer;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoCobradoMesOriginal:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoCobradoSemContratoDemanda(Ljava/lang/Integer;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoCobradoSemContratoDemanda:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoMedidoMes(Ljava/lang/Integer;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoMedidoMes:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoRateio(Ljava/lang/Integer;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->consumoRateio:Ljava/lang/Integer;

    return-void
.end method

.method public setDiasConsumo(Ljava/lang/Integer;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->diasConsumo:Ljava/lang/Integer;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setLeituraAtual(Ljava/lang/Integer;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->leituraAtual:Ljava/lang/Integer;

    return-void
.end method

.method public setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    return-void
.end method

.method public setNumeroMesMotivoRevisao(Ljava/lang/Integer;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->numeroMesMotivoRevisao:Ljava/lang/Integer;

    return-void
.end method

.method public setTipoConsumo(Ljava/lang/Integer;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->tipoConsumo:Ljava/lang/Integer;

    return-void
.end method

.method public setTipoLigacao(Ljava/lang/Integer;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->tipoLigacao:Ljava/lang/Integer;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/Long;)V
    .locals 3

    .line 156
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/util/Date;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method
