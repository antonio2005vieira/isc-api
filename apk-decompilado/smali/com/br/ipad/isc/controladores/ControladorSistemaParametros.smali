.class public Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorSistemaParametros.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;


# instance fields
.field private repositorioSistemaParametros:Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;
    .locals 2

    .line 32
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->instance:Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->instance:Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;

    .line 34
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;

    move-result-object v1

    iput-object v1, v0, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->repositorioSistemaParametros:Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;

    .line 37
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->instance:Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;

    return-object v0
.end method


# virtual methods
.method public atualizarArquivoCarregadoBD()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->repositorioSistemaParametros:Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->atualizarArquivoCarregadoBD()V

    .line 133
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->resetarInstancia()V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 136
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v1, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public atualizarDadosImovelMacro(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 115
    :try_start_0
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcCondominio()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object p1

    .line 120
    :goto_0
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIdImovelCondominio()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->obterQuantidadeImovelMicro(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 121
    invoke-virtual {p0, p1, v0}, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->atualizarIdQtdImovelCondominioSistemaParametros(Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 126
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public atualizarIdImovelSelecionadoSistemaParametros(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->repositorioSistemaParametros:Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->atualizarIdImovelSelecionadoSistemaParametros(Ljava/lang/Integer;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 196
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 197
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public atualizarIdQtdImovelCondominioSistemaParametros(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->repositorioSistemaParametros:Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->atualizarIdQtdImovelCondominioSistemaParametros(Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 207
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 208
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public atualizarIndicadorRotaMarcacaoAtiva(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 150
    :try_start_0
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->getControladorSequencialRotaMarcacao()Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;->removerTodosSequencialRotaMarcacao()V

    .line 152
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->repositorioSistemaParametros:Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->atualizarIndicadorRotaMarcacaoAtiva(Ljava/lang/Integer;)V

    .line 153
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b011c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->obterQuantidadeRegistroConsumoHistorico()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->repositorioSistemaParametros:Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->atualizarIndicadorRotaMarcacaoAtiva(Ljava/lang/Integer;)V

    .line 160
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b011f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 162
    :cond_1
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b011e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 167
    :goto_0
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->resetarInstancia()V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 171
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 172
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public atualizarQntImoveis()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->repositorioSistemaParametros:Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->atualizarQntImoveis()V

    .line 95
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->resetarInstancia()V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 98
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v1, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public atualizarRoteiroOnlineOffline(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->repositorioSistemaParametros:Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->atualizarRoteiroOnlineOffline(Ljava/lang/Integer;)V

    .line 183
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->resetarInstancia()V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 185
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 186
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public atualizarSistemaParametros(Lcom/br/ipad/isc/bean/SistemaParametros;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->repositorioSistemaParametros:Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->atualizarSistemaParametros(Lcom/br/ipad/isc/bean/SistemaParametros;)V

    .line 58
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->resetarInstancia()V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 61
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buscarSistemaParametro()Lcom/br/ipad/isc/bean/SistemaParametros;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->repositorioSistemaParametros:Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->buscarSistemaParametro()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 49
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v1, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->context:Landroid/content/Context;

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

    .line 24
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->instance:Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 41
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->context:Landroid/content/Context;

    return-void
.end method

.method public validaSenhaAdm(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "mobile"

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public validaSenhaApagar(Ljava/lang/String;)Z
    .locals 3

    .line 69
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    const-string v1, "apagar"

    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "6"

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "caico"

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 74
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
