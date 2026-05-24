.class public Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;
.super Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;
.source "ControladorAlertaValidarLeitura.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorAlertaValidarLeitura;


# instance fields
.field private hidrometroInstalado:Lcom/br/ipad/isc/bean/HidrometroInstalado;

.field private imovel:Lcom/br/ipad/isc/bean/ImovelConta;

.field private imprimir:Z

.field private proximo:Z

.field private tipoMedicao:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->hidrometroInstalado:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 34
    iput-object p2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 35
    iput p3, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->tipoMedicao:I

    .line 36
    iput-boolean p4, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imprimir:Z

    .line 37
    iput-boolean p5, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->proximo:Z

    return-void
.end method


# virtual methods
.method public alertaMensagem()V
    .locals 3

    .line 180
    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->idMensagem:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    iget v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->tipoMedicao:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->apagaDados(Lcom/br/ipad/isc/bean/ImovelConta;II)V

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->recarrega()V

    return-void
.end method

.method public alertaPerguntaNao()V
    .locals 10

    .line 121
    invoke-super {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getIdMensagem()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_3

    .line 122
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->hidrometroInstalado:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setAnormalidadeFaturadaCaern(Ljava/lang/Integer;)V

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v4

    iget-object v5, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->hidrometroInstalado:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    iget-object v6, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-super {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getIdMensagem()I

    move-result v7

    iget-boolean v8, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imprimir:Z

    iget-boolean v9, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->proximo:Z

    invoke-virtual/range {v4 .. v9}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->validarLeituraMensagem(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-boolean v3, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imprimir:Z

    if-nez v3, :cond_1

    .line 130
    iget-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->proximo:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->chamaProximo(I)V

    goto/16 :goto_1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->chamaAnterior(I)V

    goto/16 :goto_1

    :cond_1
    if-eqz v0, :cond_5

    .line 136
    iget-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imprimir:Z

    if-eqz v0, :cond_5

    .line 137
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->ehUltimoImovelCondominio()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->exbirMensagemImovelCondominioNaoCalculado(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_1

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->getControladorImpressao()Lcom/br/ipad/isc/controladores/ControladorImpressao;

    move-result-object v0

    iget-object v3, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->verificarImpressaoConta(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "imovel"

    .line 147
    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "posicao"

    .line 148
    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 149
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    goto :goto_1

    .line 157
    :cond_3
    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->tipoMedicao:I

    const-string v3, ""

    if-ne v0, v1, :cond_4

    .line 158
    sget-object v0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->idAnormalidadeAgua:Landroid/widget/EditText;

    .line 159
    sget-object v1, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->leituraAgua:Landroid/widget/EditText;

    .line 160
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 164
    :cond_4
    sget-object v0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->idAnormalidadePoco:Landroid/widget/EditText;

    .line 165
    sget-object v1, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->leituraPoco:Landroid/widget/EditText;

    .line 166
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    iget v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->tipoMedicao:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->apagaDados(Lcom/br/ipad/isc/bean/ImovelConta;II)V

    .line 170
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->apagaDados(Lcom/br/ipad/isc/bean/ImovelConta;II)V

    .line 172
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->recarrega()V

    :cond_5
    :goto_1
    return-void
.end method

.method public alertaPerguntaSim()V
    .locals 7

    .line 48
    :try_start_0
    invoke-super {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getIdMensagem()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->hidrometroInstalado:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setAnormalidadeFaturadaCaern(Ljava/lang/Integer;)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v1

    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->hidrometroInstalado:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    iget-object v3, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-super {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getIdMensagem()I

    move-result v4

    iget-boolean v5, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imprimir:Z

    iget-boolean v6, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->proximo:Z

    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->validarLeituraMensagem(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIdImovelCondominio()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getQtdImovelCondominio()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicaoImovelCondominio()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    iget-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imprimir:Z

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->exbirMensagemImovelCondominioNaoCalculado(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 60
    :cond_1
    iget-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->proximo:Z

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->chamaProximo(I)V

    goto/16 :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->chamaAnterior(I)V

    goto/16 :goto_0

    :cond_3
    if-eqz v0, :cond_5

    .line 89
    iget-boolean v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imprimir:Z

    if-nez v1, :cond_5

    .line 91
    iget-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->proximo:Z

    if-eqz v0, :cond_4

    .line 92
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->chamaProximo(I)V

    goto :goto_0

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->chamaAnterior(I)V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 97
    iget-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imprimir:Z

    if-eqz v0, :cond_6

    .line 99
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->getControladorImpressao()Lcom/br/ipad/isc/controladores/ControladorImpressao;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->verificarImpressaoConta(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "imovel"

    .line 106
    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "posicao"

    .line 107
    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 108
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISC"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method

.method public getHidrometroInstalado()Lcom/br/ipad/isc/bean/HidrometroInstalado;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->hidrometroInstalado:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    return-object v0
.end method

.method public getImovel()Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object v0
.end method

.method public getTipoMedicao()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->tipoMedicao:I

    return v0
.end method

.method public recarrega()V
    .locals 3

    .line 188
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;

    .line 191
    sput-boolean v1, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;->naoHouveErro:Z

    .line 192
    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->hidrometroInstalado:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;->recarrega(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/HidrometroInstalado;)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/br/ipad/isc/gui/ContaActivity;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/ContaActivity;

    .line 196
    sput-boolean v1, Lcom/br/ipad/isc/gui/ContaActivity;->naoHouveErro:Z

    .line 197
    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->hidrometroInstalado:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/gui/ContaActivity;->recarrega(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/HidrometroInstalado;)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;

    .line 201
    sput-boolean v1, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;->naoHouveErro:Z

    .line 202
    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->hidrometroInstalado:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;->recarrega(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/HidrometroInstalado;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setHidrometroInstalado(Lcom/br/ipad/isc/bean/HidrometroInstalado;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->hidrometroInstalado:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    return-void
.end method

.method public setImovel(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-void
.end method

.method public setTipoMedicao(I)V
    .locals 0

    .line 226
    iput p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->tipoMedicao:I

    return-void
.end method
