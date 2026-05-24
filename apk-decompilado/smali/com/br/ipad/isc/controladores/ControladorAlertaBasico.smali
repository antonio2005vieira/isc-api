.class public abstract Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorAlertaBasico.java"


# instance fields
.field protected idMensagem:I

.field private msg:Ljava/lang/String;

.field private resposta:Z

.field private tipo:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract alertaMensagem()V
.end method

.method public abstract alertaPerguntaNao()V
.end method

.method public abstract alertaPerguntaSim()V
.end method

.method public apagaDados(Lcom/br/ipad/isc/bean/ImovelConta;II)V
    .locals 5

    .line 113
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object p1

    check-cast p1, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 114
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelCalculado(Ljava/lang/Integer;)V

    .line 116
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcRateioRealizado(Ljava/lang/Integer;)V

    .line 118
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelImpresso(Ljava/lang/Integer;)V

    .line 122
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    .line 128
    :goto_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->atualizarIndicadorContinuaImpressao(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 131
    :cond_1
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_4

    .line 134
    :try_start_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object p2

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 135
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/br/ipad/isc/controladores/ControladorBasico;->remover(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 139
    :cond_2
    new-instance p2, Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-direct {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;-><init>()V

    .line 140
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getInstance()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object p2

    .line 141
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p1

    if-eqz p1, :cond_7

    if-nez p3, :cond_3

    .line 146
    invoke-virtual {p1, v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeitura(Ljava/lang/Integer;)V

    .line 147
    invoke-virtual {p1, v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamento(Ljava/lang/Integer;)V

    .line 148
    invoke-virtual {p1, v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamentoHelper(Ljava/lang/Integer;)V

    .line 151
    :cond_3
    invoke-virtual {p1, v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setAnormalidade(Ljava/lang/Integer;)V

    .line 152
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    goto :goto_1

    .line 155
    :cond_4
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object p2

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 156
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 157
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/br/ipad/isc/controladores/ControladorBasico;->remover(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 161
    :cond_5
    new-instance p2, Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-direct {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;-><init>()V

    .line 162
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getInstance()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object p2

    .line 163
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p1

    if-eqz p1, :cond_7

    if-nez p3, :cond_6

    .line 168
    invoke-virtual {p1, v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeitura(Ljava/lang/Integer;)V

    .line 170
    :cond_6
    invoke-virtual {p1, v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setAnormalidade(Ljava/lang/Integer;)V

    .line 171
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V
    :try_end_1
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    .line 178
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method

.method public chamaAnterior(I)V
    .locals 3

    .line 195
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    goto :goto_0

    .line 199
    :cond_1
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/br/ipad/isc/gui/ContaActivity;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/ContaActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/br/ipad/isc/gui/ContaActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    goto :goto_0

    .line 202
    :cond_2
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/br/ipad/isc/gui/TabsActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    :goto_0
    return-void
.end method

.method public chamaProximo(I)V
    .locals 3

    .line 183
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    goto :goto_0

    .line 187
    :cond_1
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/br/ipad/isc/gui/ContaActivity;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/ContaActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/br/ipad/isc/gui/ContaActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    goto :goto_0

    .line 190
    :cond_2
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/br/ipad/isc/gui/TabsActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    :goto_0
    return-void
.end method

.method public defineAlerta(ILjava/lang/String;I)Z
    .locals 3

    .line 37
    iput p3, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->idMensagem:I

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 39
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico$1;

    invoke-direct {v2, p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico$1;-><init>(Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 56
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 59
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0b0127

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico$3;

    invoke-direct {p3, p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico$3;-><init>(Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 69
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0b0111

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico$2;

    invoke-direct {p3, p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico$2;-><init>(Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 80
    :cond_1
    iget-boolean p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->resposta:Z

    return p1
.end method

.method public exbirMensagemImovelCondominioNaoCalculado(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 2

    .line 217
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object p3

    .line 218
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object p1

    check-cast p1, Lcom/br/ipad/isc/bean/ImovelConta;

    const/4 p3, 0x1

    .line 221
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 223
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v0

    .line 224
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->obterPosicaoImovelCondominioNaoCalculado(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f0b003f

    .line 228
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p3, 0x0

    .line 229
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x7f0b009f

    .line 230
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x104000a

    .line 231
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico$4;

    invoke-direct {p3, p0, v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico$4;-><init>(Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;Ljava/lang/Integer;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 242
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "macro"

    .line 243
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "indicadorCalcularCondominio"

    .line 244
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 245
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 249
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    .line 250
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getIdMensagem()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->idMensagem:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getTipo()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->tipo:I

    return v0
.end method

.method public setIdMensagem(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->idMensagem:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->msg:Ljava/lang/String;

    return-void
.end method

.method public setTipo(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->tipo:I

    return-void
.end method
