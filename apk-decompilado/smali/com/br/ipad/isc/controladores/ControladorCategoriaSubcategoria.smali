.class public Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorCategoriaSubcategoria.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorCategoriaSubcategoria;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;


# instance fields
.field private repositorioCategoriaSubcategoria:Lcom/br/ipad/isc/repositorios/RepositorioCategoriaSubcategoria;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;
    .locals 2

    .line 32
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->instance:Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->instance:Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    .line 34
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioCategoriaSubcategoria;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioCategoriaSubcategoria;

    move-result-object v1

    iput-object v1, v0, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->repositorioCategoriaSubcategoria:Lcom/br/ipad/isc/repositorios/RepositorioCategoriaSubcategoria;

    .line 36
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->instance:Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    return-object v0
.end method


# virtual methods
.method public buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/CategoriaSubcategoria;",
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
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->repositorioCategoriaSubcategoria:Lcom/br/ipad/isc/repositorios/RepositorioCategoriaSubcategoria;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioCategoriaSubcategoria;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

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

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public obterCategoriaPrincipal(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->repositorioCategoriaSubcategoria:Lcom/br/ipad/isc/repositorios/RepositorioCategoriaSubcategoria;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioCategoriaSubcategoria;->obterCategoriaPrincipal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 70
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public obterQuantidadeEconomias(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->repositorioCategoriaSubcategoria:Lcom/br/ipad/isc/repositorios/RepositorioCategoriaSubcategoria;

    invoke-virtual {v0, p1, p2, p3}, Lcom/br/ipad/isc/repositorios/RepositorioCategoriaSubcategoria;->obterQuantidadeEconomias(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 81
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b001f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->repositorioCategoriaSubcategoria:Lcom/br/ipad/isc/repositorios/RepositorioCategoriaSubcategoria;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioCategoriaSubcategoria;->obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 59
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->context:Landroid/content/Context;

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

    .line 24
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->instance:Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 40
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->context:Landroid/content/Context;

    return-void
.end method
