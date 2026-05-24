.class public Lcom/br/ipad/isc/bean/DebitoCobrado;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "DebitoCobrado.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/DebitoCobrado$DebitosCobradosTipos;,
        Lcom/br/ipad/isc/bean/DebitoCobrado$DebitosCobrados;
    }
.end annotation


# static fields
.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private codigoDebito:Ljava/lang/Integer;

.field private descricaoDebitoTipo:Ljava/lang/String;

.field private id:Ljava/lang/Integer;

.field private indicadorUso:Ljava/lang/Integer;

.field private matricula:Lcom/br/ipad/isc/bean/ImovelConta;

.field private ultimaAlteracao:Ljava/util/Date;

.field private valor:Ljava/math/BigDecimal;

.field private volumeDebito:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DBCO_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "IMOV_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "DBCO_DSDEBITOTIPO"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DBCO_VALOR"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DBCO_CDDEBITO"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DBCO_ICUSO"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DBCO_TMULTIMAALTERACAO"

    aput-object v2, v0, v1

    .line 94
    sput-object v0, Lcom/br/ipad/isc/bean/DebitoCobrado;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
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

    .line 28
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/bean/DebitoCobrado;->insertFromFile(Ljava/util/ArrayList;)V

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

    .line 135
    new-instance v0, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    const/4 v1, 0x1

    .line 136
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setId(Ljava/lang/Integer;)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/DebitoCobrado;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    const/4 v0, 0x2

    .line 139
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/DebitoCobrado;->setDescricaoDebitoTipo(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 140
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/DebitoCobrado;->setValor(Ljava/math/BigDecimal;)V

    :cond_0
    const/4 v0, 0x4

    .line 144
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/DebitoCobrado;->setCodigoDebito(Ljava/lang/Integer;)V

    .line 147
    :cond_1
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 148
    new-instance v0, Ljava/lang/Integer;

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/DebitoCobrado;->setIndicadorUso(Ljava/lang/Integer;)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/DebitoCobrado;->setUltimaAlteracao(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCodigoDebito()Ljava/lang/Integer;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/br/ipad/isc/bean/DebitoCobrado;->codigoDebito:Ljava/lang/Integer;

    return-object v0
.end method

.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 98
    sget-object v0, Lcom/br/ipad/isc/bean/DebitoCobrado;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getDescricaoDebitoTipo()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/br/ipad/isc/bean/DebitoCobrado;->descricaoDebitoTipo:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/br/ipad/isc/bean/DebitoCobrado;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorUso()Ljava/lang/Integer;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/br/ipad/isc/bean/DebitoCobrado;->indicadorUso:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/br/ipad/isc/bean/DebitoCobrado;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "debito_cobrado"

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/br/ipad/isc/bean/DebitoCobrado;->ultimaAlteracao:Ljava/util/Date;

    return-object v0
.end method

.method public getValor()Ljava/math/BigDecimal;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/br/ipad/isc/bean/DebitoCobrado;->valor:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getVolumeDebito()Ljava/math/BigDecimal;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/br/ipad/isc/bean/DebitoCobrado;->volumeDebito:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/DebitoCobrado;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 179
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "DBCO_ID"

    .line 180
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "IMOV_ID"

    .line 181
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "DBCO_CDDEBITO"

    .line 182
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "DBCO_VALOR"

    .line 183
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "DBCO_ICUSO"

    .line 184
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "DBCO_DSDEBITOTIPO"

    .line 185
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "DBCO_TMULTIMAALTERACAO"

    .line 186
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 188
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 190
    :goto_0
    new-instance v14, Lcom/br/ipad/isc/bean/DebitoCobrado;

    invoke-direct {v14}, Lcom/br/ipad/isc/bean/DebitoCobrado;-><init>()V

    .line 191
    invoke-static {v0, v3, v4}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 192
    new-instance v15, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move-object/from16 v17, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v15, v3}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>(Ljava/lang/Integer;)V

    .line 193
    invoke-virtual {v14, v15}, Lcom/br/ipad/isc/bean/DebitoCobrado;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    goto :goto_1

    :cond_0
    move-object/from16 v17, v3

    .line 195
    :goto_1
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/br/ipad/isc/bean/DebitoCobrado;->setId(Ljava/lang/Integer;)V

    .line 196
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/br/ipad/isc/bean/DebitoCobrado;->setDescricaoDebitoTipo(Ljava/lang/String;)V

    .line 197
    invoke-static {v0, v5, v6}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/br/ipad/isc/bean/DebitoCobrado;->setCodigoDebito(Ljava/lang/Integer;)V

    .line 198
    invoke-static {v0, v9, v10}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/br/ipad/isc/bean/DebitoCobrado;->setIndicadorUso(Ljava/lang/Integer;)V

    .line 199
    invoke-static {v0, v7, v8}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/br/ipad/isc/bean/DebitoCobrado;->setValor(Ljava/math/BigDecimal;)V

    .line 200
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/br/ipad/isc/bean/DebitoCobrado;->setUltimaAlteracao(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v3, v17

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    :goto_2
    return-object v13
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 153
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 155
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getCodigoDebito()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DBCO_CDDEBITO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getDescricaoDebitoTipo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DBCO_DSDEBITOTIPO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMOV_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getValor()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getValor()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DBCO_VALOR"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getIndicadorUso()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DBCO_ICUSO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DBCO_TMULTIMAALTERACAO"

    .line 170
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setCodigoDebito(Ljava/lang/Integer;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/br/ipad/isc/bean/DebitoCobrado;->codigoDebito:Ljava/lang/Integer;

    return-void
.end method

.method public setDescricaoDebitoTipo(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/br/ipad/isc/bean/DebitoCobrado;->descricaoDebitoTipo:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/br/ipad/isc/bean/DebitoCobrado;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/DebitoCobrado;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorUso(Ljava/lang/Integer;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/br/ipad/isc/bean/DebitoCobrado;->indicadorUso:Ljava/lang/Integer;

    return-void
.end method

.method public setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/br/ipad/isc/bean/DebitoCobrado;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/DebitoCobrado;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method

.method public setValor(Ljava/math/BigDecimal;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/br/ipad/isc/bean/DebitoCobrado;->valor:Ljava/math/BigDecimal;

    return-void
.end method

.method public setVolumeDebito(Ljava/math/BigDecimal;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/br/ipad/isc/bean/DebitoCobrado;->volumeDebito:Ljava/math/BigDecimal;

    return-void
.end method
