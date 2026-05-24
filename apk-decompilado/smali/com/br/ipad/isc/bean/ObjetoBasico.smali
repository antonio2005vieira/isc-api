.class public abstract Lcom/br/ipad/isc/bean/ObjetoBasico;
.super Ljava/lang/Object;
.source "ObjetoBasico.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getColunas()[Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/Integer;
.end method

.method public getNameId()Ljava/lang/String;
    .locals 2

    .line 21
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;->getColunas()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public abstract getNomeTabela()Ljava/lang/String;
.end method

.method public abstract preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/br/ipad/isc/bean/ObjetoBasico;",
            ">(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract preencherValues()Landroid/content/ContentValues;
.end method
