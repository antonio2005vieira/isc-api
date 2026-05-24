.class public Lcom/br/ipad/isc/controladores/ControladorContaImposto;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorContaImposto.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorContaImposto;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorContaImposto;


# instance fields
.field private repositorioContaImposto:Lcom/br/ipad/isc/repositorios/RepositorioContaImposto;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorContaImposto;
    .locals 2

    .line 32
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorContaImposto;->instance:Lcom/br/ipad/isc/controladores/ControladorContaImposto;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorContaImposto;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorContaImposto;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorContaImposto;->instance:Lcom/br/ipad/isc/controladores/ControladorContaImposto;

    .line 34
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioContaImposto;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioContaImposto;

    move-result-object v1

    iput-object v1, v0, Lcom/br/ipad/isc/controladores/ControladorContaImposto;->repositorioContaImposto:Lcom/br/ipad/isc/repositorios/RepositorioContaImposto;

    .line 36
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorContaImposto;->instance:Lcom/br/ipad/isc/controladores/ControladorContaImposto;

    return-object v0
.end method


# virtual methods
.method public buscarContaImpostoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/br/ipad/isc/bean/ContaImposto;",
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
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorContaImposto;->repositorioContaImposto:Lcom/br/ipad/isc/repositorios/RepositorioContaImposto;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioContaImposto;->buscarContaImpostoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;

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

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorContaImposto;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public obterQntContaImpostoPorImovelId(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorContaImposto;->repositorioContaImposto:Lcom/br/ipad/isc/repositorios/RepositorioContaImposto;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioContaImposto;->obterQntContaImpostoPorImovelId(Ljava/lang/Integer;)Ljava/lang/Integer;

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

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorContaImposto;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public obterValorImpostoTotal(Ljava/lang/Integer;)Ljava/lang/Double;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 68
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/controladores/ControladorContaImposto;->buscarContaImpostoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 76
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/br/ipad/isc/bean/ContaImposto;

    .line 77
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ContaImposto;->getPercentualAlicota()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    add-double/2addr v0, v4

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorContaImposto;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->obterValorContaSemImposto(Ljava/lang/Integer;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v6

    const/4 p1, 0x7

    .line 82
    invoke-static {v0, v1, p1}, Lcom/br/ipad/isc/util/Util;->arredondar(DI)D

    move-result-wide v0

    mul-double v4, v4, v0

    .line 80
    invoke-static {v4, v5, v3}, Lcom/br/ipad/isc/util/Util;->arredondar(DI)D

    move-result-wide v0

    .line 84
    :cond_1
    invoke-static {v0, v1, v3}, Lcom/br/ipad/isc/util/Util;->truncar(DI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorContaImposto;->instance:Lcom/br/ipad/isc/controladores/ControladorContaImposto;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 40
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorContaImposto;->context:Landroid/content/Context;

    return-void
.end method
