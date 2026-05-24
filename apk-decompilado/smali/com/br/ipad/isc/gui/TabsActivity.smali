.class public Lcom/br/ipad/isc/gui/TabsActivity;
.super Lcom/br/ipad/isc/gui/BaseTabActivity;
.source "TabsActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field public static abaAtual:Ljava/lang/String; = null

.field public static anormalidade:Lcom/br/ipad/isc/bean/LeituraAnormalidade; = null

.field public static anormalidadeAgua:Lcom/br/ipad/isc/bean/LeituraAnormalidade; = null

.field public static anormalidadePoco:Lcom/br/ipad/isc/bean/LeituraAnormalidade; = null

.field public static chamarProximo:Z = true

.field public static fotoAgua:Z = false

.field public static hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

.field public static hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

.field public static mTabHost:Landroid/widget/TabHost;

.field public static medicaoTipo:Ljava/lang/Integer;


# instance fields
.field private anterior:Landroid/widget/Button;

.field private buttonOrdenarRoteiro:Landroid/widget/Button;

.field protected calcular:Landroid/widget/Button;

.field protected calcularCaern:Landroid/widget/Button;

.field protected calcularCondominio:Landroid/widget/Button;

.field private fachada:Lcom/br/ipad/isc/fachada/Fachada;

.field protected foto:Landroid/widget/Button;

.field protected imovel:Lcom/br/ipad/isc/bean/ImovelConta;

.field protected imprimir:Landroid/widget/Button;

.field protected imprimir2ViaCondominio:Landroid/widget/Button;

.field protected imprimirCaern:Landroid/widget/Button;

.field private mensagemFoto:Ljava/lang/String;

.field private menu:Landroid/widget/Button;

.field private posicao:Landroid/widget/TextView;

.field private proximo:Landroid/widget/Button;

.field private totalImoveis:Landroid/widget/TextView;

.field protected visualizar:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/BaseTabActivity;-><init>()V

    .line 70
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    return-void
.end method

.method static synthetic access$000(Lcom/br/ipad/isc/gui/TabsActivity;)Ljava/lang/Integer;
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->obterTipoMedicao()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/br/ipad/isc/gui/TabsActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->clickBotaoImprimir2ViaCondominio()V

    return-void
.end method

