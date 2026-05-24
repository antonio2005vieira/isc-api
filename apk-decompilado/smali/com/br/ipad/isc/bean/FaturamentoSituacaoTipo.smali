.class public Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "FaturamentoSituacaoTipo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo$FaturamentoSituacaoTipoTipos;,
        Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo$FaturamentoSituacaoTipos;
    }
.end annotation


# static fields
.field public static final NITRATO:I = 0x9

.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private id:Ljava/lang/Integer;

.field private idAnormalidadeConsumoComLeitura:Ljava/lang/Integer;

.field private idAnormalidadeConsumoSemLeitura:Ljava/lang/Integer;

.field private idAnormalidadeLeituraComLeitura:Ljava/lang/Integer;

.field private idAnormalidadeLeituraSemLeitura:Ljava/lang/Integer;

.field private indcValidaAgua:Ljava/lang/Integer;

.field private indcValidaEsgoto:Ljava/lang/Integer;

.field private indicadorDesconsiderarEstouroAltoConsumo:Ljava/lang/Integer;

.field private ultimaAlteracao:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "FTST_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "FTST_IDCONSACOBRARSEMLEIT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "FTST_IDCONSACOBRARCOMLEIT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "FTST_IDLEITAFATURARSEMLEIT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "LALT_IDLEITAFATURARCOMLEIT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "FTST_ICVALIDOAGUA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "FTST_ICVALIDOESGOTO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FTST_ICDESCONSIDERARACEC"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "FTST_TMULTIMAALTERACAO"

    aput-object v2, v0, v1

    .line 103
    sput-object v0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->indcValidaAgua:Ljava/lang/Integer;

    .line 37
    iput-object v0, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->indcValidaEsgoto:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->indcValidaAgua:Ljava/lang/Integer;

    .line 37
    iput-object v0, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->indcValidaEsgoto:Ljava/lang/Integer;

    .line 25
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->insertFromFile(Ljava/util/ArrayList;)V

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

    .line 125
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->setIdString(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 126
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->setIdAnormalidadeConsumoSemLeitura(Ljava/lang/Integer;)V

    :cond_0
    const/4 v0, 0x3

    .line 129
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->setIdAnormalidadeConsumoComLeitura(Ljava/lang/Integer;)V

    :cond_1
    const/4 v0, 0x4

    .line 132
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->setIdAnormalidadeLeituraSemLeitura(Ljava/lang/Integer;)V

    :cond_2
    const/4 v0, 0x5

    .line 135
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->setIdAnormalidadeLeituraComLeitura(Ljava/lang/Integer;)V

    :cond_3
    const/4 v0, 0x6

    .line 138
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->setIndcValidaAgua(Ljava/lang/Integer;)V

    :cond_4
    const/4 v0, 0x7

    .line 141
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 142
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->setIndcValidaEsgoto(Ljava/lang/Integer;)V

    :cond_5
    const/16 v0, 0x8

    .line 144
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 145
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->setIndicadorDesconsiderarEstouroAltoConsumo(Ljava/lang/Integer;)V

    .line 147
    :cond_6
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->setUltimaAlteracao(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 108
    sget-object v0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdAnormalidadeConsumoComLeitura()Ljava/lang/Integer;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->idAnormalidadeConsumoComLeitura:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->idAnormalidadeConsumoSemLeitura:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdAnormalidadeLeituraComLeitura()Ljava/lang/Integer;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->idAnormalidadeLeituraComLeitura:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdAnormalidadeLeituraSemLeitura()Ljava/lang/Integer;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->idAnormalidadeLeituraSemLeitura:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndcValidaAgua()Ljava/lang/Integer;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->indcValidaAgua:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndcValidaEsgoto()Ljava/lang/Integer;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->indcValidaEsgoto:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorDesconsiderarEstouroAltoConsumo()Ljava/lang/Integer;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->indicadorDesconsiderarEstouroAltoConsumo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "faturamento_situacao_tipo"

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->ultimaAlteracao:Ljava/util/Date;

    return-object v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 196
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "FTST_ID"

    .line 197
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "FTST_IDCONSACOBRARSEMLEIT"

    .line 198
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "FTST_IDCONSACOBRARCOMLEIT"

    .line 199
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "LALT_IDLEITAFATURARCOMLEIT"

    .line 200
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "FTST_IDLEITAFATURARSEMLEIT"

    .line 201
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "FTST_ICDESCONSIDERARACEC"

    .line 202
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "FTST_ICVALIDOAGUA"

    .line 203
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "FTST_ICVALIDOESGOTO"

    move-object/from16 v16, v11

    .line 204
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    move/from16 v17, v12

    const-string v12, "FTST_TMULTIMAALTERACAO"

    .line 205
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move/from16 v18, v12

    .line 207
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v12

    .line 210
    :goto_0
    new-instance v12, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    invoke-direct {v12}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;-><init>()V

    move/from16 v20, v8

    .line 212
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->setId(Ljava/lang/Integer;)V

    .line 213
    invoke-static {v0, v3, v4}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->setIdAnormalidadeConsumoSemLeitura(Ljava/lang/Integer;)V

    .line 214
    invoke-static {v0, v5, v6}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->setIdAnormalidadeConsumoComLeitura(Ljava/lang/Integer;)V

    .line 215
    invoke-static {v0, v13, v14}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->setIndcValidaAgua(Ljava/lang/Integer;)V

    .line 216
    invoke-static {v0, v15, v11}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->setIndcValidaEsgoto(Ljava/lang/Integer;)V

    .line 217
    invoke-static {v0, v7, v10}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->setIdAnormalidadeLeituraComLeitura(Ljava/lang/Integer;)V

    move/from16 v8, v20

    move-object/from16 v20, v1

    .line 218
    invoke-static {v0, v9, v8}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->setIdAnormalidadeLeituraSemLeitura(Ljava/lang/Integer;)V

    move/from16 v1, v17

    move-object/from16 v17, v3

    move-object/from16 v21, v16

    move/from16 v16, v2

    move-object/from16 v2, v21

    .line 219
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->setIndicadorDesconsiderarEstouroAltoConsumo(Ljava/lang/Integer;)V

    move/from16 v3, v18

    move/from16 v18, v1

    .line 220
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->setUltimaAlteracao(Ljava/lang/String;)V

    move-object/from16 v1, v19

    .line 222
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_0

    move-object v12, v1

    goto :goto_1

    :cond_0
    move-object/from16 v19, v1

    move-object/from16 v1, v20

    move/from16 v21, v16

    move-object/from16 v16, v2

    move/from16 v2, v21

    move/from16 v22, v18

    move/from16 v18, v3

    move-object/from16 v3, v17

    move/from16 v17, v22

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_1
    return-object v12
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 177
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 178
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FTST_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoComLeitura()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FTST_IDCONSACOBRARCOMLEIT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FTST_IDCONSACOBRARSEMLEIT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeLeituraComLeitura()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LALT_IDLEITAFATURARCOMLEIT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeLeituraSemLeitura()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FTST_IDLEITAFATURARSEMLEIT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndicadorDesconsiderarEstouroAltoConsumo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FTST_ICDESCONSIDERARACEC"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndcValidaAgua()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FTST_ICVALIDOAGUA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndcValidaEsgoto()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FTST_ICVALIDOESGOTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FTST_TMULTIMAALTERACAO"

    .line 187
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdAnormalidadeConsumoComLeitura(Ljava/lang/Integer;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->idAnormalidadeConsumoComLeitura:Ljava/lang/Integer;

    return-void
.end method

.method public setIdAnormalidadeConsumoSemLeitura(Ljava/lang/Integer;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->idAnormalidadeConsumoSemLeitura:Ljava/lang/Integer;

    return-void
.end method

.method public setIdAnormalidadeLeituraComLeitura(Ljava/lang/Integer;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->idAnormalidadeLeituraComLeitura:Ljava/lang/Integer;

    return-void
.end method

.method public setIdAnormalidadeLeituraSemLeitura(Ljava/lang/Integer;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->idAnormalidadeLeituraSemLeitura:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIndcValidaAgua(Ljava/lang/Integer;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->indcValidaAgua:Ljava/lang/Integer;

    return-void
.end method

.method public setIndcValidaEsgoto(Ljava/lang/Integer;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->indcValidaEsgoto:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorDesconsiderarEstouroAltoConsumo(Ljava/lang/Integer;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->indicadorDesconsiderarEstouroAltoConsumo:Ljava/lang/Integer;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method
