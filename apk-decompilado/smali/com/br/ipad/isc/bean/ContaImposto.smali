.class public Lcom/br/ipad/isc/bean/ContaImposto;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "ContaImposto.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/ContaImposto$ContaImpostosTipos;,
        Lcom/br/ipad/isc/bean/ContaImposto$ContasImpostos;
    }
.end annotation


# static fields
.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private descricaoImposto:Ljava/lang/String;

.field private id:Ljava/lang/Integer;

.field private matricula:Lcom/br/ipad/isc/bean/ImovelConta;

.field private percentualAlicota:Ljava/math/BigDecimal;

.field private tipoImposto:Ljava/lang/Integer;

.field private ultimaAlteracao:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CNIP_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "IMOV_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "IMTP_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CNIP_DSIMPOSTOTIPO"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CNIP_PCALIQUOTA"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CNIP_TMULTIMAALTERACAO"

    aput-object v2, v0, v1

    .line 80
    sput-object v0, Lcom/br/ipad/isc/bean/ContaImposto;->colunas:[Ljava/lang/String;

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
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/bean/ContaImposto;->insertFromFile(Ljava/util/ArrayList;)V

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

    .line 98
    new-instance v0, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    const/4 v1, 0x1

    .line 99
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setId(Ljava/lang/Integer;)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ContaImposto;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    const/4 v0, 0x2

    .line 102
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ContaImposto;->setTipoImposto(Ljava/lang/Integer;)V

    :cond_0
    const/4 v0, 0x3

    .line 105
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ContaImposto;->setDescricaoImposto(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 106
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/ContaImposto;->setPercentualAlicota(Ljava/math/BigDecimal;)V

    .line 110
    :cond_1
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/ContaImposto;->setUltimaAlteracao(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 84
    sget-object v0, Lcom/br/ipad/isc/bean/ContaImposto;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getDescricaoImposto()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaImposto;->descricaoImposto:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaImposto;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaImposto;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "conta_imposto"

    return-object v0
.end method

.method public getPercentualAlicota()Ljava/math/BigDecimal;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaImposto;->percentualAlicota:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getTipoImposto()Ljava/lang/Integer;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaImposto;->tipoImposto:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaImposto;->ultimaAlteracao:Ljava/util/Date;

    return-object v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ContaImposto;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CNIP_ID"

    .line 154
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "IMOV_ID"

    .line 155
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "IMTP_ID"

    .line 156
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "CNIP_PCALIQUOTA"

    .line 157
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "CNIP_DSIMPOSTOTIPO"

    .line 158
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "CNIP_TMULTIMAALTERACAO"

    .line 159
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 161
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 163
    :cond_0
    new-instance v11, Lcom/br/ipad/isc/bean/ContaImposto;

    invoke-direct {v11}, Lcom/br/ipad/isc/bean/ContaImposto;-><init>()V

    .line 165
    invoke-static {p1, v2, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 166
    new-instance v12, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>(Ljava/lang/Integer;)V

    .line 167
    invoke-virtual {v11, v12}, Lcom/br/ipad/isc/bean/ContaImposto;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 169
    :cond_1
    invoke-static {p1, v0, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/br/ipad/isc/bean/ContaImposto;->setId(Ljava/lang/Integer;)V

    .line 170
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/br/ipad/isc/bean/ContaImposto;->setDescricaoImposto(Ljava/lang/String;)V

    .line 171
    invoke-static {p1, v4, v5}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/br/ipad/isc/bean/ContaImposto;->setTipoImposto(Ljava/lang/Integer;)V

    .line 172
    invoke-static {p1, v6, v7}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/br/ipad/isc/bean/ContaImposto;->setPercentualAlicota(Ljava/math/BigDecimal;)V

    .line 173
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/br/ipad/isc/bean/ContaImposto;->setUltimaAlteracao(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_0

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    :goto_0
    return-object v10
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 137
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 138
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaImposto;->getDescricaoImposto()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CNIP_DSIMPOSTOTIPO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaImposto;->getTipoImposto()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMTP_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaImposto;->getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMOV_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaImposto;->getPercentualAlicota()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaImposto;->getPercentualAlicota()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CNIP_PCALIQUOTA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CNIP_TMULTIMAALTERACAO"

    .line 145
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setDescricaoImposto(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaImposto;->descricaoImposto:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaImposto;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaImposto;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaImposto;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    return-void
.end method

.method public setPercentualAlicota(Ljava/math/BigDecimal;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaImposto;->percentualAlicota:Ljava/math/BigDecimal;

    return-void
.end method

.method public setTipoImposto(Ljava/lang/Integer;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaImposto;->tipoImposto:Ljava/lang/Integer;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaImposto;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method
