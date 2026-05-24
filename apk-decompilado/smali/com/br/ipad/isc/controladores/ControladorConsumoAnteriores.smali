.class public Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorConsumoAnteriores.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorConsumoAnteriores;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;


# instance fields
.field private repositorioConsumoAnteriores:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;
    .locals 2

    .line 33
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;

    .line 35
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;

    move-result-object v1

    iput-object v1, v0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->repositorioConsumoAnteriores:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;

    .line 38
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;

    return-object v0
.end method


# virtual methods
.method public buscarConsumoAnterioresPorImovelAnoMesPorTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoAnteriores;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->repositorioConsumoAnteriores:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;

    invoke-virtual {v0, p1, p2, p3}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->buscarConsumoAnterioresPorImovelAnoMesPorTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 61
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b001f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buscarConsumoAnterioresPorImovelAnormalidade(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoAnteriores;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->repositorioConsumoAnteriores:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;

    invoke-virtual {v0, p1, p2, p3}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->buscarConsumoAnterioresPorImovelAnormalidade(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 98
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b001f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buscarConsumoAnterioresPorImovelAnormalidade(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/br/ipad/isc/bean/ConsumoAnteriores;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->repositorioConsumoAnteriores:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->buscarConsumoAnterioresPorImovelAnormalidade(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 85
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buscarConsumoAnterioresPorImovelId(Ljava/lang/Integer;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/br/ipad/isc/bean/ConsumoAnteriores;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->repositorioConsumoAnteriores:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->buscarConsumoAnterioresPorImovelId(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 50
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buscarConsumoAnterioresPorImovelTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/br/ipad/isc/bean/ConsumoAnteriores;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->repositorioConsumoAnteriores:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->buscarConsumoAnterioresPorImovelTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 71
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 72
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public obtemOrdemAnormalidade(Lcom/br/ipad/isc/bean/ImovelConta;II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->buscarConsumoAnterioresPorImovelAnormalidade(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    .line 113
    invoke-static {p3, v0}, Lcom/br/ipad/isc/util/Util;->subtrairMesDoAnoMes(II)I

    move-result p3

    .line 115
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnoMesReferencia()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p3, :cond_0

    .line 117
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnormalidadeConsumo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 42
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->context:Landroid/content/Context;

    return-void
.end method
