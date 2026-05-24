.class public Lcom/br/ipad/isc/controladores/ControladorLogFinalizacao;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorLogFinalizacao.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorLogFinalizacao;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorLogFinalizacao;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorLogFinalizacao;
    .locals 1

    .line 29
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorLogFinalizacao;->instance:Lcom/br/ipad/isc/controladores/ControladorLogFinalizacao;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorLogFinalizacao;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorLogFinalizacao;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorLogFinalizacao;->instance:Lcom/br/ipad/isc/controladores/ControladorLogFinalizacao;

    .line 32
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorLogFinalizacao;->instance:Lcom/br/ipad/isc/controladores/ControladorLogFinalizacao;

    return-object v0
.end method


# virtual methods
.method public inserir(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 42
    :try_start_0
    new-instance v0, Lcom/br/ipad/isc/bean/LogFinalizacao;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/LogFinalizacao;-><init>()V

    .line 43
    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/LogFinalizacao;->setCodigoMensagemFinalizacao(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->dataAtual()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/LogFinalizacao;->setDataEnvio(Ljava/util/Date;)V

    .line 45
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

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

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorLogFinalizacao;->context:Landroid/content/Context;

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

    .line 21
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorLogFinalizacao;->instance:Lcom/br/ipad/isc/controladores/ControladorLogFinalizacao;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 36
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorLogFinalizacao;->context:Landroid/content/Context;

    return-void
.end method
