.class public Lcom/br/ipad/isc/bean/ContaDebito;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "ContaDebito.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/ContaDebito$ContasDebitosTipos;,
        Lcom/br/ipad/isc/bean/ContaDebito$ContasDebitos;
    }
.end annotation


# static fields
.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private anoMesReferencia:Ljava/lang/String;

.field private dataVencimentoConta:Ljava/util/Date;

.field private id:Ljava/lang/Integer;

.field private matricula:Lcom/br/ipad/isc/bean/ImovelConta;

.field private ultimaAlteracao:Ljava/util/Date;

.field private valorAcrescimoImpontualidade:Ljava/math/BigDecimal;

.field private valorConta:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CODB_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "IMOV_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CODB_AMREFERCONTA"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CODB_VALORCONTA"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CODB_DTVENCICONTA"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CODB_VLACRESIMPONT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CODB_TMULTIMAALTERACAO"

    aput-object v2, v0, v1

    .line 88
    sput-object v0, Lcom/br/ipad/isc/bean/ContaDebito;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
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

    .line 25
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 26
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/bean/ContaDebito;->insertFromFile(Ljava/util/ArrayList;)V

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

    .line 130
    new-instance v0, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    const/4 v1, 0x1

    .line 131
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setId(Ljava/lang/Integer;)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ContaDebito;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    const/4 v0, 0x2

    .line 134
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ContaDebito;->setAnoMesReferencia(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    .line 137
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/ContaDebito;->setValorConta(Ljava/math/BigDecimal;)V

    :cond_1
    const/4 v0, 0x4

    .line 141
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->convertDateStrToDate1(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 143
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ContaDebito;->setDataVencimentoConta(Ljava/util/Date;)V

    :cond_2
    const/4 v0, 0x5

    .line 145
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/ContaDebito;->setValorAcrescimoImpontualidade(Ljava/math/BigDecimal;)V

    .line 150
    :cond_3
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/ContaDebito;->setUltimaAlteracao(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAnoMesReferencia()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaDebito;->anoMesReferencia:Ljava/lang/String;

    return-object v0
.end method

.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 93
    sget-object v0, Lcom/br/ipad/isc/bean/ContaDebito;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getDataVencimentoConta()Ljava/util/Date;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaDebito;->dataVencimentoConta:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaDebito;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaDebito;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "conta_debito"

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaDebito;->ultimaAlteracao:Ljava/util/Date;

    return-object v0
.end method

.method public getValorAcrescimoImpontualidade()Ljava/math/BigDecimal;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaDebito;->valorAcrescimoImpontualidade:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getValorConta()Ljava/math/BigDecimal;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaDebito;->valorConta:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ContaDebito;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 178
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "CODB_ID"

    .line 179
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "IMOV_ID"

    .line 180
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "CODB_AMREFERCONTA"

    .line 181
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "CODB_DTVENCICONTA"

    .line 182
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "CODB_VLACRESIMPONT"

    .line 183
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "CODB_VALORCONTA"

    .line 184
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "CODB_TMULTIMAALTERACAO"

    .line 185
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 187
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 189
    :cond_0
    new-instance v13, Lcom/br/ipad/isc/bean/ContaDebito;

    invoke-direct {v13}, Lcom/br/ipad/isc/bean/ContaDebito;-><init>()V

    .line 191
    invoke-static {v0, v3, v4}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 192
    new-instance v14, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>(Ljava/lang/Integer;)V

    .line 193
    invoke-virtual {v13, v14}, Lcom/br/ipad/isc/bean/ContaDebito;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 195
    :cond_1
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/br/ipad/isc/bean/ContaDebito;->setId(Ljava/lang/Integer;)V

    .line 196
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/br/ipad/isc/bean/ContaDebito;->setAnoMesReferencia(Ljava/lang/String;)V

    .line 199
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 200
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 202
    invoke-static {v14}, Lcom/br/ipad/isc/util/Util;->convertDateStrToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    .line 203
    invoke-virtual {v13, v14}, Lcom/br/ipad/isc/bean/ContaDebito;->setDataVencimentoConta(Ljava/util/Date;)V

    .line 206
    :cond_2
    invoke-static {v0, v7, v8}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/br/ipad/isc/bean/ContaDebito;->setValorAcrescimoImpontualidade(Ljava/math/BigDecimal;)V

    .line 207
    invoke-static {v0, v9, v10}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/br/ipad/isc/bean/ContaDebito;->setValorConta(Ljava/math/BigDecimal;)V

    .line 208
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/br/ipad/isc/bean/ContaDebito;->setUltimaAlteracao(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-nez v13, :cond_0

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    :goto_0
    return-object v12
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 155
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 156
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaDebito;->getAnoMesReferencia()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CODB_AMREFERCONTA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaDebito;->getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMOV_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaDebito;->getDataVencimentoConta()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaDebito;->getDataVencimentoConta()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CODB_DTVENCICONTA"

    .line 160
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaDebito;->getValorAcrescimoImpontualidade()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaDebito;->getValorAcrescimoImpontualidade()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CODB_VLACRESIMPONT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaDebito;->getValorConta()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaDebito;->getValorConta()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CODB_VALORCONTA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_2
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CODB_TMULTIMAALTERACAO"

    .line 169
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAnoMesReferencia(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaDebito;->anoMesReferencia:Ljava/lang/String;

    return-void
.end method

.method public setDataVencimentoConta(Ljava/util/Date;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaDebito;->dataVencimentoConta:Ljava/util/Date;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaDebito;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaDebito;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaDebito;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaDebito;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method

.method public setValorAcrescimoImpontualidade(Ljava/math/BigDecimal;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaDebito;->valorAcrescimoImpontualidade:Ljava/math/BigDecimal;

    return-void
.end method

.method public setValorConta(Ljava/math/BigDecimal;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaDebito;->valorConta:Ljava/math/BigDecimal;

    return-void
.end method
