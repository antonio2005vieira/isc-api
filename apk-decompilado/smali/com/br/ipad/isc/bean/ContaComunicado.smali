.class public Lcom/br/ipad/isc/bean/ContaComunicado;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "ContaComunicado.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/ContaComunicado$ContaComunicadosTipos;,
        Lcom/br/ipad/isc/bean/ContaComunicado$ContaComunicados;
    }
.end annotation


# static fields
.field public static CONJUNTO_CARACTERE_ENTER:Ljava/lang/String; = "<brbr>"

.field public static INICIO_LINHA:Ljava/lang/String; = ""

.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private descricao:Ljava/lang/String;

.field private id:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "COMU_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "COMU_DSDESCRICAO"

    aput-object v2, v0, v1

    .line 37
    sput-object v0, Lcom/br/ipad/isc/bean/ContaComunicado;->colunas:[Ljava/lang/String;

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
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/bean/ContaComunicado;->insertFromFile(Ljava/util/ArrayList;)V

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

    .line 61
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ContaComunicado;->setId(Ljava/lang/Integer;)V

    const/4 v0, 0x2

    .line 62
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/ContaComunicado;->setDescricao(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/br/ipad/isc/bean/ContaComunicado;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getDescricao()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaComunicado;->descricao:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaComunicado;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "conta_comunicado"

    return-object v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ContaComunicado;",
            ">;"
        }
    .end annotation

    const-string v0, "COMU_ID"

    .line 76
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "COMU_DSDESCRICAO"

    .line 77
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 79
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    :cond_0
    new-instance v4, Lcom/br/ipad/isc/bean/ContaComunicado;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ContaComunicado;-><init>()V

    .line 84
    invoke-static {p1, v0, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/br/ipad/isc/bean/ContaComunicado;->setId(Ljava/lang/Integer;)V

    .line 85
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/br/ipad/isc/bean/ContaComunicado;->setDescricao(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return-object v3
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 66
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 67
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaComunicado;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "COMU_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ContaComunicado;->getDescricao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COMU_DSDESCRICAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setDescricao(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaComunicado;->descricao:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaComunicado;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 107
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaComunicado;->id:Ljava/lang/Integer;

    return-void
.end method
