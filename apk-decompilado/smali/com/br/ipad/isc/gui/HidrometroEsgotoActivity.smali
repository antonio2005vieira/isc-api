.class public Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;
.super Lcom/br/ipad/isc/gui/HidrometroBaseActivity;
.source "HidrometroEsgotoActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAnormalidade()Lcom/br/ipad/isc/bean/LeituraAnormalidade;
    .locals 1

    .line 34
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadePoco:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    return-object v0
.end method

.method protected getAnormalidadeInformada()Landroid/widget/EditText;
    .locals 1

    .line 46
    sget-object v0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->idAnormalidadePoco:Landroid/widget/EditText;

    return-object v0
.end method

.method protected getHidrometro()Lcom/br/ipad/isc/bean/HidrometroInstalado;
    .locals 1

    .line 30
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    return-object v0
.end method

.method protected getLayout()I
    .locals 1

    const v0, 0x7f0a0025

    return v0
.end method

.method protected getLeitura()Landroid/widget/EditText;
    .locals 1

    .line 38
    sget-object v0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->leituraPoco:Landroid/widget/EditText;

    return-object v0
.end method

.method public getProximaIntent()Landroid/content/Intent;
    .locals 2

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getSpinnerAnormalidade()Landroid/widget/Spinner;
    .locals 1

    .line 54
    sget-object v0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->anormalidadeSpinnerPoco:Landroid/widget/Spinner;

    return-object v0
.end method

.method protected getTipoLigacao()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected setAnormalidadeInformada(Landroid/widget/EditText;)V
    .locals 0

    .line 50
    sput-object p1, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->idAnormalidadePoco:Landroid/widget/EditText;

    return-void
.end method

.method protected setLeitura(Landroid/widget/EditText;)V
    .locals 0

    .line 42
    sput-object p1, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->leituraPoco:Landroid/widget/EditText;

    return-void
.end method

.method protected setSpinnerAnormalidade(Landroid/widget/Spinner;)V
    .locals 0

    .line 58
    sput-object p1, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->anormalidadeSpinnerPoco:Landroid/widget/Spinner;

    return-void
.end method

.method protected verificarErro()V
    .locals 4

    .line 63
    sget-boolean v0, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;->naoHouveErro:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 64
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v0, :cond_4

    .line 68
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;->getTipoLigacao()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;->leituraAlteradaUnica(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v2, p0, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->atualizarIndicadorImovelCalculado(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;->getLeitura()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;->getLeitura()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeitura(Ljava/lang/Integer;)V

    goto :goto_0

    .line 75
    :cond_1
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeitura(Ljava/lang/Integer;)V

    .line 77
    :goto_0
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadePoco:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    if-eqz v0, :cond_2

    .line 78
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadePoco:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setAnormalidade(Ljava/lang/Integer;)V

    goto :goto_1

    .line 80
    :cond_2
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setAnormalidade(Ljava/lang/Integer;)V

    .line 82
    :goto_1
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/fachada/Fachada;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 84
    sput-boolean v1, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;->naoHouveErro:Z

    const/4 v0, 0x0

    .line 85
    sput-boolean v0, Lcom/br/ipad/isc/gui/TabsActivity;->fotoAgua:Z

    goto :goto_2

    .line 87
    :cond_3
    sget-boolean v0, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;->naoHouveErro:Z

    if-nez v0, :cond_4

    sput-boolean v1, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;->naoHouveErro:Z

    :cond_4
    :goto_2
    return-void
.end method
