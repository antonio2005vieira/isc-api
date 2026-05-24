.class public Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;
.super Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;
.source "ControladorAlertaValidarImpressao.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorAlertaValidarLeitura;


# instance fields
.field private hidrometroInstalado:Lcom/br/ipad/isc/bean/HidrometroInstalado;

.field private imovel:Lcom/br/ipad/isc/bean/ImovelConta;

.field private tipoMedicao:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-void
.end method


# virtual methods
.method public alertaMensagem()V
    .locals 2

    .line 53
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-static {v0, v1}, Lcom/br/ipad/isc/util/Util;->chamaProximo(Landroid/content/Context;Lcom/br/ipad/isc/bean/ImovelConta;)V

    return-void
.end method

.method public alertaPerguntaNao()V
    .locals 0

    return-void
.end method

.method public alertaPerguntaSim()V
    .locals 5

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->getControladorImpressao()Lcom/br/ipad/isc/controladores/ControladorImpressao;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-super {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getIdMensagem()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->verificarImpressaoConta(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-static {v0, v1}, Lcom/br/ipad/isc/util/Util;->chamaProximo(Landroid/content/Context;Lcom/br/ipad/isc/bean/ImovelConta;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISC"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getHidrometroInstalado()Lcom/br/ipad/isc/bean/HidrometroInstalado;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->hidrometroInstalado:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    return-object v0
.end method

.method public getImovel()Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object v0
.end method

.method public getTipoMedicao()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->tipoMedicao:I

    return v0
.end method

.method public setHidrometroInstalado(Lcom/br/ipad/isc/bean/HidrometroInstalado;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->hidrometroInstalado:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    return-void
.end method

.method public setImovel(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-void
.end method

.method public setTipoMedicao(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->tipoMedicao:I

    return-void
.end method
