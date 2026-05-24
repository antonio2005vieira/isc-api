.class public Lcom/br/ipad/isc/gui/ContaActivity;
.super Lcom/br/ipad/isc/gui/HidrometroBaseActivity;
.source "ContaActivity.java"


# instance fields
.field private anormalidadeEsgoto:Landroid/widget/TextView;

.field private anormalidadeTipo:Landroid/widget/TextView;

.field private consumoAgua:Landroid/widget/TextView;

.field private consumoEsgoto:Landroid/widget/TextView;

.field private consumoTipoAgua:Landroid/widget/TextView;

.field private consumoTipoPoco:Landroid/widget/TextView;

.field private diasConsumo:Landroid/widget/TextView;

.field protected endereco:Landroid/widget/TextView;

.field private indicadorGuiaImpressa:Landroid/widget/TextView;

.field private indicadorGuiaImpressaTextView:Landroid/widget/TextView;

.field private indicadorPossuiGuia:Landroid/widget/TextView;

.field private leituraAgua:Landroid/widget/TextView;

.field private leituraPoco:Landroid/widget/TextView;

.field private valor:Landroid/widget/TextView;

.field private valorAgua:Landroid/widget/TextView;

.field private valorCredito:Landroid/widget/TextView;

.field private valorDebito:Landroid/widget/TextView;

.field private valorEsgoto:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected atualizarHistorico()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getAnormalidade()Lcom/br/ipad/isc/bean/LeituraAnormalidade;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAnormalidadeInformada()Landroid/widget/EditText;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getHidrometro()Lcom/br/ipad/isc/bean/HidrometroInstalado;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLayout()I
    .locals 1

    const v0, 0x7f0a001f

    return v0
.end method

