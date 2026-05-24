.class public Lcom/br/ipad/isc/repositorios/RepositorioFaturamentoSituacaoTipo;
.super Lcom/br/ipad/isc/repositorios/RepositorioBasico;
.source "RepositorioFaturamentoSituacaoTipo.java"

# interfaces
.implements Lcom/br/ipad/isc/repositorios/IRepositorioFaturamentoSituacaoTipo;


# static fields
.field private static instancia:Lcom/br/ipad/isc/repositorios/RepositorioFaturamentoSituacaoTipo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/repositorios/RepositorioFaturamentoSituacaoTipo;
    .locals 1

    .line 13
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioFaturamentoSituacaoTipo;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioFaturamentoSituacaoTipo;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/br/ipad/isc/repositorios/RepositorioFaturamentoSituacaoTipo;

    invoke-direct {v0}, Lcom/br/ipad/isc/repositorios/RepositorioFaturamentoSituacaoTipo;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/repositorios/RepositorioFaturamentoSituacaoTipo;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioFaturamentoSituacaoTipo;

    .line 16
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioFaturamentoSituacaoTipo;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioFaturamentoSituacaoTipo;

    return-object v0
.end method


# virtual methods
.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/br/ipad/isc/repositorios/RepositorioFaturamentoSituacaoTipo;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioFaturamentoSituacaoTipo;

    return-void
.end method
