.class public Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorImovelRevisitar.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorImovelRevisitar;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;


# instance fields
.field private repositorioImovelRevisitar:Lcom/br/ipad/isc/repositorios/RepositorioImovelRevisitar;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;
    .locals 2

    .line 35
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;->instance:Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;->instance:Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;

    .line 37
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioImovelRevisitar;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioImovelRevisitar;

    move-result-object v1

    iput-object v1, v0, Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;->repositorioImovelRevisitar:Lcom/br/ipad/isc/repositorios/RepositorioImovelRevisitar;

    .line 40
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;->instance:Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;

    return-object v0
.end method


# virtual methods
.method public buscarImovelNaoRevisitado()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ImovelRevisitar;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;->repositorioImovelRevisitar:Lcom/br/ipad/isc/repositorios/RepositorioImovelRevisitar;

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioImovelRevisitar;->buscarImovelNaoRevisitado()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 149
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v1, Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buscarImovelRevisitarPorImovel(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ImovelRevisitar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;->repositorioImovelRevisitar:Lcom/br/ipad/isc/repositorios/RepositorioImovelRevisitar;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioImovelRevisitar;->buscarImovelRevisitarPorImovel(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ImovelRevisitar;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 52
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;->context:Landroid/content/Context;

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

    .line 27
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;->instance:Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 44
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;->context:Landroid/content/Context;

    return-void
.end method

.method public setMatriculasRevisitar(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    const-string v0, "ISC"

    const/16 v1, 0x2c

    .line 61
    :try_start_0
    invoke-static {p1, v1}, Lcom/br/ipad/isc/util/Util;->split(Ljava/lang/String;C)Ljava/util/ArrayList;

    move-result-object p1

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 64
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 65
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 66
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    .line 70
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v5}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v3

    check-cast v3, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 73
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    .line 74
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/br/ipad/isc/bean/ImovelRevisitar;

    invoke-direct {v6}, Lcom/br/ipad/isc/bean/ImovelRevisitar;-><init>()V

    invoke-virtual {v4, v5, v6}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v4

    check-cast v4, Lcom/br/ipad/isc/bean/ImovelRevisitar;

    if-nez v4, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v4

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v4

    .line 79
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v5

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 83
    invoke-virtual {v4, v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeitura(Ljava/lang/Integer;)V

    .line 84
    invoke-virtual {v4, v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setAnormalidade(Ljava/lang/Integer;)V

    .line 85
    invoke-virtual {v4, v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setDataLeitura(Ljava/util/Date;)V

    .line 86
    invoke-virtual {v4, v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAnteriorDigitada(Ljava/lang/Integer;)V

    .line 87
    invoke-virtual {v4, v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setQtdDiasAjustado(Ljava/lang/Integer;)V

    .line 88
    invoke-virtual {v4, v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamento(Ljava/lang/Integer;)V

    .line 89
    invoke-virtual {v4, v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamentoHelper(Ljava/lang/Integer;)V

    .line 91
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    :cond_0
    if-eqz v5, :cond_1

    .line 96
    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeitura(Ljava/lang/Integer;)V

    .line 97
    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setAnormalidade(Ljava/lang/Integer;)V

    .line 98
    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setDataLeitura(Ljava/util/Date;)V

    .line 99
    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAnteriorDigitada(Ljava/lang/Integer;)V

    .line 100
    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setQtdDiasAjustado(Ljava/lang/Integer;)V

    .line 101
    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamento(Ljava/lang/Integer;)V

    .line 102
    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamentoHelper(Ljava/lang/Integer;)V

    .line 104
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 107
    :cond_1
    invoke-virtual {v3, v6}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoAguaMedidoHistoricoFaturamento(Ljava/lang/Integer;)V

    .line 108
    invoke-virtual {v3, v6}, Lcom/br/ipad/isc/bean/ImovelConta;->setVolumeEsgotoMedidoHistoricoFaturamento(Ljava/lang/Integer;)V

    .line 109
    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelCalculado(Ljava/lang/Integer;)V

    .line 110
    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelEnviado(Ljava/lang/Integer;)V

    .line 111
    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelImpresso(Ljava/lang/Integer;)V

    .line 113
    new-instance v4, Lcom/br/ipad/isc/bean/ImovelRevisitar;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ImovelRevisitar;-><init>()V

    .line 114
    invoke-virtual {v4, v3}, Lcom/br/ipad/isc/bean/ImovelRevisitar;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 115
    sget-object v5, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Lcom/br/ipad/isc/bean/ImovelRevisitar;->setIndicadorRevisitado(Ljava/lang/Integer;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :try_start_1
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J
    :try_end_1
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 119
    :try_start_2
    invoke-virtual {v4}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v4}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 123
    :goto_1
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V
    :try_end_2
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    :catch_1
    move-exception p1

    .line 128
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 129
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