.method protected getLeitura()Landroid/widget/EditText;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProximaIntent()Landroid/content/Intent;
    .locals 2

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getSpinnerAnormalidade()Landroid/widget/Spinner;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTipoLigacao()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .line 256
    invoke-super {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->onResume()V

    .line 257
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/ContaActivity;->setUpWidgets()V

    return-void
.end method

.method protected setAnormalidadeInformada(Landroid/widget/EditText;)V
    .locals 0

    return-void
.end method

.method protected setLeitura(Landroid/widget/EditText;)V
    .locals 0

    return-void
.end method

.method protected setSpinnerAnormalidade(Landroid/widget/Spinner;)V
    .locals 0

    return-void
.end method

.method protected setUpWidgets()V
    .locals 10

    const v0, 0x7f070108

    .line 95
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->status:Landroid/widget/ImageView;

    const v0, 0x7f0700c9

    .line 97
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/br/ipad/isc/gui/ContaActivity;->nomeEndereco:Landroid/widget/TextView;

    .line 99
    sget-object v0, Lcom/br/ipad/isc/gui/ContaActivity;->nomeEndereco:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 100
    sget-object v0, Lcom/br/ipad/isc/gui/ContaActivity;->nomeEndereco:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 104
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelCalculado()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelImpresso()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->status:Landroid/widget/ImageView;

    const v1, 0x7f060092

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelCalculado()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelImpresso()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->status:Landroid/widget/ImageView;

    const v1, 0x7f060090

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const/16 v1, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0700dc

    .line 116
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Condom\u00ednio: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/br/ipad/isc/gui/ContaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicaoImovelCondominio()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v5

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/SistemaParametros;->getQtdImovelCondominio()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    sget-object v0, Lcom/br/ipad/isc/gui/ContaActivity;->nomeEndereco:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    :cond_2
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelNaoRevisitado()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    const v0, 0x7f0700e8

    .line 130
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 131
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v4, p0, Lcom/br/ipad/isc/gui/ContaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 135
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v0

    .line 137
    iget-object v4, p0, Lcom/br/ipad/isc/gui/ContaActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v5, p0, Lcom/br/ipad/isc/gui/ContaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 138
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v4

    const v5, 0x7f0700ec

    .line 140
    invoke-virtual {p0, v5}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/br/ipad/isc/gui/ContaActivity;->rotaFinalizada:Landroid/widget/TextView;

    const v5, 0x7f070078

    .line 141
    invoke-virtual {p0, v5}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/br/ipad/isc/gui/ContaActivity;->endereco:Landroid/widget/TextView;

    const/16 v7, 0x32

    .line 143
    iget-object v8, p0, Lcom/br/ipad/isc/gui/ContaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ImovelConta;->getEnderecoResumido()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/br/ipad/isc/util/Util;->quebraLinhaTexto(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, ""

    if-eqz v0, :cond_9

    const v7, 0x7f0700a4

    .line 149
    invoke-virtual {p0, v7}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/br/ipad/isc/gui/ContaActivity;->leituraAgua:Landroid/widget/TextView;

    .line 150
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 151
    iget-object v7, p0, Lcom/br/ipad/isc/gui/ContaActivity;->leituraAgua:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const v7, 0x7f070061

    .line 154
    invoke-virtual {p0, v7}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/br/ipad/isc/gui/ContaActivity;->consumoAgua:Landroid/widget/TextView;

    .line 155
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 156
    iget-object v7, p0, Lcom/br/ipad/isc/gui/ContaActivity;->consumoAgua:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const v7, 0x7f070063

    .line 159
    invoke-virtual {p0, v7}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/br/ipad/isc/gui/ContaActivity;->consumoTipoAgua:Landroid/widget/TextView;

    .line 160
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 161
    iget-object v7, p0, Lcom/br/ipad/isc/gui/ContaActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/br/ipad/isc/bean/ConsumoTipo;

    invoke-direct {v9}, Lcom/br/ipad/isc/bean/ConsumoTipo;-><init>()V

    invoke-virtual {v7, v8, v9}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v7

    check-cast v7, Lcom/br/ipad/isc/bean/ConsumoTipo;

    if-eqz v7, :cond_6

    .line 163
    iget-object v8, p0, Lcom/br/ipad/isc/gui/ContaActivity;->consumoTipoAgua:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoTipo;->getDescricao()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    const v7, 0x7f070040

    .line 168
    invoke-virtual {p0, v7}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/br/ipad/isc/gui/ContaActivity;->anormalidadeTipo:Landroid/widget/TextView;

    .line 169
    iget-object v7, p0, Lcom/br/ipad/isc/gui/ContaActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v8, p0, Lcom/br/ipad/isc/gui/ContaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarLeituraAnormalidadeImovel(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 171
    iget-object v8, p0, Lcom/br/ipad/isc/gui/ContaActivity;->anormalidadeTipo:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getDescricaoAnormalidadeLeitura()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 173
    :cond_7
    iget-object v7, p0, Lcom/br/ipad/isc/gui/ContaActivity;->anormalidadeTipo:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v7, 0x7f070134

    .line 176
    invoke-virtual {p0, v7}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/br/ipad/isc/gui/ContaActivity;->valorAgua:Landroid/widget/TextView;

    .line 177
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v7

    iget-object v8, p0, Lcom/br/ipad/isc/gui/ContaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorTotal(Ljava/lang/Integer;Ljava/lang/Integer;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 179
    iget-object v7, p0, Lcom/br/ipad/isc/gui/ContaActivity;->valorAgua:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    const v2, 0x7f070072

    .line 182
    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/br/ipad/isc/gui/ContaActivity;->diasConsumo:Landroid/widget/TextView;

    .line 183
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 184
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ContaActivity;->diasConsumo:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    if-eqz v4, :cond_e

    const v0, 0x7f0700a5

    .line 191
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->leituraPoco:Landroid/widget/TextView;

    .line 192
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 193
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->leituraPoco:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    const v0, 0x7f070062

    .line 196
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->consumoEsgoto:Landroid/widget/TextView;

    .line 197
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 198
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->consumoEsgoto:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    const v0, 0x7f070064

    .line 201
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->consumoTipoPoco:Landroid/widget/TextView;

    .line 202
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 203
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/br/ipad/isc/bean/ConsumoTipo;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ConsumoTipo;-><init>()V

    invoke-virtual {v0, v2, v4}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ConsumoTipo;

    if-eqz v0, :cond_c

    .line 205
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ContaActivity;->consumoTipoPoco:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoTipo;->getDescricao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    const v0, 0x7f07003f

    .line 209
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->anormalidadeEsgoto:Landroid/widget/TextView;

    .line 210
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v2, p0, Lcom/br/ipad/isc/gui/ContaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarLeituraAnormalidadeImovel(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 212
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ContaActivity;->anormalidadeEsgoto:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getDescricaoAnormalidadeLeitura()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 214
    :cond_d
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->anormalidadeEsgoto:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const v0, 0x7f070137

    .line 217
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->valorEsgoto:Landroid/widget/TextView;

    .line 218
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    iget-object v2, p0, Lcom/br/ipad/isc/gui/ContaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorTotal(Ljava/lang/Integer;Ljava/lang/Integer;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 220
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ContaActivity;->valorEsgoto:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    const v0, 0x7f070135

    .line 224
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->valorCredito:Landroid/widget/TextView;

    .line 225
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    iget-object v2, p0, Lcom/br/ipad/isc/gui/ContaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorCreditoTotal(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 227
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ContaActivity;->valorCredito:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    const v0, 0x7f070136

    .line 230
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->valorDebito:Landroid/widget/TextView;

    .line 231
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    iget-object v2, p0, Lcom/br/ipad/isc/gui/ContaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorDebitoTotal(Ljava/lang/Integer;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 233
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ContaActivity;->valorDebito:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    const v0, 0x7f070133

    .line 236
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->valor:Landroid/widget/TextView;

    .line 237
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v2

    iget-object v4, p0, Lcom/br/ipad/isc/gui/ContaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorConta(Ljava/lang/Integer;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f07009c

    .line 240
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->indicadorPossuiGuia:Landroid/widget/TextView;

    .line 241
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ContaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdGuiaPagamentoLixo()Ljava/lang/Integer;

    move-result-object v2

    const v4, 0x7f0b0127

    const v5, 0x7f0b0111

    if-eqz v2, :cond_11

    invoke-virtual {p0, v4}, Lcom/br/ipad/isc/gui/ContaActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_11
    invoke-virtual {p0, v5}, Lcom/br/ipad/isc/gui/ContaActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f07009a

    .line 244
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->indicadorGuiaImpressa:Landroid/widget/TextView;

    const v0, 0x7f07009b

    .line 245
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/ContaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->indicadorGuiaImpressaTextView:Landroid/widget/TextView;

    .line 246
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdGuiaPagamentoLixo()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 247
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->indicadorGuiaImpressaTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->indicadorGuiaImpressa:Landroid/widget/TextView;

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/br/ipad/isc/gui/ContaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getIcImpressaoGuiaLixo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0, v4}, Lcom/br/ipad/isc/gui/ContaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_12
    invoke-virtual {p0, v5}, Lcom/br/ipad/isc/gui/ContaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 250
    :cond_13
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ContaActivity;->indicadorGuiaImpressaTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method protected verificarErro()V
    .locals 0

    return-void
.end method