.method static synthetic access$200(Lcom/br/ipad/isc/gui/TabsActivity;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/gui/TabsActivity;->atualizarIndcImovelCondomioNaoCalculado(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/br/ipad/isc/gui/TabsActivity;)Lcom/br/ipad/isc/fachada/Fachada;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    return-object p0
.end method

.method private atualizarIndcImovelCondomioNaoCalculado(Z)V
    .locals 2

    .line 1608
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 1611
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 1612
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->atualizarIndicadorImovelCalculado(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1617
    :cond_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1618
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 1620
    :cond_1
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    .line 1623
    :goto_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    .line 1624
    invoke-virtual {v0, p1, v1}, Lcom/br/ipad/isc/fachada/Fachada;->atualizarIndicadorContinuaImpressao(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1626
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 1627
    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/fachada/Fachada;->atualizarIndicadorImovelCondominioNaoCalculado(Ljava/lang/Integer;)V

    :cond_2
    return-void
.end method

.method private atualizarPosicoes()V
    .locals 3

    const v0, 0x7f070123

    .line 176
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->totalImoveis:Landroid/widget/TextView;

    const v0, 0x7f0700db

    .line 177
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->posicao:Landroid/widget/TextView;

    .line 179
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    if-eqz v1, :cond_0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->totalImoveis:Landroid/widget/TextView;

    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getQtdImoveis()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private clickBotaoImprimir2ViaCondominio()V
    .locals 5

    .line 1441
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir2ViaCondominio:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1443
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->leituraAlterada()Z

    move-result v0

    .line 1446
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v2

    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 1447
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2, v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v2

    check-cast v2, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 1449
    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/br/ipad/isc/fachada/Fachada;->permiteImprimir2ViaImovelMicro(Ljava/lang/Integer;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v2, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v1}, Lcom/br/ipad/isc/fachada/Fachada;->verificarImpressaoConta(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1454
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/br/ipad/isc/gui/TabsActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    goto :goto_0

    .line 1458
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->exibirAlertaLeituraAlterada()V

    .line 1460
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir2ViaCondominio:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private static createTabView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .line 1173
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0a0044

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f07010e

    .line 1174
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1175
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private defineMensagemFotoTipo()V
    .locals 2

    .line 763
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadeAgua:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidade:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 764
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->medicaoTipo:Ljava/lang/Integer;

    const v0, 0x7f0b008a

    .line 765
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->mensagemFoto:Ljava/lang/String;

    .line 768
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadePoco:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidade:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 769
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->medicaoTipo:Ljava/lang/Integer;

    const v0, 0x7f0b008c

    .line 770
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->mensagemFoto:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private desabilitaImprimirLeitura()V
    .locals 6

    .line 1068
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorSistemaLeitura()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1070
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v0, p0}, Lcom/br/ipad/isc/fachada/Fachada;->isMotoralaDefyPro(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0b0133

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-eqz v0, :cond_2

    .line 1072
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1074
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v5, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0, v5}, Lcom/br/ipad/isc/fachada/Fachada;->permiteImprimir(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1076
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1077
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1083
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1087
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1090
    :cond_2
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1092
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v5, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0, v5}, Lcom/br/ipad/isc/fachada/Fachada;->permiteImprimir(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1093
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1094
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1095
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1096
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 1097
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1100
    :cond_3
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1103
    :cond_4
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private exibirBotaoFoto()V
    .locals 5

    .line 1272
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->obterTipoMedicao()Ljava/lang/Integer;

    move-result-object v0

    .line 1274
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v2, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1280
    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 1281
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/br/ipad/isc/fachada/Fachada;->anormalidadeConsumoExigeFoto(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;Ljava/lang/Integer;)Z

    move-result v0

    .line 1283
    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 1284
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/br/ipad/isc/fachada/Fachada;->anormalidadeLeituraExigeFoto(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1291
    :cond_1
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->foto:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 1289
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->foto:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private getProximaIntent()Landroid/content/Intent;
    .locals 2

    .line 1236
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;

    .line 1239
    invoke-virtual {v0}, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;->getProximaIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 1240
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/br/ipad/isc/gui/ContaActivity;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1242
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/ContaActivity;

    .line 1243
    invoke-virtual {v0}, Lcom/br/ipad/isc/gui/ContaActivity;->getProximaIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 1244
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1246
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;

    .line 1247
    invoke-virtual {v0}, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;->getProximaIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private imovelCondominioAlterado()Z
    .locals 7

    .line 1638
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1639
    sget-object v0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->leituraAgua:Landroid/widget/EditText;

    .line 1640
    sget-object v4, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->idAnormalidadeAgua:Landroid/widget/EditText;

    .line 1643
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 1644
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1645
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1647
    :cond_0
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 1648
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1649
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1657
    :goto_0
    sget-object v4, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v4, :cond_5

    .line 1658
    sget-object v4, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->leituraPoco:Landroid/widget/EditText;

    .line 1659
    sget-object v5, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->idAnormalidadePoco:Landroid/widget/EditText;

    .line 1661
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 1662
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1663
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1665
    :cond_3
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 1666
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1667
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 1676
    :goto_1
    sget-object v4, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v4, :cond_6

    sget-object v4, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v4, :cond_6

    const/4 v0, 0x0

    :cond_6
    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_2
    return v1
.end method

.method private obterTipoMedicao()Ljava/lang/Integer;
    .locals 2

    .line 1689
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b012f

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1690
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1691
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b0135

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 1692
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private setKeylistener(Landroid/widget/EditText;)V
    .locals 1

    .line 491
    new-instance v0, Lcom/br/ipad/isc/gui/TabsActivity$9;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/TabsActivity$9;-><init>(Lcom/br/ipad/isc/gui/TabsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private setUpTab()V
    .locals 9

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const-string v2, "imovel"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 190
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 193
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/br/ipad/isc/gui/ContaActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    iget-object v4, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 196
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/br/ipad/isc/gui/GuiaActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    iget-object v5, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 200
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v2

    iget-object v5, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v2

    sput-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 201
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v2

    iget-object v5, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v2

    sput-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 203
    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getIndcParalizacaoLeitura()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 204
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getIndcParalizacaoLeitura()Ljava/lang/Integer;

    move-result-object v2

    sget-object v7, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v2, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    sput-object v5, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 208
    :cond_0
    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getIndcParalizacaoLeitura()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 209
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getIndcParalizacaoLeitura()Ljava/lang/Integer;

    move-result-object v2

    sget-object v7, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v2, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    sput-object v5, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 214
    :cond_1
    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    const v5, 0x7f0b012f

    if-eqz v2, :cond_2

    .line 215
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v7, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->setupTab(Landroid/view/View;Ljava/lang/String;Landroid/content/Intent;)V

    .line 219
    :cond_2
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    const v2, 0x7f0b0135

    if-eqz v0, :cond_3

    .line 220
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v7, v1}, Lcom/br/ipad/isc/gui/TabsActivity;->setupTab(Landroid/view/View;Ljava/lang/String;Landroid/content/Intent;)V

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroConta()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v0, :cond_4

    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v0, :cond_4

    .line 226
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b012e

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4}, Lcom/br/ipad/isc/gui/TabsActivity;->setupTab(Landroid/view/View;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 228
    :cond_4
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v0, :cond_9

    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v0, :cond_9

    .line 229
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelCalculado()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 230
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelImpresso()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 231
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcNaoPermiteImpressao()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 232
    :cond_5
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 233
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    invoke-virtual {v0, v1, v4}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 235
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcRateioRealizado()Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 236
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v4, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sget-boolean v8, Lcom/br/ipad/isc/gui/TabsActivity;->chamarProximo:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v4, v7, v8}, Lcom/br/ipad/isc/fachada/Fachada;->calcularConta(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 239
    :cond_6
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcRateioRealizado()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 240
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicaoImovelCondominio()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getQtdImovelCondominio()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 241
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/br/ipad/isc/gui/TabsActivity;->chamaProximo(Ljava/lang/Integer;Z)V

    goto :goto_0

    .line 244
    :cond_7
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-boolean v6, Lcom/br/ipad/isc/gui/TabsActivity;->chamarProximo:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v4, v6}, Lcom/br/ipad/isc/fachada/Fachada;->calcularConta(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 247
    :cond_8
    :goto_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b012d

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/br/ipad/isc/gui/TabsActivity;->setupTab(Landroid/view/View;Ljava/lang/String;Landroid/content/Intent;)V

    .line 252
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "agua"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 253
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0, v5}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_2

    .line 254
    :cond_a
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "esgoto"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 255
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 258
    :cond_b
    :goto_2
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->escreverLog(Ljava/lang/StringBuilder;)V

    goto :goto_3

    :catch_1
    move-exception v0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/NetworkOnMainThreadException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->escreverLog(Ljava/lang/StringBuilder;)V

    .line 265
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/NetworkOnMainThreadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    .line 261
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/FachadaException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISC"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/FachadaException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private setUpWidgets()V
    .locals 5

    .line 339
    invoke-static {}, Ljava/lang/System;->gc()V

    const v0, 0x7f07007d

    .line 340
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->foto:Landroid/widget/Button;

    .line 341
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->foto:Landroid/widget/Button;

    .line 342
    new-instance v1, Lcom/br/ipad/isc/gui/TabsActivity$1;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/TabsActivity$1;-><init>(Lcom/br/ipad/isc/gui/TabsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070123

    .line 354
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->totalImoveis:Landroid/widget/TextView;

    const v0, 0x7f0700db

    .line 355
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->posicao:Landroid/widget/TextView;

    const v0, 0x7f0700e3

    .line 357
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->proximo:Landroid/widget/Button;

    const/16 v1, 0x2d

    .line 358
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    .line 359
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->proximo:Landroid/widget/Button;

    const v2, 0x7f060076

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v0, 0x7f070043

    .line 361
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->anterior:Landroid/widget/Button;

    .line 362
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    .line 363
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->anterior:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v0, 0x7f0700c0

    .line 365
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->menu:Landroid/widget/Button;

    const v0, 0x7f0700bf

    .line 366
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->buttonOrdenarRoteiro:Landroid/widget/Button;

    .line 368
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDescricaoLogradouroFiltrado()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 369
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDescricaoLogradouroFiltrado()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDescricaoLogradouroFiltrado()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Selecione um logradouro..."

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorParImparFiltrado()Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 372
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorParImparFiltrado()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    .line 373
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorParImparFiltrado()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 374
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorParImparFiltrado()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 375
    :cond_1
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorLidoNaoLidoFiltrado()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 376
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorLidoNaoLidoFiltrado()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 377
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorLidoNaoLidoFiltrado()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 378
    :cond_2
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorInverterRoteiroFiltrado()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 379
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorInverterRoteiroFiltrado()Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 382
    :cond_3
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->buttonOrdenarRoteiro:Landroid/widget/Button;

    const v2, 0x7f060074

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 387
    :cond_4
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06006b

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 388
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 389
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    const v0, 0x7f070045

    .line 390
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 391
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->menu:Landroid/widget/Button;

    new-instance v2, Lcom/br/ipad/isc/gui/TabsActivity$2;

    invoke-direct {v2, p0}, Lcom/br/ipad/isc/gui/TabsActivity$2;-><init>(Lcom/br/ipad/isc/gui/TabsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->buttonOrdenarRoteiro:Landroid/widget/Button;

    new-instance v2, Lcom/br/ipad/isc/gui/TabsActivity$3;

    invoke-direct {v2, p0}, Lcom/br/ipad/isc/gui/TabsActivity$3;-><init>(Lcom/br/ipad/isc/gui/TabsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    if-eqz v0, :cond_5

    .line 410
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->posicao:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->totalImoveis:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v3

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/SistemaParametros;->getQtdImovelCondominio()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    :cond_5
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->proximo:Landroid/widget/Button;

    new-instance v1, Lcom/br/ipad/isc/gui/TabsActivity$4;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/TabsActivity$4;-><init>(Lcom/br/ipad/isc/gui/TabsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->anterior:Landroid/widget/Button;

    new-instance v1, Lcom/br/ipad/isc/gui/TabsActivity$5;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/TabsActivity$5;-><init>(Lcom/br/ipad/isc/gui/TabsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070058

    .line 429
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcular:Landroid/widget/Button;

    .line 430
    new-instance v1, Lcom/br/ipad/isc/gui/TabsActivity$6;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/TabsActivity$6;-><init>(Lcom/br/ipad/isc/gui/TabsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07005a

    .line 445
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcularCondominio:Landroid/widget/Button;

    .line 446
    new-instance v1, Lcom/br/ipad/isc/gui/TabsActivity$7;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/TabsActivity$7;-><init>(Lcom/br/ipad/isc/gui/TabsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070139

    .line 463
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->visualizar:Landroid/widget/Button;

    .line 466
    new-instance v1, Lcom/br/ipad/isc/gui/TabsActivity$8;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/TabsActivity$8;-><init>(Lcom/br/ipad/isc/gui/TabsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->setaBotaoImprimir()V

    return-void
.end method

.method private setaBotaoImprimir()V
    .locals 1

    .line 481
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->leituraAgua:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 482
    sget-object v0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->leituraAgua:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->setKeylistener(Landroid/widget/EditText;)V

    .line 484
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->leituraPoco:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 485
    sget-object v0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->leituraPoco:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->setKeylistener(Landroid/widget/EditText;)V

    :cond_1
    return-void
.end method

.method private setupTab(Landroid/view/View;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    .line 274
    sget-object p1, Lcom/br/ipad/isc/gui/TabsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/br/ipad/isc/gui/TabsActivity;->createTabView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 275
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object p1

    .line 276
    sget-object p2, Lcom/br/ipad/isc/gui/TabsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p2, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method private setupTabHost()V
    .locals 1

    const v0, 0x1020012

    .line 101
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    sput-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->mTabHost:Landroid/widget/TabHost;

    .line 102
    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    return-void
.end method

.method private validarDadosLeitura()Z
    .locals 6

    .line 1516
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, ""

    if-eqz v0, :cond_2

    .line 1517
    sget-object v0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->leituraAgua:Landroid/widget/EditText;

    .line 1518
    sget-object v4, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->idAnormalidadeAgua:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1520
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v4, :cond_1

    .line 1521
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 1527
    :goto_0
    sget-object v4, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v4, :cond_5

    .line 1528
    sget-object v4, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->leituraPoco:Landroid/widget/EditText;

    .line 1529
    sget-object v5, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->idAnormalidadePoco:Landroid/widget/EditText;

    if-eqz v4, :cond_3

    .line 1531
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    if-eqz v5, :cond_4

    .line 1532
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method private verificarBloqueioRecalcularConta()V
    .locals 2

    .line 1253
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->verificarBloqueioRecalcularConta(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcular:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1255
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcularCaern:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected atualizarHidrometro(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/LeituraAnormalidade;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1206
    sget-object p3, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->leituraAgua:Landroid/widget/EditText;

    goto :goto_0

    .line 1208
    :cond_0
    sget-object p3, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->leituraPoco:Landroid/widget/EditText;

    .line 1211
    :goto_0
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1212
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeitura(Ljava/lang/Integer;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 1215
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1216
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeitura(Ljava/lang/Integer;)V

    goto :goto_1

    .line 1220
    :cond_2
    invoke-virtual {p1, v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeitura(Ljava/lang/Integer;)V

    .line 1221
    invoke-virtual {p1, v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAnteriorDigitada(Ljava/lang/Integer;)V

    :goto_1
    if-eqz p2, :cond_3

    .line 1225
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lez p3, :cond_3

    .line 1226
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setAnormalidade(Ljava/lang/Integer;)V

    goto :goto_2

    .line 1228
    :cond_3
    invoke-virtual {p1, v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setAnormalidade(Ljava/lang/Integer;)V

    .line 1231
    :goto_2
    iget-object p2, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/fachada/Fachada;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    return-void
.end method

.method public atualizarHistorico()V
    .locals 3

    .line 1193
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v0, :cond_0

    .line 1194
    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadeAgua:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/br/ipad/isc/gui/TabsActivity;->atualizarHidrometro(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/LeituraAnormalidade;I)V

    .line 1196
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v0, :cond_1

    .line 1197
    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadePoco:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/br/ipad/isc/gui/TabsActivity;->atualizarHidrometro(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/LeituraAnormalidade;I)V

    :cond_1
    return-void
.end method

.method public chamaProximo(Ljava/lang/Integer;Z)V
    .locals 5

    const/4 v0, 0x2

    .line 857
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    .line 853
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    .line 784
    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 786
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->validarDadosLeitura()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 794
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->validarFoto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {p0, p1, p2}, Lcom/br/ipad/isc/gui/TabsActivity;->validaChamaProximo(Ljava/lang/Integer;Z)V

    goto/16 :goto_2

    .line 797
    :cond_0
    sput-boolean v2, Lcom/br/ipad/isc/gui/TabsActivity;->fotoAgua:Z

    goto/16 :goto_2

    .line 801
    :cond_1
    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelCalculado()Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 803
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 805
    sget-object v4, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v4, :cond_2

    .line 806
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    :cond_2
    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v1, :cond_3

    .line 810
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 814
    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v3}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorAlertaValidarErro()Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;

    move-result-object v3

    .line 815
    iget-object v4, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;->apagaDados(Lcom/br/ipad/isc/bean/ImovelConta;II)V

    goto :goto_0

    .line 820
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/br/ipad/isc/gui/TabsActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    goto/16 :goto_2

    .line 825
    :cond_5
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v0

    if-nez v0, :cond_d

    .line 826
    invoke-virtual {p0, p1, p2}, Lcom/br/ipad/isc/gui/TabsActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    goto :goto_2

    .line 831
    :cond_6
    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 833
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->validarDadosLeitura()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 841
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->validarFoto()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 842
    invoke-virtual {p0, p1, p2}, Lcom/br/ipad/isc/gui/TabsActivity;->validaChamaAnterior(Ljava/lang/Integer;Z)V

    goto :goto_2

    .line 844
    :cond_7
    sput-boolean v2, Lcom/br/ipad/isc/gui/TabsActivity;->fotoAgua:Z

    goto :goto_2

    .line 848
    :cond_8
    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelCalculado()Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 850
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 852
    sget-object v4, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v4, :cond_9

    .line 853
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    :cond_9
    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v1, :cond_a

    .line 857
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 861
    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v3}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorAlertaValidarErro()Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;

    move-result-object v3

    .line 862
    iget-object v4, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;->apagaDados(Lcom/br/ipad/isc/bean/ImovelConta;II)V

    goto :goto_1

    .line 867
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/br/ipad/isc/gui/TabsActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    goto :goto_2

    .line 872
    :cond_c
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v0

    if-nez v0, :cond_d

    .line 873
    invoke-virtual {p0, p1, p2}, Lcom/br/ipad/isc/gui/TabsActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    :cond_d
    :goto_2
    return-void
.end method

.method public clickBotaoImprimir()V
    .locals 2

    .line 1296
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1297
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1298
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1304
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->validarFoto()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->validarFotoConsumoAnormalidade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1305
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->validarImprimir()V

    .line 1307
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1308
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1309
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1310
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public exibirAlertaLeituraAlterada()V
    .locals 3

    .line 1546
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b003f

    .line 1547
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00a0

    .line 1548
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    .line 1549
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/br/ipad/isc/gui/TabsActivity$13;

    invoke-direct {v2, p0}, Lcom/br/ipad/isc/gui/TabsActivity$13;-><init>(Lcom/br/ipad/isc/gui/TabsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1604
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public imprimirConta()V
    .locals 4

    .line 1464
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->verificarImpressaoConta(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/br/ipad/isc/gui/TabsActivity;->chamaProximo(Ljava/lang/Integer;Z)V

    :cond_0
    return-void
.end method

.method public imprimirGuia()V
    .locals 4

    .line 1472
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->verificarImpressaoGuia(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/br/ipad/isc/gui/TabsActivity;->chamaProximo(Ljava/lang/Integer;Z)V

    :cond_0
    return-void
.end method

.method public iniciarProximaIntent(Ljava/lang/Integer;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 946
    sput-boolean v0, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;->naoHouveErro:Z

    .line 947
    sput-boolean v0, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;->naoHouveErro:Z

    .line 949
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-static {v0, p0}, Lcom/br/ipad/isc/util/Util;->enviaEmBackground(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;)V

    .line 950
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 952
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelContaPosicao(Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p1

    const-string p2, "imovel"

    .line 953
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 955
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->finish()V

    .line 956
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public leituraAlterada()Z
    .locals 8

    .line 290
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v0, :cond_3

    .line 291
    sget-object v0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->leituraAgua:Landroid/widget/EditText;

    .line 292
    sget-object v4, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->idAnormalidadeAgua:Landroid/widget/EditText;

    .line 295
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 296
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v3

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 298
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 299
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v3

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 301
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 309
    :goto_2
    sget-object v4, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v4, :cond_7

    .line 310
    sget-object v4, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->leituraPoco:Landroid/widget/EditText;

    .line 311
    sget-object v5, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->idAnormalidadePoco:Landroid/widget/EditText;

    .line 313
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 314
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_4
    move-object v7, v3

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 316
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 317
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_5
    move-object v7, v3

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 319
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    .line 328
    :goto_5
    sget-object v4, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v4, :cond_8

    sget-object v4, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v4, :cond_8

    .line 329
    iget-object v4, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelCalculado()Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v0, 0x1

    :cond_8
    if-nez v0, :cond_a

    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_6
    return v1
.end method

.method public onBackPressed()V
    .locals 0

    .line 1481
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "posicao"

    .line 110
    invoke-super {p0, p1}, Lcom/br/ipad/isc/gui/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    iget-boolean p1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->execute:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    .line 113
    sput-boolean p1, Lcom/br/ipad/isc/gui/TabsActivity;->chamarProximo:Z

    const/4 v1, 0x0

    .line 114
    sput-boolean v1, Lcom/br/ipad/isc/gui/TabsActivity;->fotoAgua:Z

    const v1, 0x7f0a0043

    .line 116
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/TabsActivity;->setContentView(I)V

    .line 117
    invoke-static {p0}, Lcom/br/ipad/isc/fachada/Fachada;->setContext(Landroid/content/Context;)V

    .line 120
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 121
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "imovel"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/br/ipad/isc/bean/ImovelConta;

    iput-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    if-nez v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarPrimeiroImovel()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v1

    iput-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 126
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Imovel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - Posicao: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 130
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDescricaoLogradouroFiltrado()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - Filtro Logradouro: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v4

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDescricaoLogradouroFiltrado()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_1
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorParImparFiltrado()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - Filtro Par/Impar: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v4

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorParImparFiltrado()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_2
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorLidoNaoLidoFiltrado()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - Filtro Lidosr/N\u00e3o Lodos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v4

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorLidoNaoLidoFiltrado()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_3
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorInverterRoteiroFiltrado()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - Filtro Inverter Roteiro: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v3

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorInverterRoteiroFiltrado()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_4
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v2

    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v2

    check-cast v2, Lcom/br/ipad/isc/bean/ImovelConta;

    iput-object v2, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    if-eqz v2, :cond_7

    if-eqz v2, :cond_5

    .line 145
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 152
    :cond_5
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->setupTabHost()V

    .line 153
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->setUpTab()V

    .line 154
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->setUpWidgets()V

    .line 155
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->atualizarPosicoes()V

    .line 156
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->setUpImprimir()V

    .line 157
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->setUpCalcularCaern()V

    .line 158
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->setUpImprimirCaern()V

    .line 160
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 162
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, v1, p1}, Lcom/br/ipad/isc/gui/TabsActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    .line 165
    :cond_6
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->verificarImovelCondominio()V

    .line 166
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->verificarBloqueioRecalcularConta()V

    .line 167
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->exibirBotaoFoto()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->escreverLog(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 146
    :cond_7
    :goto_0
    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->escreverLog(Ljava/lang/StringBuilder;)V

    .line 147
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/TabsActivity;->startActivity(Landroid/content/Intent;)V

    .line 149
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->finish()V

    :cond_8
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1486
    invoke-super {p0}, Lcom/br/ipad/isc/gui/BaseTabActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1491
    invoke-super {p0}, Lcom/br/ipad/isc/gui/BaseTabActivity;->onResume()V

    const/4 v0, 0x0

    .line 1492
    sput-boolean v0, Lcom/br/ipad/isc/gui/TabsActivity;->fotoAgua:Z

    .line 1494
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1495
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 1496
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1497
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 1498
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->setUpImprimirCaern()V

    .line 1499
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->setUpCalcularCaern()V

    .line 1500
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->verificarImovelCondominio()V

    .line 1501
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->verificarBloqueioRecalcularConta()V

    .line 1502
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->exibirBotaoFoto()V

    .line 1503
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelImpresso()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelImpresso()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1504
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcular:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1505
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcular:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f0b012d

    .line 1260
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1261
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcular:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1263
    :cond_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcular:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1266
    :goto_0
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->verificarBloqueioRecalcularConta()V

    .line 1267
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->exibirBotaoFoto()V

    return-void
.end method

.method public recarrega(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/HidrometroInstalado;)V
    .locals 2

    .line 1180
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->getProximaIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imovel"

    .line 1181
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1182
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "ok"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "agua"

    .line 1183
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "esgoto"

    .line 1185
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1187
    :goto_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->finish()V

    .line 1188
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected setUpCalcularCaern()V
    .locals 0

    return-void
.end method

.method protected setUpImprimir()V
    .locals 2

    const v0, 0x7f070096

    .line 1143
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    const v0, 0x7f070058

    .line 1144
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcular:Landroid/widget/Button;

    .line 1145
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    new-instance v1, Lcom/br/ipad/isc/gui/TabsActivity$11;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/TabsActivity$11;-><init>(Lcom/br/ipad/isc/gui/TabsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070098

    .line 1158
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir2ViaCondominio:Landroid/widget/Button;

    const v0, 0x7f07005a

    .line 1159
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcularCondominio:Landroid/widget/Button;

    .line 1160
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir2ViaCondominio:Landroid/widget/Button;

    new-instance v1, Lcom/br/ipad/isc/gui/TabsActivity$12;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/TabsActivity$12;-><init>(Lcom/br/ipad/isc/gui/TabsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setUpImprimirCaern()V
    .locals 2

    const v0, 0x7f070097

    .line 1113
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    .line 1114
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v0, p0}, Lcom/br/ipad/isc/fachada/Fachada;->isMotoralaDefyPro(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    .line 1116
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    const v1, 0x7f060076

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1117
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1118
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    new-instance v1, Lcom/br/ipad/isc/gui/TabsActivity$10;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/TabsActivity$10;-><init>(Lcom/br/ipad/isc/gui/TabsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public validaCalcular(Z)V
    .locals 8

    .line 524
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->atualizarHistorico()V

    .line 527
    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v1, :cond_0

    .line 528
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v2, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/fachada/Fachada;->validarLeituraMensagem(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 531
    :goto_0
    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v1, :cond_1

    sget-object v3, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v3, :cond_1

    .line 532
    iget-object v2, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v4, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/br/ipad/isc/fachada/Fachada;->validarLeituraMensagem(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    .line 537
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/br/ipad/isc/gui/TabsActivity;->chamaProximo(Ljava/lang/Integer;Z)V

    :cond_2
    return-void
.end method

.method public validaChamaAnterior(Ljava/lang/Integer;Z)V
    .locals 8

    .line 914
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->leituraAlterada()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 916
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->atualizarHistorico()V

    const/4 v0, 0x0

    .line 918
    invoke-direct {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->atualizarIndcImovelCondomioNaoCalculado(Z)V

    .line 921
    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v2, :cond_0

    .line 922
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/fachada/Fachada;->validarLeituraMensagem(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Z

    move-result v0

    .line 925
    :cond_0
    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v1, :cond_1

    sget-object v3, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v3, :cond_1

    .line 926
    iget-object v2, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v4, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/br/ipad/isc/fachada/Fachada;->validarLeituraMensagem(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    .line 930
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v0, :cond_4

    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v0, :cond_4

    .line 933
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/br/ipad/isc/gui/TabsActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    goto :goto_0

    .line 938
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/br/ipad/isc/gui/TabsActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public validaChamaProximo(Ljava/lang/Integer;Z)V
    .locals 8

    .line 883
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->leituraAlterada()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 885
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->atualizarHistorico()V

    const/4 v0, 0x0

    .line 887
    invoke-direct {p0, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->atualizarIndcImovelCondomioNaoCalculado(Z)V

    .line 890
    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v2, :cond_0

    .line 891
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/fachada/Fachada;->validarLeituraMensagem(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Z

    move-result v0

    .line 894
    :cond_0
    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v1, :cond_1

    sget-object v3, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v3, :cond_1

    .line 895
    iget-object v2, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v4, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/br/ipad/isc/fachada/Fachada;->validarLeituraMensagem(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    .line 899
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v0, :cond_4

    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v0, :cond_4

    .line 902
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/br/ipad/isc/gui/TabsActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    goto :goto_0

    .line 906
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/br/ipad/isc/gui/TabsActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public validarCalcularCondominio()V
    .locals 13

    .line 1385
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->verificarBloqueioRecalcularConta(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 1387
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->imovelCondominioAlterado()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1388
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->exibirAlertaLeituraAlterada()V

    const/4 v1, 0x0

    goto :goto_0

    .line 1391
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->atualizarHistorico()V

    const/4 v6, 0x1

    .line 1396
    sget-object v8, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v8, :cond_1

    .line 1397
    iget-object v7, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v9, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const/4 v10, 0x0

    sget-boolean v12, Lcom/br/ipad/isc/gui/TabsActivity;->chamarProximo:Z

    const/4 v11, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/br/ipad/isc/fachada/Fachada;->validarLeituraMensagem(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Z

    move-result v0

    .line 1400
    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v2, :cond_2

    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1407
    :cond_2
    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v2, :cond_3

    sget-object v3, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v3, :cond_3

    .line 1408
    iget-object v2, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v4, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const/4 v5, 0x0

    sget-boolean v7, Lcom/br/ipad/isc/gui/TabsActivity;->chamarProximo:Z

    invoke-virtual/range {v2 .. v7}, Lcom/br/ipad/isc/fachada/Fachada;->validarLeituraMensagem(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Z

    move-result v0

    .line 1411
    :cond_3
    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v2, :cond_4

    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    .line 1419
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v1, :cond_6

    .line 1421
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->verificarBloqueioRecalcularConta(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1430
    :cond_6
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorAlertaValidarErro()Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;

    move-result-object v0

    .line 1431
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p0, v2}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;->exbirMensagemImovelCondominioNaoCalculado(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;Ljava/lang/Integer;)V

    :cond_7
    return-void
.end method

.method public validarFoto()Z
    .locals 12

    .line 1840
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->abaAtual:Ljava/lang/String;

    .line 1842
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1844
    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadeAgua:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v2, :cond_0

    .line 1845
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1848
    :cond_0
    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadePoco:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v2, :cond_1

    .line 1849
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1852
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const-string v2, "ISC"

    const/4 v3, 0x1

    if-nez v1, :cond_a

    .line 1854
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    .line 1855
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1857
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    sput-object v4, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidade:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    if-eqz v4, :cond_2

    .line 1858
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1860
    sget-object v4, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidade:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v4

    .line 1863
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v5

    new-instance v6, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v6}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    .line 1864
    invoke-virtual {v5, v4, v6}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v5

    check-cast v5, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    if-eqz v1, :cond_2

    if-eqz v5, :cond_2

    .line 1866
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorFotoObrigatoria()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1867
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorFotoObrigatoria()Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    .line 1871
    :try_start_0
    sget-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadeAgua:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    const v7, 0x7f0b012f

    if-eqz v6, :cond_3

    sget-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadeAgua:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    sget-object v8, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidade:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f0b0089

    .line 1872
    invoke-virtual {p0, v6}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    .line 1873
    invoke-virtual {p0, v7}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->abaAtual:Ljava/lang/String;

    .line 1874
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sput-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->medicaoTipo:Ljava/lang/Integer;

    .line 1877
    :cond_3
    sget-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadePoco:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    const/4 v8, 0x2

    const v9, 0x7f0b0135

    if-eqz v6, :cond_4

    sget-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v6, :cond_4

    sget-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadePoco:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    sget-object v10, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidade:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x7f0b008b

    .line 1878
    invoke-virtual {p0, v6}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    .line 1879
    invoke-virtual {p0, v9}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->abaAtual:Ljava/lang/String;

    .line 1880
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sput-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->medicaoTipo:Ljava/lang/Integer;

    .line 1883
    :cond_4
    iget-object v6, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v10, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Lcom/br/ipad/isc/gui/TabsActivity;->medicaoTipo:Ljava/lang/Integer;

    invoke-virtual {v6, v10, v11, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarFotosAnormalidadeLeitura(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1885
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/br/ipad/isc/excecoes/NegocioException; {:try_start_0 .. :try_end_0} :catch_2

    if-ge v4, v3, :cond_2

    .line 1889
    :cond_5
    :try_start_1
    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->abaAtual:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1890
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->medicaoTipo:Ljava/lang/Integer;

    .line 1893
    :cond_6
    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->abaAtual:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1894
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->medicaoTipo:Ljava/lang/Integer;

    .line 1897
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/br/ipad/isc/gui/FotoActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1898
    new-instance v4, Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    iget-object v7, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    sget-object v8, Lcom/br/ipad/isc/gui/TabsActivity;->medicaoTipo:Ljava/lang/Integer;

    sget-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidade:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/br/ipad/isc/bean/helpers/CameraHelper;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const-string v6, "helper"

    .line 1899
    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1901
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v4

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v4

    const-string v6, "18"

    .line 1902
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/high16 v4, 0x40000000    # 2.0f

    .line 1903
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1906
    :cond_8
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/TabsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/br/ipad/isc/excecoes/NegocioException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const/4 v1, 0x0

    goto :goto_1

    :catch_1
    move-exception v4

    const/4 v1, 0x0

    goto :goto_2

    :catch_2
    move-exception v4

    .line 1914
    :goto_1
    invoke-virtual {v4}, Lcom/br/ipad/isc/excecoes/NegocioException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    invoke-virtual {v4}, Lcom/br/ipad/isc/excecoes/NegocioException;->printStackTrace()V

    goto/16 :goto_0

    :catch_3
    move-exception v4

    .line 1911
    :goto_2
    invoke-virtual {v4}, Lcom/br/ipad/isc/excecoes/FachadaException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    invoke-virtual {v4}, Lcom/br/ipad/isc/excecoes/FachadaException;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    move v3, v1

    :cond_a
    const-string v0, "Fim Validar Foto Imprimir"

    .line 1921
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public validarFotoConsumoAnormalidade()Z
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "ISC"

    .line 1755
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->abaAtual:Ljava/lang/String;

    .line 1757
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/gui/TabsActivity;->atualizarHistorico()V

    .line 1759
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 1761
    :try_start_0
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v0, :cond_0

    .line 1762
    iget-object v0, v1, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v6, v1, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0, v6, v5}, Lcom/br/ipad/isc/fachada/Fachada;->verificarConsumoAnormalidade(Lcom/br/ipad/isc/bean/ImovelConta;I)Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    .line 1763
    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1764
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v0, :cond_1

    .line 1765
    iget-object v0, v1, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v6, v1, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0, v6, v4}, Lcom/br/ipad/isc/fachada/Fachada;->verificarConsumoAnormalidade(Lcom/br/ipad/isc/bean/ImovelConta;I)Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    .line 1766
    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1769
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    .line 1773
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1775
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x1

    .line 1776
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1778
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    if-eqz v0, :cond_2

    .line 1779
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1780
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v15

    .line 1783
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    new-instance v7, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {v7}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    .line 1784
    invoke-virtual {v0, v15, v7}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    .line 1786
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorFotoAbrigatoria()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1787
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorFotoAbrigatoria()Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    .line 1791
    :try_start_1
    sget-object v8, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    const v9, 0x7f0b0135

    const v10, 0x7f0b012f

    if-eqz v8, :cond_3

    const v8, 0x7f0b0089

    .line 1792
    invoke-virtual {v1, v8}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    .line 1793
    invoke-virtual {v1, v10}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/br/ipad/isc/gui/TabsActivity;->abaAtual:Ljava/lang/String;

    .line 1794
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sput-object v8, Lcom/br/ipad/isc/gui/TabsActivity;->medicaoTipo:Ljava/lang/Integer;

    goto :goto_2

    .line 1796
    :cond_3
    sget-object v8, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v8, :cond_4

    const v8, 0x7f0b008b

    .line 1797
    invoke-virtual {v1, v8}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    .line 1798
    invoke-virtual {v1, v9}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/br/ipad/isc/gui/TabsActivity;->abaAtual:Ljava/lang/String;

    .line 1799
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sput-object v8, Lcom/br/ipad/isc/gui/TabsActivity;->medicaoTipo:Ljava/lang/Integer;

    .line 1802
    :cond_4
    :goto_2
    iget-object v8, v1, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v11, v1, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_IMOVEL:Ljava/lang/Integer;

    sget-object v13, Lcom/br/ipad/isc/gui/TabsActivity;->medicaoTipo:Ljava/lang/Integer;

    invoke-virtual {v8, v11, v12, v13, v15}, Lcom/br/ipad/isc/fachada/Fachada;->buscarFotoAnormalidadeConsumo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;

    move-result-object v8

    .line 1803
    iget-object v11, v1, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v12, v1, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_ANORMALIDADE:Ljava/lang/Integer;

    sget-object v14, Lcom/br/ipad/isc/gui/TabsActivity;->medicaoTipo:Ljava/lang/Integer;

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/br/ipad/isc/fachada/Fachada;->buscarFotoAnormalidadeConsumo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;

    move-result-object v11
    :try_end_1
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v8, :cond_5

    if-nez v11, :cond_2

    .line 1808
    :cond_5
    :try_start_2
    sget-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->abaAtual:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1809
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sput-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->medicaoTipo:Ljava/lang/Integer;

    .line 1812
    :cond_6
    sget-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->abaAtual:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/br/ipad/isc/gui/TabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1813
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sput-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->medicaoTipo:Ljava/lang/Integer;

    .line 1815
    :cond_7
    iget-object v6, v1, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v8, v1, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v6

    sput-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 1816
    iget-object v6, v1, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v8, v1, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v6

    sput-object v6, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 1817
    new-instance v6, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;

    iget-object v9, v1, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 1818
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    sget-object v11, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    sget-object v12, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v8, v6

    move-object/from16 v16, v0

    invoke-direct/range {v8 .. v16}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;IZLjava/lang/Integer;Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    .line 1820
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getDescricao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Deseja confirmar?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1821
    invoke-virtual {v6, v4, v0, v5}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->defineAlerta(ILjava/lang/String;I)Z
    :try_end_2
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v6, 0x0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const/4 v6, 0x0

    goto :goto_3

    :catch_2
    move-exception v0

    .line 1826
    :goto_3
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/FachadaException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/FachadaException;->printStackTrace()V

    goto/16 :goto_1

    :cond_8
    move v5, v6

    :cond_9
    const-string v0, "Fim Validar Foto Imprimir"

    .line 1833
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public validarImprimir()V
    .locals 14

    .line 1315
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroConta()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 1319
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v2, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->verificarBloqueioRecalcularConta(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 1321
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->imovelCondominioAlterado()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1322
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->exibirAlertaLeituraAlterada()V

    goto :goto_0

    .line 1325
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->atualizarHistorico()V

    const/4 v7, 0x1

    .line 1330
    sget-object v9, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v9, :cond_1

    .line 1331
    iget-object v8, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v10, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const/4 v11, 0x0

    sget-boolean v13, Lcom/br/ipad/isc/gui/TabsActivity;->chamarProximo:Z

    const/4 v12, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/br/ipad/isc/fachada/Fachada;->validarLeituraMensagem(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Z

    move-result v0

    .line 1334
    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v1, :cond_2

    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1341
    :cond_2
    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v1, :cond_3

    sget-object v4, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz v4, :cond_3

    .line 1342
    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v5, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const/4 v6, 0x0

    sget-boolean v8, Lcom/br/ipad/isc/gui/TabsActivity;->chamarProximo:Z

    invoke-virtual/range {v3 .. v8}, Lcom/br/ipad/isc/fachada/Fachada;->validarLeituraMensagem(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Z

    move-result v0

    .line 1345
    :cond_3
    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v1, :cond_5

    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v1, :cond_5

    :cond_4
    const/4 v0, 0x1

    .line 1353
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v0, :cond_6

    .line 1355
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->verificarBloqueioRecalcularConta(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1364
    :cond_6
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorAlertaValidarErro()Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;

    move-result-object v0

    .line 1365
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p0, v2}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;->exbirMensagemImovelCondominioNaoCalculado(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_7
    if-nez v0, :cond_8

    .line 1371
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v0, :cond_a

    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v0, :cond_a

    :cond_8
    const-string v0, "ISC"

    const-string v1, "Inicio  Imprimir conta"

    .line 1373
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirConta()V

    goto :goto_1

    .line 1377
    :cond_9
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdGuiaPagamentoLixo()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1378
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirGuia()V

    :cond_a
    :goto_1
    return-void
.end method

.method protected verificaFotoValidada(ZLjava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 513
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    sget-boolean p1, Lcom/br/ipad/isc/gui/TabsActivity;->fotoAgua:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected verificarImovelCondominio()V
    .locals 8

    .line 966
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v0, p0}, Lcom/br/ipad/isc/fachada/Fachada;->isMotoralaDefyPro(Landroid/content/Context;)Z

    move-result v0

    .line 967
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v1, p0}, Lcom/br/ipad/isc/fachada/Fachada;->isMotoralaDefyPro(Landroid/content/Context;)Z

    move-result v1

    .line 969
    iget-object v2, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    .line 972
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v2

    .line 973
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v2

    const-string v6, "18"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 975
    iget-object v6, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcular:Landroid/widget/Button;

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 976
    iget-object v6, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 978
    iget-object v7, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v7, v6}, Lcom/br/ipad/isc/fachada/Fachada;->permiteImprimir2ViaImovelMicro(Ljava/lang/Integer;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 980
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir2ViaCondominio:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 981
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir2ViaCondominio:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 984
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcularCondominio:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 985
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcularCondominio:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 988
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 990
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 991
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_0

    .line 993
    :cond_0
    iget-object v6, p0, Lcom/br/ipad/isc/gui/TabsActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v7, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v6, v7}, Lcom/br/ipad/isc/fachada/Fachada;->permiteImprimir(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 994
    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcularCondominio:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 995
    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcularCondominio:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 996
    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 997
    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 998
    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 999
    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setClickable(Z)V

    if-eqz v2, :cond_1

    .line 1002
    iget-object v2, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir2ViaCondominio:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1003
    iget-object v2, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir2ViaCondominio:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 1007
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    if-eqz v1, :cond_7

    .line 1010
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1016
    :cond_3
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcularCondominio:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1017
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcularCondominio:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1018
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1019
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1020
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1021
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    if-eqz v2, :cond_4

    .line 1024
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir2ViaCondominio:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1025
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir2ViaCondominio:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    if-eqz v0, :cond_7

    .line 1029
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1030
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1037
    :cond_5
    iget-object v2, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcularCondominio:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1038
    iget-object v2, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcularCondominio:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1040
    iget-object v2, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcular:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1041
    iget-object v2, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1042
    iget-object v2, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v0, :cond_6

    .line 1045
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1046
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->imprimirCaern:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_6
    if-eqz v1, :cond_7

    .line 1049
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcularCaern:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1050
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcularCaern:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1056
    :cond_7
    :goto_0
    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v0, :cond_8

    sget-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-nez v0, :cond_8

    .line 1057
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity;->calcular:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1060
    :cond_8
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/TabsActivity;->desabilitaImprimirLeitura()V

    return-void
.end method
