.class public Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorCreditoRealizado.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorCreditoRealizado;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;


# instance fields
.field private repositorioCreditoRealizado:Lcom/br/ipad/isc/repositorios/RepositorioCreditoRealizado;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;
    .locals 2

    .line 31
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->instance:Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->instance:Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;

    .line 33
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioCreditoRealizado;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioCreditoRealizado;

    move-result-object v1

    iput-object v1, v0, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->repositorioCreditoRealizado:Lcom/br/ipad/isc/repositorios/RepositorioCreditoRealizado;

    .line 36
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->instance:Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;

    return-object v0
.end method


# virtual methods
.method public buscarCreditoRealizadoPorDescricao(Ljava/lang/String;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/CreditoRealizado;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->repositorioCreditoRealizado:Lcom/br/ipad/isc/repositorios/RepositorioCreditoRealizado;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioCreditoRealizado;->buscarCreditoRealizadoPorDescricao(Ljava/lang/String;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/CreditoRealizado;

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

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buscarCreditoRealizadoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/br/ipad/isc/bean/CreditoRealizado;",
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
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->repositorioCreditoRealizado:Lcom/br/ipad/isc/repositorios/RepositorioCreditoRealizado;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioCreditoRealizado;->buscarCreditoRealizadoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;

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

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public obterQntCreditoRealizadoPorImovelId(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->repositorioCreditoRealizado:Lcom/br/ipad/isc/repositorios/RepositorioCreditoRealizado;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioCreditoRealizado;->obterQntCreditoRealizadoPorImovelId(Ljava/lang/Integer;)Ljava/lang/Integer;

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

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public obterValorCreditoTotal(Ljava/lang/Integer;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->repositorioCreditoRealizado:Lcom/br/ipad/isc/repositorios/RepositorioCreditoRealizado;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioCreditoRealizado;->obterValorCreditoTotal(Ljava/lang/Integer;)Ljava/lang/Double;

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

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->context:Landroid/content/Context;

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
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->instance:Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 40
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->context:Landroid/content/Context;

    return-void
.end method
