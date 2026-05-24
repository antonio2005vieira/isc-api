.class public abstract Lcom/br/ipad/isc/gui/HidrometroBaseActivity;
.super Lcom/br/ipad/isc/gui/BaseActivity;
.source "HidrometroBaseActivity.java"


# static fields
.field public static anormalidadeAdapter:Lcom/br/ipad/isc/adapters/AnormalidadeAdapter; = null

.field public static anormalidadeSpinnerAgua:Landroid/widget/Spinner; = null

.field public static anormalidadeSpinnerPoco:Landroid/widget/Spinner; = null

.field public static idAnormalidadeAgua:Landroid/widget/EditText; = null

.field public static idAnormalidadePoco:Landroid/widget/EditText; = null

.field public static leituraAgua:Landroid/widget/EditText; = null

.field public static leituraPoco:Landroid/widget/EditText; = null

.field public static naoHouveErro:Z = true

.field public static nomeEndereco:Landroid/widget/TextView;


# instance fields
.field protected anormalidadeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/LeituraAnormalidade;",
            ">;"
        }
    .end annotation
.end field

.field protected endereco:Landroid/widget/TextView;

.field protected fachada:Lcom/br/ipad/isc/fachada/Fachada;

.field protected hidrometro:Landroid/widget/TextView;

.field protected hidrometroBase:Lcom/br/ipad/isc/bean/HidrometroInstalado;

.field protected imovel:Lcom/br/ipad/isc/bean/ImovelConta;

.field protected indicadorEmissaoConta:Landroid/widget/TextView;

.field protected inscricao:Landroid/widget/TextView;

.field protected llAlgumRevisitar:Landroid/widget/LinearLayout;

.field private llInscricao:Landroid/widget/LinearLayout;

.field protected llRevisitar:Landroid/widget/LinearLayout;

.field protected localInstalacao:Landroid/widget/TextView;

.field protected localTitle:Landroid/widget/TextView;

.field protected matricula:Landroid/widget/TextView;

.field protected posicao:Landroid/widget/TextView;

.field private rota:Landroid/widget/TextView;

.field protected rotaFinalizada:Landroid/widget/TextView;

.field protected status:Landroid/widget/ImageView;

.field protected totalImoveis:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/BaseActivity;-><init>()V

    .line 68
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    return-void
.end method

.method private verificarBloqueioRecalcularConta()V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->verificarBloqueioRecalcularConta(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 523
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getLeitura()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getLeitura()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 525
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getLeitura()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 527
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 528
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 529
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 531
    :cond_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getSpinnerAnormalidade()Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 532
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getSpinnerAnormalidade()Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private verificarRotaFinalizalida()V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->obterQuantidadeImoveisVisitados()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v1}, Lcom/br/ipad/isc/fachada/Fachada;->obterQuantidadeImoveis()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    sget-object v0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->nomeEndereco:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->rotaFinalizada:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 579
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->rotaFinalizada:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getAnormalidade()Lcom/br/ipad/isc/bean/LeituraAnormalidade;
.end method

.method protected abstract getAnormalidadeInformada()Landroid/widget/EditText;
.end method

.method protected abstract getHidrometro()Lcom/br/ipad/isc/bean/HidrometroInstalado;
.end method

.method protected abstract getLayout()I
.end method

.method protected abstract getLeitura()Landroid/widget/EditText;
.end method

.method protected abstract getProximaIntent()Landroid/content/Intent;
.end method

.method protected abstract getSpinnerAnormalidade()Landroid/widget/Spinner;
.end method

.method protected abstract getTipoLigacao()I
.end method

