.class public Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorLeituraAnormalidade.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorLeituraAnormalidade;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;


# instance fields
.field private repositorioLeituraAnormalidade:Lcom/br/ipad/isc/repositorios/RepositorioLeituraAnormalidade;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;
    .locals 2

    .line 31
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;->instance:Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;->instance:Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;

    .line 33
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioLeituraAnormalidade;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioLeituraAnormalidade;

    move-result-object v1

    iput-object v1, v0, Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;->repositorioLeituraAnormalidade:Lcom/br/ipad/isc/repositorios/RepositorioLeituraAnormalidade;

    .line 36
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;->instance:Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;

    return-object v0
.end method


# virtual methods
.method public buscarLeituraAnormalidadeImovel(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LeituraAnormalidade;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;->repositorioLeituraAnormalidade:Lcom/br/ipad/isc/repositorios/RepositorioLeituraAnormalidade;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioLeituraAnormalidade;->buscarLeituraAnormalidadeImovel(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LeituraAnormalidade;

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

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buscarLeituraAnormalidadePorIdComUsoAtivo(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LeituraAnormalidade;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;->repositorioLeituraAnormalidade:Lcom/br/ipad/isc/repositorios/RepositorioLeituraAnormalidade;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioLeituraAnormalidade;->buscarLeituraAnormalidadePorIdComUsoAtivo(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LeituraAnormalidade;

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

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buscarLeiturasAnormalidadesComUsoAtivo()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/LeituraAnormalidade;",
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
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;->repositorioLeituraAnormalidade:Lcom/br/ipad/isc/repositorios/RepositorioLeituraAnormalidade;

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioLeituraAnormalidade;->buscarLeiturasAnormalidadesComUsoAtivo()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 61
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v1, Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;->instance:Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 40
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;->context:Landroid/content/Context;

    return-void
.end method
