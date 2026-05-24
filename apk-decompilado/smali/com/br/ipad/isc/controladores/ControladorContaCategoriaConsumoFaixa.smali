.class public Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorContaCategoriaConsumoFaixa.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorContaCategoriaConsumoFaixa;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;


# instance fields
.field private repositorioContaCategoriaConsumoFaixa:Lcom/br/ipad/isc/repositorios/RepositorioContaCategoriaConsumoFaixa;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;
    .locals 2

    .line 31
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;->instance:Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;->instance:Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;

    .line 33
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioContaCategoriaConsumoFaixa;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioContaCategoriaConsumoFaixa;

    move-result-object v1

    iput-object v1, v0, Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;->repositorioContaCategoriaConsumoFaixa:Lcom/br/ipad/isc/repositorios/RepositorioContaCategoriaConsumoFaixa;

    .line 36
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;->instance:Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;

    return-object v0
.end method


# virtual methods
.method public buscarContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;->repositorioContaCategoriaConsumoFaixa:Lcom/br/ipad/isc/repositorios/RepositorioContaCategoriaConsumoFaixa;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioContaCategoriaConsumoFaixa;->buscarContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 48
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public obterTotalConsumoContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;->repositorioContaCategoriaConsumoFaixa:Lcom/br/ipad/isc/repositorios/RepositorioContaCategoriaConsumoFaixa;

    .line 57
    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioContaCategoriaConsumoFaixa;->obterTotalConsumoContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 60
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public obterTotalValorTarifaContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;->repositorioContaCategoriaConsumoFaixa:Lcom/br/ipad/isc/repositorios/RepositorioContaCategoriaConsumoFaixa;

    .line 70
    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioContaCategoriaConsumoFaixa;->obterTotalValorTarifaContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 73
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;->instance:Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 40
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;->context:Landroid/content/Context;

    return-void
.end method
