.class public Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;
.super Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;
.source "ControladorAlertaValidarFoto.java"


# instance fields
.field private anormId:Ljava/lang/Integer;

.field private hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

.field private hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

.field private idConsumoAnormalidade:Ljava/lang/Integer;

.field private imovel:Lcom/br/ipad/isc/bean/ImovelConta;

.field private imprimir:Z

.field private medicaoTipo:Ljava/lang/Integer;

.field private posicao:Ljava/lang/Integer;

.field private proximo:Z

.field private tabsActivity:Lcom/br/ipad/isc/gui/TabsActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 56
    iput-object p2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 57
    iput-object p3, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 58
    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->posicao:Ljava/lang/Integer;

    .line 59
    iput-object p4, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->medicaoTipo:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 45
    iput-object p2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 46
    iput-object p3, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 47
    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->posicao:Ljava/lang/Integer;

    .line 48
    iput-object p4, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->medicaoTipo:Ljava/lang/Integer;

    .line 49
    iput-object p5, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->anormId:Ljava/lang/Integer;

    .line 50
    iput-object p6, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->idConsumoAnormalidade:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/br/ipad/isc/gui/TabsActivity;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;ZZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 30
    iput-object p3, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 31
    iput-object p4, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 32
    iput-object p5, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->posicao:Ljava/lang/Integer;

    .line 33
    iput-boolean p6, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->proximo:Z

    .line 34
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->tabsActivity:Lcom/br/ipad/isc/gui/TabsActivity;

    .line 35
    iput-boolean p7, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->imprimir:Z

    .line 36
    iput-object p8, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->medicaoTipo:Ljava/lang/Integer;

    .line 37
    iput-object p9, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->anormId:Ljava/lang/Integer;

    .line 38
    iput-object p10, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->idConsumoAnormalidade:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public alertaMensagem()V
    .locals 2

    .line 114
    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->idMensagem:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->iniciarCamera()V

    :cond_0
    return-void
.end method

.method public alertaPerguntaNao()V
    .locals 3

    .line 84
    sget-boolean v0, Lcom/br/ipad/isc/gui/TabsActivity;->fotoAgua:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->tabsActivity:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-virtual {v0}, Lcom/br/ipad/isc/gui/TabsActivity;->validarFoto()Z

    goto :goto_0

    .line 89
    :cond_0
    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->idMensagem:I

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->tabsActivity:Lcom/br/ipad/isc/gui/TabsActivity;

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->posicao:Ljava/lang/Integer;

    iget-boolean v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->proximo:Z

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/gui/TabsActivity;->validaChamaProximo(Ljava/lang/Integer;Z)V

    goto :goto_0

    .line 94
    :cond_1
    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->idMensagem:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 96
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->tabsActivity:Lcom/br/ipad/isc/gui/TabsActivity;

    iget-boolean v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->proximo:Z

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/gui/TabsActivity;->validaCalcular(Z)V

    goto :goto_0

    .line 99
    :cond_2
    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->idMensagem:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 101
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->tabsActivity:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-virtual {v0}, Lcom/br/ipad/isc/gui/TabsActivity;->validarImprimir()V

    goto :goto_0

    .line 104
    :cond_3
    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->idMensagem:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 106
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->tabsActivity:Lcom/br/ipad/isc/gui/TabsActivity;

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->posicao:Ljava/lang/Integer;

    iget-boolean v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->proximo:Z

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/gui/TabsActivity;->validaChamaAnterior(Ljava/lang/Integer;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public alertaPerguntaSim()V
    .locals 9

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/br/ipad/isc/gui/FotoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    new-instance v1, Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    iget-object v4, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    iget-object v5, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->medicaoTipo:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->anormId:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->idConsumoAnormalidade:Ljava/lang/Integer;

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/br/ipad/isc/bean/helpers/CameraHelper;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const-string v2, "helper"

    .line 70
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 72
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v1

    const-string v2, "18"

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public getAnormId()Ljava/lang/Integer;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->anormId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHidrometroInstaladoAgua()Lcom/br/ipad/isc/bean/HidrometroInstalado;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    return-object v0
.end method

.method public getHidrometroInstaladoPoco()Lcom/br/ipad/isc/bean/HidrometroInstalado;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    return-object v0
.end method

.method public getIdConsumoAnormalidade()Ljava/lang/Integer;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->idConsumoAnormalidade:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImovel()Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object v0
.end method

.method public getMedicaoTipo()Ljava/lang/Integer;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->medicaoTipo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPosicao()Ljava/lang/Integer;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->posicao:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTabsActivity()Lcom/br/ipad/isc/gui/TabsActivity;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->tabsActivity:Lcom/br/ipad/isc/gui/TabsActivity;

    return-object v0
.end method

.method public iniciarCamera()V
    .locals 9

    .line 203
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/br/ipad/isc/gui/FotoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    new-instance v1, Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    iget-object v4, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    iget-object v5, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->medicaoTipo:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->anormId:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->idConsumoAnormalidade:Ljava/lang/Integer;

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/br/ipad/isc/bean/helpers/CameraHelper;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const-string v2, "helper"

    .line 205
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 207
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v1

    const-string v2, "18"

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public isImprimir()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->imprimir:Z

    return v0
.end method

.method public isProximo()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->proximo:Z

    return v0
.end method

.method public setAnormId(Ljava/lang/Integer;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->anormId:Ljava/lang/Integer;

    return-void
.end method

.method public setHidrometroInstaladoAgua(Lcom/br/ipad/isc/bean/HidrometroInstalado;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    return-void
.end method

.method public setHidrometroInstaladoPoco(Lcom/br/ipad/isc/bean/HidrometroInstalado;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    return-void
.end method

.method public setIdConsumoAnormalidade(Ljava/lang/Integer;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->idConsumoAnormalidade:Ljava/lang/Integer;

    return-void
.end method

.method public setImovel(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-void
.end method

.method public setImprimir(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->imprimir:Z

    return-void
.end method

.method public setMedicaoTipo(Ljava/lang/Integer;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->medicaoTipo:Ljava/lang/Integer;

    return-void
.end method

.method public setPosicao(Ljava/lang/Integer;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->posicao:Ljava/lang/Integer;

    return-void
.end method

.method public setProximo(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->proximo:Z

    return-void
.end method

.method public setTabsActivity(Lcom/br/ipad/isc/gui/TabsActivity;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->tabsActivity:Lcom/br/ipad/isc/gui/TabsActivity;

    return-void
.end method
