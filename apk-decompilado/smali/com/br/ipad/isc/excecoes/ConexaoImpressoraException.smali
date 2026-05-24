.class public Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;
.super Lcom/br/ipad/isc/excecoes/ImpressaoException;
.source "ConexaoImpressoraException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Erro de conex\u00e3o."

    .line 9
    invoke-direct {p0, v0}, Lcom/br/ipad/isc/excecoes/ImpressaoException;-><init>(Ljava/lang/String;)V

    return-void
.end method
