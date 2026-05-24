.class public Lcom/br/ipad/isc/gui/GuiaActivity;
.super Lcom/br/ipad/isc/gui/HidrometroBaseActivity;
.source "GuiaActivity.java"


# instance fields
.field protected endereco:Landroid/widget/TextView;

.field private tipoDebito:Landroid/widget/TextView;

.field private valor:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
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

    const v0, 0x7f0a0024

    return v0
.end method

.method protected getLeitura()Landroid/widget/EditText;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProximaIntent()Landroid/content/Intent;
    .locals 2

    .line 39
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

    .line 130
    invoke-super {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->onResume()V

    .line 131
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/GuiaActivity;->setUpWidgets()V

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
    .locals 4

    const v0, 0x7f070108

    .line 74
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/GuiaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/GuiaActivity;->status:Landroid/widget/ImageView;

    const v0, 0x7f0700c9

    .line 76
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/GuiaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/br/ipad/isc/gui/GuiaActivity;->nomeEndereco:Landroid/widget/TextView;

    .line 78
    sget-object v0, Lcom/br/ipad/isc/gui/GuiaActivity;->nomeEndereco:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 79
    sget-object v0, Lcom/br/ipad/isc/gui/GuiaActivity;->nomeEndereco:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 83
    iget-object v0, p0, Lcom/br/ipad/isc/gui/GuiaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIcImpressaoGuiaLixo()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/br/ipad/isc/gui/GuiaActivity;->status:Landroid/widget/ImageView;

    const v1, 0x7f060092

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/GuiaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIcImpressaoGuiaLixo()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/br/ipad/isc/gui/GuiaActivity;->status:Landroid/widget/ImageView;

    const v1, 0x7f060090

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/GuiaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/br/ipad/isc/gui/GuiaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0700dc

    .line 97
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/GuiaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Condom\u00ednio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/br/ipad/isc/gui/GuiaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicaoImovelCondominio()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v3

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/SistemaParametros;->getQtdImovelCondominio()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    sget-object v0, Lcom/br/ipad/isc/gui/GuiaActivity;->nomeEndereco:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :cond_2
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelNaoRevisitado()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    const v0, 0x7f0700e8

    .line 112
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/GuiaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    const v0, 0x7f0700ec

    .line 116
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/GuiaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/GuiaActivity;->rotaFinalizada:Landroid/widget/TextView;

    const v0, 0x7f070078

    .line 117
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/GuiaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/GuiaActivity;->endereco:Landroid/widget/TextView;

    const/16 v1, 0x32

    .line 118
    iget-object v2, p0, Lcom/br/ipad/isc/gui/GuiaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getEnderecoResumido()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/br/ipad/isc/util/Util;->quebraLinhaTexto(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070133

    .line 120
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/GuiaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/GuiaActivity;->valor:Landroid/widget/TextView;

    .line 121
    iget-object v1, p0, Lcom/br/ipad/isc/gui/GuiaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getValorGuiaPagamentoLixo()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->formatarMoedaReal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f07011d

    .line 124
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/GuiaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/GuiaActivity;->tipoDebito:Landroid/widget/TextView;

    .line 125
    iget-object v1, p0, Lcom/br/ipad/isc/gui/GuiaActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDebitoTipoGuiaLixo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected verificarErro()V
    .locals 0

    return-void
.end method
