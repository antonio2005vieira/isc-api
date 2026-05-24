.class public Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorSequencialRotaMarcacao.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorSequencialRotaMarcacao;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;


# instance fields
.field private repositorioSequencialRotaMarcacao:Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;
    .locals 2

    .line 31
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;->instance:Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;->instance:Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;

    .line 33
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;

    move-result-object v1

    iput-object v1, v0, Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;->repositorioSequencialRotaMarcacao:Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;

    .line 35
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;->instance:Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;

    return-object v0
.end method


# virtual methods
.method public buscarSequencialRotaMarcacao(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;->repositorioSequencialRotaMarcacao:Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;->buscarSequencialRotaMarcacao(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;

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

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public gravarSequencialRotaMarcacao(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorRotaMarcacaoAtiva()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;-><init>()V

    .line 72
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->setAnoMesReferencia(Ljava/lang/Integer;)V

    .line 73
    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 76
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;->getControladorSequencialRotaMarcacao()Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;

    move-result-object v1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;->buscarSequencialRotaMarcacao(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;

    move-result-object p1

    if-nez p1, :cond_0

    .line 77
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/controladores/ControladorBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    :cond_0
    return-void
.end method

.method public removerTodosSequencialRotaMarcacao()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;->repositorioSequencialRotaMarcacao:Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;->removerTodosSequencialRotaMarcacao()V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 60
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v1, Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;->context:Landroid/content/Context;

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
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;->instance:Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 39
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;->context:Landroid/content/Context;

    return-void
.end method
