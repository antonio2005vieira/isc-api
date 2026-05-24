.class public Lcom/br/ipad/isc/controladores/ControladorContaCategoria;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorContaCategoria.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorContaCategoria;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorContaCategoria;


# instance fields
.field private repositorioContaCategoria:Lcom/br/ipad/isc/repositorios/RepositorioContaCategoria;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorContaCategoria;
    .locals 2

    .line 29
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->instance:Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->instance:Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    .line 31
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioContaCategoria;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioContaCategoria;

    move-result-object v1

    iput-object v1, v0, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->repositorioContaCategoria:Lcom/br/ipad/isc/repositorios/RepositorioContaCategoria;

    .line 34
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->instance:Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    return-object v0
.end method


# virtual methods
.method public buscarContaCategoriaPorCategoriaSubcategoriaId(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ContaCategoria;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->repositorioContaCategoria:Lcom/br/ipad/isc/repositorios/RepositorioContaCategoria;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioContaCategoria;->buscarContaCategoriaPorCategoriaSubcategoriaId(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ContaCategoria;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 47
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public obterValorTotal(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->repositorioContaCategoria:Lcom/br/ipad/isc/repositorios/RepositorioContaCategoria;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioContaCategoria;->obterValorTotal(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 58
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removerImovelContaCategoria(Ljava/lang/Integer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->repositorioContaCategoria:Lcom/br/ipad/isc/repositorios/RepositorioContaCategoria;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioContaCategoria;->removerImovelContaCategoria(Ljava/lang/Integer;I)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 69
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->context:Landroid/content/Context;

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

    .line 21
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->instance:Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 38
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->context:Landroid/content/Context;

    return-void
.end method
