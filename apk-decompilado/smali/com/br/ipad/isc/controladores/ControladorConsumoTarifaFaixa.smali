.class public Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorConsumoTarifaFaixa.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorConsumoTarifaFaixa;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;


# instance fields
.field private repositorioConsumoTarifaFaixa:Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaFaixa;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;
    .locals 2

    .line 32
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;

    .line 34
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaFaixa;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaFaixa;

    move-result-object v1

    iput-object v1, v0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;->repositorioConsumoTarifaFaixa:Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaFaixa;

    .line 37
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;

    return-object v0
.end method


# virtual methods
.method public buscarConsumosTarifaFaixaPorCodigo(ILjava/util/Date;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;->repositorioConsumoTarifaFaixa:Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaFaixa;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaFaixa;->buscarConsumosTarifaFaixaPorCodigo(ILjava/util/Date;)Ljava/util/ArrayList;

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

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buscarConsumosTarifaFaixaPorId(ILjava/util/Date;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;->repositorioConsumoTarifaFaixa:Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaFaixa;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaFaixa;->buscarConsumosTarifaFaixaPorId(ILjava/util/Date;)Ljava/util/ArrayList;

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

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buscarConsumosTarifasFaixasPorTarifaCateg(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;->repositorioConsumoTarifaFaixa:Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaFaixa;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaFaixa;->buscarConsumosTarifasFaixasPorTarifaCateg(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 49
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;->context:Landroid/content/Context;

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
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;

    return-void
.end method

.method public selecionarFaixasCalculoValorFaturadoPorCodigo(ZLjava/lang/Integer;Ljava/lang/Integer;ILjava/util/Date;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-virtual {p0, p4, p5}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;->buscarConsumosTarifaFaixaPorCodigo(ILjava/util/Date;)Ljava/util/ArrayList;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 115
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;

    if-eqz p1, :cond_2

    .line 117
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p5}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoTarifaCategoria()Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdCategoria()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 118
    invoke-virtual {p5}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoTarifaCategoria()Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdSubcategoria()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {p5}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoTarifaCategoria()Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdSubcategoria()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 120
    :cond_1
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p5}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoTarifaCategoria()Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdCategoria()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 124
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 125
    invoke-virtual {p5}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoTarifaCategoria()Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdSubcategoria()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 126
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public selecionarFaixasCalculoValorFaturadoPorId(ZLjava/lang/Integer;Ljava/lang/Integer;ILjava/util/Date;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-virtual {p0, p4, p5}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;->buscarConsumosTarifaFaixaPorId(ILjava/util/Date;)Ljava/util/ArrayList;

    move-result-object p4

    .line 87
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;

    if-eqz p1, :cond_2

    .line 89
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p5}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoTarifaCategoria()Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdCategoria()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 90
    invoke-virtual {p5}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoTarifaCategoria()Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdSubcategoria()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 91
    invoke-virtual {p5}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoTarifaCategoria()Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdSubcategoria()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 92
    :cond_1
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p5}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoTarifaCategoria()Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdCategoria()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 96
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 97
    invoke-virtual {p5}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;->getConsumoTarifaCategoria()Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;->getIdSubcategoria()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 98
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 41
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;->context:Landroid/content/Context;

    return-void
.end method
