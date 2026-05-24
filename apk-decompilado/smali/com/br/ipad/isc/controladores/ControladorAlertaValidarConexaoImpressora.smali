.class public Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;
.super Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;
.source "ControladorAlertaValidarConexaoImpressora.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorAlertaValidarConexaoImpressora;


# instance fields
.field private imovel:Lcom/br/ipad/isc/bean/ImovelConta;

.field zebra:Lcom/br/ipad/isc/impressao/ZebraUtils;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    .line 22
    new-instance v0, Lcom/br/ipad/isc/impressao/ZebraUtils;

    sget-object v1, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/br/ipad/isc/impressao/ZebraUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->zebra:Lcom/br/ipad/isc/impressao/ZebraUtils;

    return-void
.end method

.method public constructor <init>(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    .line 22
    new-instance v0, Lcom/br/ipad/isc/impressao/ZebraUtils;

    sget-object v1, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/br/ipad/isc/impressao/ZebraUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->zebra:Lcom/br/ipad/isc/impressao/ZebraUtils;

    .line 31
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-void
.end method

.method private direcionarUltimoMicro()V
    .locals 4

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->obterIdUltimoImovelMicro(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v1

    new-instance v2, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v2}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    .line 89
    invoke-virtual {v1, v0, v2}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 91
    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 95
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v2}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 98
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "imovel"

    .line 99
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 100
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    .line 104
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public alertaMensagem()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->direcionarUltimoMicro()V

    return-void
.end method

.method public alertaPerguntaNao()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->direcionarUltimoMicro()V

    return-void
.end method

.method public alertaPerguntaSim()V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->verificarRateioCondominio(Ljava/lang/Integer;)Z

    move-result v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->imprimirConta(Z)V

    goto :goto_1

    .line 62
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const-string v2, "macro"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 64
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->imprimirConta(Z)V

    :goto_1
    return-void
.end method

.method public imprimirConta(Z)V
    .locals 9

    const-string v0, "ISC"

    const v1, 0x7f0b0025

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 115
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getInstance()Lcom/br/ipad/isc/controladores/ControladorImpressao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->enviarContaImpressora()Z

    move-result v3
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/br/ipad/isc/excecoes/StatusImpressoraException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/br/ipad/isc/excecoes/ImpressaoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 133
    iget-object v5, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p0, v5}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->getControladorAlertaValidarConexaoImpressora(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

    move-result-object v5

    .line 134
    sget-object v6, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->context:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v1, v3}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->defineAlerta(ILjava/lang/String;I)Z

    .line 135
    invoke-virtual {v4}, Lcom/br/ipad/isc/excecoes/ImpressaoException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v4}, Lcom/br/ipad/isc/excecoes/ImpressaoException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0

    :catch_1
    move-exception v1

    .line 127
    iget-object v4, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p0, v4}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->getControladorAlertaValidarConexaoImpressora(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

    move-result-object v4

    const/4 v5, 0x2

    .line 128
    sget-object v6, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->context:Landroid/content/Context;

    const v7, 0x7f0b006d

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2, v3}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->defineAlerta(ILjava/lang/String;I)Z

    move-result v3

    .line 129
    invoke-virtual {v1}, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v1}, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0

    :catch_2
    move-exception v4

    .line 119
    iget-object v5, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p0, v5}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->getControladorAlertaValidarConexaoImpressora(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

    move-result-object v5

    .line 120
    sget-object v6, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->context:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v1, v3}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->defineAlerta(ILjava/lang/String;I)Z

    .line 121
    invoke-virtual {v4}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v4}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;->getStackTrace()[Ljava/lang/StackTraceElement;

    :goto_0
    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    .line 144
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getInstance()Lcom/br/ipad/isc/controladores/ControladorImpressao;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->atualizaDadosImpressaoImovel(Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 145
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-static {p1, v0}, Lcom/br/ipad/isc/util/Util;->chamaProximo(Landroid/content/Context;Lcom/br/ipad/isc/bean/ImovelConta;)V

    goto :goto_1

    .line 147
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-static {p1, v0}, Lcom/br/ipad/isc/util/Util;->chamaProximoSemEnviar(Landroid/content/Context;Lcom/br/ipad/isc/bean/ImovelConta;)V

    :cond_1
    :goto_1
    return-void
.end method
