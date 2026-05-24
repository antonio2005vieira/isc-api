.class public Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorConsumoAnormalidadeAcao.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorConsumoAnormalidadeAcao;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;


# instance fields
.field private repositorioConsumoAnormalidadeAcao:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;
    .locals 2

    .line 31
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;

    .line 33
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;

    move-result-object v1

    iput-object v1, v0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->repositorioConsumoAnormalidadeAcao:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;

    .line 36
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;

    return-object v0
.end method


# virtual methods
.method public buscarConsumoAnormalidadeAcao(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->repositorioConsumoAnormalidadeAcao:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->buscarConsumoAnormalidadeAcao(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->repositorioConsumoAnormalidadeAcao:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;

    invoke-virtual {p1, p2, p3}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->buscarConsumoAnormalidadeAcao(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 55
    iget-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->repositorioConsumoAnormalidadeAcao:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->buscarConsumoAnormalidadeAcao(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 62
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b001f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public obterConsumoAnormalidadeAcao(IIII)Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 82
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 83
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 82
    invoke-virtual {p0, p3, p1, p2}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->buscarConsumoAnormalidadeAcao(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    .line 87
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getCodigoMesConsecutivo()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p4, p3, :cond_0

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public obterQtdConsumoAnormalidadeAcao(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->buscarConsumoAnormalidadeAcao(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 40
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->context:Landroid/content/Context;

    return-void
.end method
