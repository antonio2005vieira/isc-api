.class public Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorLigacaoAguaSituacaoConsumoTipo.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorLigacaoAguaSituacaoConsumoTipo;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;


# instance fields
.field private repositorioLigacaoAguaSituacaoConsumoTipo:Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;
    .locals 2

    .line 27
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;->instance:Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;->instance:Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;

    .line 29
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;

    move-result-object v1

    iput-object v1, v0, Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;->repositorioLigacaoAguaSituacaoConsumoTipo:Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;

    .line 32
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;->instance:Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;

    return-object v0
.end method


# virtual methods
.method public pesquisarLigacaoAguaSituacaoConsumoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;->repositorioLigacaoAguaSituacaoConsumoTipo:Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;->pesquisarLigacaoAguaSituacaoConsumoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 44
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;->instance:Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 36
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;->context:Landroid/content/Context;

    return-void
.end method