.method public iniciarProximaIntent(Ljava/lang/Integer;Z)V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/br/ipad/isc/util/Util;->enviaEmBackground(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;)V

    .line 462
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelContaPosicao(Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p1

    .line 463
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "imovel"

    .line 464
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 465
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->finish()V

    .line 466
    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected leituraAlteradaUnica(Ljava/lang/Integer;)Z
    .locals 3

    const/4 v0, 0x1

    .line 549
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 550
    sget-object p1, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->leituraAgua:Landroid/widget/EditText;

    .line 551
    sget-object v1, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->idAnormalidadeAgua:Landroid/widget/EditText;

    goto :goto_0

    .line 553
    :cond_0
    sget-object p1, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->leituraPoco:Landroid/widget/EditText;

    .line 554
    sget-object v1, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->idAnormalidadePoco:Landroid/widget/EditText;

    .line 558
    :goto_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getHidrometro()Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_3

    .line 559
    :cond_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getHidrometro()Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 560
    :cond_2
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getHidrometro()Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getHidrometro()Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getHidrometro()Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 563
    :cond_3
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getHidrometro()Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 564
    :cond_4
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getHidrometro()Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getHidrometro()Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 v0, 0x0

    :cond_6
    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 513
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 515
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 125
    invoke-super {p0, p1}, Lcom/br/ipad/isc/gui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getLayout()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->setContentView(I)V

    .line 127
    invoke-static {p0}, Lcom/br/ipad/isc/fachada/Fachada;->setContext(Landroid/content/Context;)V

    .line 129
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "imovel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/br/ipad/isc/bean/ImovelConta;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 131
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getTipoLigacao()I

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getTipoLigacao()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->hidrometroBase:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    .line 134
    iget-object p1, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/fachada/Fachada;->atualizarDadosImovelMacro(Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->setUpWidgets()V

    .line 141
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->verificarBloqueioRecalcularConta()V

    .line 142
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->verificarRotaFinalizalida()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p2, 0x52

    if-ne p1, p2, :cond_0

    .line 501
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 502
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getParent()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 503
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->finish()V

    .line 504
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 471
    invoke-super {p0}, Lcom/br/ipad/isc/gui/BaseActivity;->onPause()V

    .line 472
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getTipoLigacao()I

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f070108

    .line 473
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->status:Landroid/widget/ImageView;

    .line 474
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelCalculado()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelImpresso()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->status:Landroid/widget/ImageView;

    const v1, 0x7f060092

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelCalculado()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelImpresso()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->status:Landroid/widget/ImageView;

    const v1, 0x7f060090

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 480
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->verificarErro()V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 588
    invoke-super {p0}, Lcom/br/ipad/isc/gui/BaseActivity;->onResume()V

    .line 589
    invoke-static {p0}, Lcom/br/ipad/isc/fachada/Fachada;->setContext(Landroid/content/Context;)V

    .line 591
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->verificarBloqueioRecalcularConta()V

    .line 592
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->verificarRotaFinalizalida()V

    return-void
.end method

.method public recarrega(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/HidrometroInstalado;)V
    .locals 2

    .line 485
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getProximaIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imovel"

    .line 486
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 487
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "ok"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "agua"

    .line 488
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "esgoto"

    .line 490
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    :goto_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->finish()V

    .line 493
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected abstract setAnormalidadeInformada(Landroid/widget/EditText;)V
.end method

.method protected abstract setLeitura(Landroid/widget/EditText;)V
.end method

.method protected abstract setSpinnerAnormalidade(Landroid/widget/Spinner;)V
.end method

.method protected setUpWidgets()V
    .locals 7

    const v0, 0x7f0700c9

    .line 175
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->nomeEndereco:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 178
    sget-object v0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->nomeEndereco:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 180
    sget-object v0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->nomeEndereco:Landroid/widget/TextView;

    new-instance v2, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$1;

    invoke-direct {v2, p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$1;-><init>(Lcom/br/ipad/isc/gui/HidrometroBaseActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 206
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v0

    const-string v2, "18"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v0, :cond_0

    const v0, 0x7f0700b8

    .line 207
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->llInscricao:Landroid/widget/LinearLayout;

    .line 208
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f07009e

    .line 209
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->inscricao:Landroid/widget/TextView;

    .line 210
    iget-object v4, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->formatarInscricao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f0700eb

    .line 213
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->rota:Landroid/widget/TextView;

    .line 214
    iget-object v4, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v5, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v4, v5, v6}, Lcom/br/ipad/isc/fachada/Fachada;->formatarRota(Ljava/lang/String;Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->verificarImovelRevisitar()V

    .line 219
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0700dc

    .line 222
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Condom\u00ednio: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicaoImovelCondominio()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v5

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/SistemaParametros;->getQtdImovelCondominio()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 225
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    sget-object v0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->nomeEndereco:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const v0, 0x7f070108

    .line 232
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->status:Landroid/widget/ImageView;

    .line 235
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelCalculado()Ljava/lang/Integer;

    move-result-object v0

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelImpresso()Ljava/lang/Integer;

    move-result-object v0

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->status:Landroid/widget/ImageView;

    const v4, 0x7f060092

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelCalculado()Ljava/lang/Integer;

    move-result-object v0

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelImpresso()Ljava/lang/Integer;

    move-result-object v0

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->status:Landroid/widget/ImageView;

    const v4, 0x7f060090

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    const v0, 0x7f0700ec

    .line 244
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->rotaFinalizada:Landroid/widget/TextView;

    const v0, 0x7f070078

    .line 245
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->endereco:Landroid/widget/TextView;

    const/16 v4, 0x32

    .line 247
    iget-object v5, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getEnderecoResumido()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/br/ipad/isc/util/Util;->quebraLinhaTexto(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0700a4

    .line 251
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->setLeitura(Landroid/widget/EditText;)V

    .line 253
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->hidrometroBase:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumDigitosLeituraHidrometro()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 256
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v0, v2

    .line 257
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getLeitura()Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 258
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getLeitura()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 262
    :cond_4
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->hidrometroBase:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 263
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getLeitura()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 264
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getLeitura()Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->hidrometroBase:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const v0, 0x7f070086

    .line 269
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->setAnormalidadeInformada(Landroid/widget/EditText;)V

    .line 271
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 272
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$2;

    invoke-direct {v2, p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$2;-><init>(Lcom/br/ipad/isc/gui/HidrometroBaseActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_6
    const v0, 0x7f07007f

    .line 357
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->hidrometro:Landroid/widget/TextView;

    .line 358
    iget-object v2, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->hidrometroBase:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070099

    .line 369
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->indicadorEmissaoConta:Landroid/widget/TextView;

    .line 370
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcEmissaoConta()Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 371
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->indicadorEmissaoConta:Landroid/widget/TextView;

    const v2, 0x7f0b00b5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 373
    :cond_7
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->indicadorEmissaoConta:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const v0, 0x7f0700bc

    .line 377
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->matricula:Landroid/widget/TextView;

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f07003e

    .line 380
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->setSpinnerAnormalidade(Landroid/widget/Spinner;)V

    .line 382
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarLeiturasAnormalidadesComUsoAtivo()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->anormalidadeList:Ljava/util/ArrayList;

    .line 384
    new-instance v0, Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;

    iget-object v2, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->anormalidadeList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2}, Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    sput-object v0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->anormalidadeAdapter:Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;

    .line 385
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getSpinnerAnormalidade()Landroid/widget/Spinner;

    move-result-object v0

    sget-object v2, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->anormalidadeAdapter:Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 387
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getHidrometro()Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 388
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getHidrometro()Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getHidrometro()Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_a

    .line 390
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getHidrometro()Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v4

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 392
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getTipoLigacao()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 393
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 394
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 396
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    .line 397
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v2}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    sput-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadeAgua:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    goto :goto_2

    .line 401
    :cond_8
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 402
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 403
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    .line 404
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v2}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    sput-object v0, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadePoco:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    .line 409
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidade()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 410
    sget-object v0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->anormalidadeAdapter:Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidade()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;->getPosition(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)I

    move-result v0

    if-eqz v0, :cond_a

    .line 412
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getSpinnerAnormalidade()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 417
    :cond_a
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getSpinnerAnormalidade()Landroid/widget/Spinner;

    move-result-object v0

    new-instance v1, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$3;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$3;-><init>(Lcom/br/ipad/isc/gui/HidrometroBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method protected abstract verificarErro()V
.end method

.method protected verificarImovelRevisitar()V
    .locals 3

    .line 150
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelRevisitarPorImovel(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ImovelRevisitar;

    move-result-object v0

    const v1, 0x7f0700e6

    .line 151
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->llRevisitar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelRevisitar;->getIndicadorRevisitado()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelRevisitar;->getIndicadorRevisitado()Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->llRevisitar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 155
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->llRevisitar:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    :goto_1
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelNaoRevisitado()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    const v0, 0x7f0700e7

    .line 165
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->llAlgumRevisitar:Landroid/widget/LinearLayout;

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method
