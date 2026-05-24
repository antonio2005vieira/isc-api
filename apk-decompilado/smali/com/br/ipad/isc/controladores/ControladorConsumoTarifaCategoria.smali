.class public Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorConsumoTarifaCategoria.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorConsumoTarifaCategoria;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;


# instance fields
.field private repositorioConsumoTarifaCategoria:Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaCategoria;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;
    .locals 2

    .line 32
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

    .line 34
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaCategoria;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaCategoria;

    move-result-object v1

    iput-object v1, v0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->repositorioConsumoTarifaCategoria:Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaCategoria;

    .line 36
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

    return-object v0
.end method


# virtual methods
.method public buscarConsumoTarifaCategoriaPorCodigo(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;",
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
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->repositorioConsumoTarifaCategoria:Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaCategoria;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaCategoria;->buscarConsumoTarifaCategoriaPorCodigo(Ljava/lang/Integer;)Ljava/util/ArrayList;

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

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buscarConsumoTarifaCategoriaPorIds(Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->repositorioConsumoTarifaCategoria:Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaCategoria;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaCategoria;->buscarConsumoTarifaCategoriaPorIds(Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

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

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buscarConsumosTarifasCategorias(ILjava/util/Date;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->repositorioConsumoTarifaCategoria:Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaCategoria;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaCategoria;->buscarConsumosTarifasCategorias(ILjava/util/Date;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 82
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buscarConsumosTarifasCategorias(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->repositorioConsumoTarifaCategoria:Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaCategoria;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaCategoria;->buscarConsumosTarifasCategorias(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 71
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buscarVigenciasConsumosTarifasCategorias(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->repositorioConsumoTarifaCategoria:Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaCategoria;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaCategoria;->buscarVigenciasConsumosTarifasCategorias(I)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 93
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pesquisarDadosTarifaImovel(ZLjava/lang/String;Ljava/lang/String;ILjava/util/Date;)Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0, p4, p5}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->buscarConsumosTarifasCategorias(ILjava/util/Date;)Ljava/util/ArrayList;

    move-result-object p4

    .line 107
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    if-eqz p1, :cond_1

    .line 111
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p5}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdCategoria()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 112
    invoke-virtual {p5}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdSubcategoria()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {p5}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdSubcategoria()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p5}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdCategoria()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 119
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p5}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdSubcategoria()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_2
    const/4 p5, 0x0

    :cond_3
    :goto_0
    return-object p5
.end method

.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 40
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->context:Landroid/content/Context;

    return-void
.end method
