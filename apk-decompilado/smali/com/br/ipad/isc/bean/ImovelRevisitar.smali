.class public Lcom/br/ipad/isc/bean/ImovelRevisitar;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "ImovelRevisitar.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/ImovelRevisitar$ImoveisRevisitarTipos;,
        Lcom/br/ipad/isc/bean/ImovelRevisitar$ImoveisRevisitar;
    }
.end annotation


# static fields
.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private id:Ljava/lang/Integer;

.field private indicadorRevisitado:Ljava/lang/Integer;

.field private matricula:Lcom/br/ipad/isc/bean/ImovelConta;

.field private ultimaAlteracao:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "IMRE_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "IMOV_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "IMRE_ICREVISITADO"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "IMRE_TMULTIMAALTERACAO"

    aput-object v2, v0, v1

    .line 58
    sput-object v0, Lcom/br/ipad/isc/bean/ImovelRevisitar;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    return-void
.end method


# virtual methods
.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lcom/br/ipad/isc/bean/ImovelRevisitar;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelRevisitar;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorRevisitado()Ljava/lang/Integer;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelRevisitar;->indicadorRevisitado:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelRevisitar;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "imovel_revisitar"

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelRevisitar;->ultimaAlteracao:Ljava/util/Date;

    return-object v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ImovelRevisitar;",
            ">;"
        }
    .end annotation

    const-string v0, "IMRE_ID"

    .line 105
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "IMOV_ID"

    .line 106
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "IMRE_ICREVISITADO"

    .line 107
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "IMRE_TMULTIMAALTERACAO"

    .line 108
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 110
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 113
    :cond_0
    new-instance v6, Lcom/br/ipad/isc/bean/ImovelRevisitar;

    invoke-direct {v6}, Lcom/br/ipad/isc/bean/ImovelRevisitar;-><init>()V

    .line 114
    invoke-static {p1, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 115
    new-instance v7, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-static {p1, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>(Ljava/lang/Integer;)V

    .line 116
    invoke-virtual {v6, v7}, Lcom/br/ipad/isc/bean/ImovelRevisitar;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 119
    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/br/ipad/isc/bean/ImovelRevisitar;->setId(Ljava/lang/Integer;)V

    .line 120
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/br/ipad/isc/bean/ImovelRevisitar;->setIndicadorRevisitado(Ljava/lang/Integer;)V

    .line 121
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/br/ipad/isc/bean/ImovelRevisitar;->setUltimaAlteracao(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    return-object v5
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 92
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 94
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelRevisitar;->getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMOV_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelRevisitar;->getIndicadorRevisitado()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMRE_ICREVISITADO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMRE_TMULTIMAALTERACAO"

    .line 97
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelRevisitar;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorRevisitado(Ljava/lang/Integer;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelRevisitar;->indicadorRevisitado:Ljava/lang/Integer;

    return-void
.end method

.method public setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelRevisitar;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelRevisitar;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method
