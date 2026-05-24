.class public Lcom/br/ipad/isc/bean/CreditoRealizado;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "CreditoRealizado.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/CreditoRealizado$CreditoRealizadoTipos;,
        Lcom/br/ipad/isc/bean/CreditoRealizado$CreditosRealizados;
    }
.end annotation


# static fields
.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private codigoCreditoTipo:Ljava/lang/Integer;

.field private descricaoCreditoTipo:Ljava/lang/String;

.field private id:Ljava/lang/Integer;

.field private matricula:Lcom/br/ipad/isc/bean/ImovelConta;

.field private ultimaAlteracao:Ljava/util/Date;

.field private valor:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CRRZ_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "IMOV_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CRRZ_DSCREDITOTIPO"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CRRZ_VALOR"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CRRZ_CDCREDITOTIPO"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CRRZ_TMULTIMAALTERACAO"

    aput-object v2, v0, v1

    .line 79
    sput-object v0, Lcom/br/ipad/isc/bean/CreditoRealizado;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
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

    .line 24
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 25
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/bean/CreditoRealizado;->insertFromFile(Ljava/util/ArrayList;)V

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

    .line 97
    new-instance v0, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    const/4 v1, 0x1

    .line 98
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setId(Ljava/lang/Integer;)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/CreditoRealizado;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    const/4 v0, 0x2

    .line 101
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/CreditoRealizado;->setDescricaoCreditoTipo(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 102
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/CreditoRealizado;->setValor(Ljava/math/BigDecimal;)V

    :cond_0
    const/4 v0, 0x4

    .line 106
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/CreditoRealizado;->setCodigoCreditoTipo(Ljava/lang/Integer;)V

    .line 109
    :cond_1
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/CreditoRealizado;->setUltimaAlteracao(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCodigoCreditoTipo()Ljava/lang/Integer;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/br/ipad/isc/bean/CreditoRealizado;->codigoCreditoTipo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 83
    sget-object v0, Lcom/br/ipad/isc/bean/CreditoRealizado;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getDescricaoCreditoTipo()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/br/ipad/isc/bean/CreditoRealizado;->descricaoCreditoTipo:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/br/ipad/isc/bean/CreditoRealizado;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/br/ipad/isc/bean/CreditoRealizado;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "credito_realizado"

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/br/ipad/isc/bean/CreditoRealizado;->ultimaAlteracao:Ljava/util/Date;

    return-object v0
.end method

.method public getValor()Ljava/math/BigDecimal;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/br/ipad/isc/bean/CreditoRealizado;->valor:Ljava/math/BigDecimal;

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
            "Lcom/br/ipad/isc/bean/CreditoRealizado;",
            ">;"
        }
    .end annotation

    .line 152
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CRRZ_ID"

    .line 153
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "IMOV_ID"

    .line 154
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "CRRZ_CDCREDITOTIPO"

    .line 155
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "CRRZ_VALOR"

    .line 156
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "CRRZ_DSCREDITOTIPO"

    .line 157
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "CRRZ_TMULTIMAALTERACAO"

    .line 158
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 160
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 162
    :cond_0
    new-instance v11, Lcom/br/ipad/isc/bean/CreditoRealizado;

    invoke-direct {v11}, Lcom/br/ipad/isc/bean/CreditoRealizado;-><init>()V

    .line 163
    invoke-static {p1, v2, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 164
    new-instance v12, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>(Ljava/lang/Integer;)V

    .line 165
    invoke-virtual {v11, v12}, Lcom/br/ipad/isc/bean/CreditoRealizado;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 167
    :cond_1
    invoke-static {p1, v0, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/br/ipad/isc/bean/CreditoRealizado;->setId(Ljava/lang/Integer;)V

    .line 168
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/br/ipad/isc/bean/CreditoRealizado;->setDescricaoCreditoTipo(Ljava/lang/String;)V

    .line 169
    invoke-static {p1, v4, v5}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/br/ipad/isc/bean/CreditoRealizado;->setCodigoCreditoTipo(Ljava/lang/Integer;)V

    .line 170
    invoke-static {p1, v6, v7}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/br/ipad/isc/bean/CreditoRealizado;->setValor(Ljava/math/BigDecimal;)V

    .line 171
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/br/ipad/isc/bean/CreditoRealizado;->setUltimaAlteracao(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
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

    .line 135
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 136
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getDescricaoCreditoTipo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CRRZ_DSCREDITOTIPO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getCodigoCreditoTipo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CRRZ_CDCREDITOTIPO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMOV_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getValor()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getValor()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CRRZ_VALOR"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CRRZ_TMULTIMAALTERACAO"

    .line 143
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setCodigoCreditoTipo(Ljava/lang/Integer;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/br/ipad/isc/bean/CreditoRealizado;->codigoCreditoTipo:Ljava/lang/Integer;

    return-void
.end method

.method public setDescricaoCreditoTipo(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/br/ipad/isc/bean/CreditoRealizado;->descricaoCreditoTipo:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/br/ipad/isc/bean/CreditoRealizado;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/CreditoRealizado;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/br/ipad/isc/bean/CreditoRealizado;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/CreditoRealizado;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method

.method public setValor(Ljava/math/BigDecimal;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/br/ipad/isc/bean/CreditoRealizado;->valor:Ljava/math/BigDecimal;

    return-void
.end method
