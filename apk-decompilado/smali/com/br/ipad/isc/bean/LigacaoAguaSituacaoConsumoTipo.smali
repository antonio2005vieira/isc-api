.class public Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "LigacaoAguaSituacaoConsumoTipo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo$LigacaoAguaSituacaoConsumoTipoTipos;,
        Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo$LigacaoAguaSituacaoConsumoTipos;
    }
.end annotation


# static fields
.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private id:Ljava/lang/Integer;

.field private idConsumoTipo:Ljava/lang/Integer;

.field private idLigacaoAguaSituacao:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LACT_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "LAST_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CSTP_ID"

    aput-object v2, v0, v1

    .line 62
    sput-object v0, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->colunas:[Ljava/lang/String;

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
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->insertFromFile(Ljava/util/ArrayList;)V

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

    .line 79
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->setIdString(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 80
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->setIdLigacaoAguaSituacao(Ljava/lang/Integer;)V

    :cond_0
    const/4 v0, 0x3

    .line 83
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->setIdConsumoTipo(Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdConsumoTipo()Ljava/lang/Integer;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->idConsumoTipo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdLigacaoAguaSituacao()Ljava/lang/Integer;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->idLigacaoAguaSituacao:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "lig_agua_sit_cons_tipo"

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
            "Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LACT_ID"

    .line 118
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "LAST_ID"

    .line 119
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "CSTP_ID"

    .line 120
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 122
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 125
    :cond_0
    new-instance v7, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;

    invoke-direct {v7}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;-><init>()V

    .line 127
    invoke-static {p1, v0, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->setId(Ljava/lang/Integer;)V

    .line 128
    invoke-static {p1, v2, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->setIdLigacaoAguaSituacao(Ljava/lang/Integer;)V

    .line 129
    invoke-static {p1, v4, v5}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->setIdConsumoTipo(Ljava/lang/Integer;)V

    .line 131
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    return-object v6
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 107
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LACT_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->getIdLigacaoAguaSituacao()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LAST_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->getIdConsumoTipo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSTP_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdConsumoTipo(Ljava/lang/Integer;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->idConsumoTipo:Ljava/lang/Integer;

    return-void
.end method

.method public setIdLigacaoAguaSituacao(Ljava/lang/Integer;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->idLigacaoAguaSituacao:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->id:Ljava/lang/Integer;

    return-void
.end method
