.class public Lcom/br/ipad/isc/bean/ConsumoTipo;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "ConsumoTipo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/ConsumoTipo$ConsumosTiposTipos;,
        Lcom/br/ipad/isc/bean/ConsumoTipo$ConsumosTipos;
    }
.end annotation


# static fields
.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private descricao:Ljava/lang/String;

.field private id:Ljava/lang/Integer;

.field private ultimaAlteracao:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CSTP_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CSTP_DESCRICAO"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CSTP_TMULTIMAALTERACAO"

    aput-object v2, v0, v1

    .line 61
    sput-object v0, Lcom/br/ipad/isc/bean/ConsumoTipo;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
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

    .line 26
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 27
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/bean/ConsumoTipo;->insertFromFile(Ljava/util/ArrayList;)V

    return-void
.end method

.method private insertFromFile(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoTipo;->setIdString(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 94
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/ConsumoTipo;->setDescricao(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/ConsumoTipo;->setUltimaAlteracao(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lcom/br/ipad/isc/bean/ConsumoTipo;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getDescricao()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTipo;->descricao:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTipo;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "consumo_tipo"

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTipo;->ultimaAlteracao:Ljava/util/Date;

    return-object v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoTipo;",
            ">;"
        }
    .end annotation

    const-string v0, "CSTP_ID"

    .line 114
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "CSTP_DESCRICAO"

    .line 115
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "CSTP_TMULTIMAALTERACAO"

    .line 116
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 118
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 121
    :cond_0
    new-instance v5, Lcom/br/ipad/isc/bean/ConsumoTipo;

    invoke-direct {v5}, Lcom/br/ipad/isc/bean/ConsumoTipo;-><init>()V

    .line 123
    invoke-static {p1, v0, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/bean/ConsumoTipo;->setId(Ljava/lang/Integer;)V

    .line 124
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/bean/ConsumoTipo;->setDescricao(Ljava/lang/String;)V

    .line 125
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/bean/ConsumoTipo;->setUltimaAlteracao(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return-object v4
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 101
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 102
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTipo;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSTP_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoTipo;->getDescricao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSTP_DESCRICAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSTP_TMULTIMAALTERACAO"

    .line 105
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setDescricao(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTipo;->descricao:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTipo;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTipo;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTipo;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method
