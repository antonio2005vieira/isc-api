.class public Lcom/br/ipad/isc/gui/MenuActivity;
.super Lcom/br/ipad/isc/gui/BaseActivity;
.source "MenuActivity.java"


# instance fields
.field private adapter:Lcom/br/ipad/isc/adapters/ListaMenuAdapter;

.field colecaoFotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/Foto;",
            ">;"
        }
    .end annotation
.end field

.field private fachada:Lcom/br/ipad/isc/fachada/Fachada;

.field imoveisNaoLidos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ImovelConta;",
            ">;"
        }
    .end annotation
.end field

.field private imovelProximo:Lcom/br/ipad/isc/bean/ImovelConta;

.field private lv:Landroid/widget/ListView;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private menu:Lcom/br/ipad/isc/bean/helpers/Menu;

.field private posicao:I

.field sucess:Z

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->sucess:Z

    return-void
.end method

.method static synthetic access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->menu:Lcom/br/ipad/isc/bean/helpers/Menu;

    return-object p0
.end method

.method static synthetic access$002(Lcom/br/ipad/isc/gui/MenuActivity;Lcom/br/ipad/isc/bean/helpers/Menu;)Lcom/br/ipad/isc/bean/helpers/Menu;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity;->menu:Lcom/br/ipad/isc/bean/helpers/Menu;

    return-object p1
.end method

.method static synthetic access$100(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->imovelProximo:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object p0
.end method

.method static synthetic access$102(Lcom/br/ipad/isc/gui/MenuActivity;Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity;->imovelProximo:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object p1
.end method

.method static synthetic access$200(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/fachada/Fachada;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    return-object p0
.end method

.method static synthetic access$300(Lcom/br/ipad/isc/gui/MenuActivity;)Landroid/widget/ListView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/br/ipad/isc/gui/MenuActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/br/ipad/isc/gui/MenuActivity;->exibirMensagem(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/br/ipad/isc/gui/MenuActivity;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/br/ipad/isc/gui/MenuActivity;->perguntaSenha(Ljava/lang/String;Ljava/lang/String;S)V

    return-void
.end method

.method static synthetic access$600(Lcom/br/ipad/isc/gui/MenuActivity;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->posicao:I

    return p0
.end method

.method private exibirMensagem(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 643
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 644
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 645
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 646
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/br/ipad/isc/gui/MenuActivity$6;

    invoke-direct {p2, p0, p3}, Lcom/br/ipad/isc/gui/MenuActivity$6;-><init>(Lcom/br/ipad/isc/gui/MenuActivity;I)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 654
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private perguntaSenha(Ljava/lang/String;Ljava/lang/String;S)V
    .locals 2

    const/4 v0, 0x0

    .line 588
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->verificaImoveisNaolidos(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 592
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 593
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 597
    new-instance p1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/MenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 p2, 0x21

    .line 598
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 599
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 600
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const p2, 0x7f0b008e

    .line 602
    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/br/ipad/isc/gui/MenuActivity$4;

    invoke-direct {v1, p0, p1, p3}, Lcom/br/ipad/isc/gui/MenuActivity$4;-><init>(Lcom/br/ipad/isc/gui/MenuActivity;Landroid/widget/EditText;S)V

    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f0b008d

    .line 628
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/br/ipad/isc/gui/MenuActivity$5;

    invoke-direct {p2, p0}, Lcom/br/ipad/isc/gui/MenuActivity$5;-><init>(Lcom/br/ipad/isc/gui/MenuActivity;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 634
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method


# virtual methods
.method public enviarImoveisLidos(I)V
    .locals 2

    .line 807
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarIdsImoveisLidosNaoEnviadosNaoCondominio()Ljava/util/ArrayList;

    move-result-object v0

    .line 809
    iput p1, p0, Lcom/br/ipad/isc/gui/MenuActivity;->posicao:I

    .line 811
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/MenuActivity;->validarFotosNaoEnviadas()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x7f0b0083

    .line 816
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 818
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/MenuActivity;->finish()V

    goto :goto_0

    :cond_0
    const v0, 0x7f0b00e1

    .line 822
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, v1, p1}, Lcom/br/ipad/isc/gui/MenuActivity;->exibirMensagem(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public finalizarArquivoMenu()V
    .locals 3

    .line 796
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/MenuActivity;->validarFotosTransmitidas()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->verificaImoveisNaolidos(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/MenuActivity;->verificarImoveisRevisitar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7f0b0083

    .line 799
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 801
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/MenuActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 661
    invoke-super {p0, p1, p2, p3}, Lcom/br/ipad/isc/gui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 663
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->existeSDCARD()V

    const/16 p2, 0x257b

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/br/ipad/isc/gui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->apagarArquivoRetorno()V

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sput-object p1, Lcom/br/ipad/isc/io/ArquivoRetorno;->montaArquivo:Ljava/lang/StringBuilder;

    .line 68
    iget-boolean p1, p0, Lcom/br/ipad/isc/gui/MenuActivity;->execute:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0a0032

    .line 69
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/MenuActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/MenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/fachada/Fachada;->setContext(Landroid/content/Context;)V

    .line 72
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    const p1, 0x7f0700ae

    .line 74
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity;->lv:Landroid/widget/ListView;

    .line 76
    new-instance v0, Lcom/br/ipad/isc/gui/MenuActivity$1;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/MenuActivity$1;-><init>(Lcom/br/ipad/isc/gui/MenuActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 7

    .line 486
    invoke-super {p0}, Lcom/br/ipad/isc/gui/BaseActivity;->onResume()V

    .line 488
    iget-boolean v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->execute:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->verificarExistenciaBancoDeDados()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    new-instance v1, Lcom/br/ipad/isc/bean/helpers/Menu;

    const v2, 0x7f0b00fb

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b00fc

    invoke-virtual {p0, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/br/ipad/isc/bean/helpers/Menu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    new-instance v1, Lcom/br/ipad/isc/bean/helpers/Menu;

    const v2, 0x7f0b00e8

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b00e9

    invoke-virtual {p0, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/br/ipad/isc/bean/helpers/Menu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance v1, Lcom/br/ipad/isc/bean/helpers/Menu;

    const v2, 0x7f0b00fd

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/br/ipad/isc/bean/helpers/Menu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    new-instance v1, Lcom/br/ipad/isc/bean/helpers/Menu;

    const v2, 0x7f0b00f0

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b00f3

    invoke-virtual {p0, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/br/ipad/isc/bean/helpers/Menu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    new-instance v1, Lcom/br/ipad/isc/bean/helpers/Menu;

    const v2, 0x7f0b00ff

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0100

    invoke-virtual {p0, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/br/ipad/isc/bean/helpers/Menu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    new-instance v1, Lcom/br/ipad/isc/bean/helpers/Menu;

    const v2, 0x7f0b00f7

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b00f8

    invoke-virtual {p0, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/br/ipad/isc/bean/helpers/Menu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    new-instance v1, Lcom/br/ipad/isc/bean/helpers/Menu;

    const v2, 0x7f0b00e2

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b00e3

    invoke-virtual {p0, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/br/ipad/isc/bean/helpers/Menu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    new-instance v1, Lcom/br/ipad/isc/bean/helpers/Menu;

    const v2, 0x7f0b00f1

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b00f2

    invoke-virtual {p0, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/br/ipad/isc/bean/helpers/Menu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    new-instance v1, Lcom/br/ipad/isc/bean/helpers/Menu;

    const v2, 0x7f0b00ec

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b00ed

    invoke-virtual {p0, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/br/ipad/isc/bean/helpers/Menu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorTransmissaoOffline()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    new-instance v1, Lcom/br/ipad/isc/bean/helpers/Menu;

    const v2, 0x7f0b0104

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0105

    invoke-virtual {p0, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/br/ipad/isc/bean/helpers/Menu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 523
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorTransmissaoOffline()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    new-instance v1, Lcom/br/ipad/isc/bean/helpers/Menu;

    const v2, 0x7f0b0106

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0107

    invoke-virtual {p0, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/br/ipad/isc/bean/helpers/Menu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_1
    :goto_0
    new-instance v1, Lcom/br/ipad/isc/bean/helpers/Menu;

    const v2, 0x7f0b00f4

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b00f5

    invoke-virtual {p0, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/br/ipad/isc/bean/helpers/Menu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorRotaMarcacao()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0b0040

    .line 534
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 537
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorRotaMarcacaoAtiva()Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v1, 0x7f0b005d

    .line 538
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 541
    :cond_2
    new-instance v2, Lcom/br/ipad/isc/bean/helpers/Menu;

    const v3, 0x7f0b0101

    invoke-virtual {p0, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b0102

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/br/ipad/isc/bean/helpers/Menu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_3
    new-instance v1, Lcom/br/ipad/isc/bean/helpers/Menu;

    const v2, 0x7f0b00ee

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b00ef

    invoke-virtual {p0, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/br/ipad/isc/bean/helpers/Menu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorModeloImpressora()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 555
    new-instance v1, Lcom/br/ipad/isc/bean/helpers/Menu;

    const v2, 0x7f0b010b

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b010c

    invoke-virtual {p0, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/br/ipad/isc/bean/helpers/Menu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 557
    :cond_4
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorModeloImpressora()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 558
    new-instance v1, Lcom/br/ipad/isc/bean/helpers/Menu;

    const v2, 0x7f0b010d

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b010e

    invoke-virtual {p0, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/br/ipad/isc/bean/helpers/Menu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_5
    :goto_1
    new-instance v1, Lcom/br/ipad/isc/bean/helpers/Menu;

    const v2, 0x7f0b0108

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0109

    invoke-virtual {p0, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/br/ipad/isc/bean/helpers/Menu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    new-instance v1, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;

    invoke-direct {v1, p0, v0}, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/br/ipad/isc/gui/MenuActivity;->adapter:Lcom/br/ipad/isc/adapters/ListaMenuAdapter;

    .line 575
    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 578
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 579
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 580
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/MenuActivity;->finish()V

    :goto_2
    return-void
.end method

.method protected validarFotosNaoEnviadas()Z
    .locals 4

    .line 832
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarFotosPendentes()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->colecaoFotos:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 834
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->sucess:Z

    if-nez v0, :cond_0

    .line 836
    new-instance v0, Lcom/br/ipad/isc/gui/MenuActivity$9;

    invoke-direct {v0, p0, p0}, Lcom/br/ipad/isc/gui/MenuActivity$9;-><init>(Lcom/br/ipad/isc/gui/MenuActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 846
    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->colecaoFotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->total:I

    .line 847
    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f060057

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 848
    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v2, "Enviando as fotos"

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 849
    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v2, "Aguarde..."

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 850
    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 851
    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v3, p0, Lcom/br/ipad/isc/gui/MenuActivity;->total:I

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 852
    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 853
    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 855
    new-instance v0, Lcom/br/ipad/isc/gui/MenuActivity$10;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/MenuActivity$10;-><init>(Lcom/br/ipad/isc/gui/MenuActivity;)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 926
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/br/ipad/isc/excecoes/NegocioException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .line 934
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/NegocioException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 932
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/FachadaException;->printStackTrace()V

    .line 938
    :goto_0
    iget-boolean v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->sucess:Z

    return v0
.end method

.method protected validarFotosTransmitidas()Z
    .locals 4

    .line 682
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarFotosPendentes()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->colecaoFotos:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->sucess:Z

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Lcom/br/ipad/isc/gui/MenuActivity$7;

    invoke-direct {v0, p0, p0}, Lcom/br/ipad/isc/gui/MenuActivity$7;-><init>(Lcom/br/ipad/isc/gui/MenuActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 696
    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->colecaoFotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->total:I

    .line 697
    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v2, "Enviando as fotos"

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 698
    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v2, "Aguarde..."

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 700
    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v3, p0, Lcom/br/ipad/isc/gui/MenuActivity;->total:I

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 701
    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 702
    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 704
    new-instance v0, Lcom/br/ipad/isc/gui/MenuActivity$8;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/MenuActivity$8;-><init>(Lcom/br/ipad/isc/gui/MenuActivity;)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 778
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/br/ipad/isc/excecoes/NegocioException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .line 786
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/NegocioException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 784
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/FachadaException;->printStackTrace()V

    .line 790
    :goto_0
    iget-boolean v0, p0, Lcom/br/ipad/isc/gui/MenuActivity;->sucess:Z

    return v0
.end method

.method protected verificaImoveisNaolidos(Z)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 459
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelContasNaoLidos()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity;->imoveisNaoLidos:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 461
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 464
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00e0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/br/ipad/isc/gui/MenuActivity;->imoveisNaoLidos:Ljava/util/ArrayList;

    .line 465
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 466
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v4

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/SistemaParametros;->getQtdImoveis()Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 465
    invoke-virtual {p0, v2, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x104000a

    .line 467
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/br/ipad/isc/gui/MenuActivity$3;

    invoke-direct {v2, p0}, Lcom/br/ipad/isc/gui/MenuActivity$3;-><init>(Lcom/br/ipad/isc/gui/MenuActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 476
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method protected verificarImoveisRevisitar()Z
    .locals 3

    .line 436
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelNaoRevisitado()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Erro Roteiro, Ainda ha im\u00f3veis a revisitar!"

    .line 439
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    .line 440
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/br/ipad/isc/gui/MenuActivity$2;

    invoke-direct {v2, p0}, Lcom/br/ipad/isc/gui/MenuActivity$2;-><init>(Lcom/br/ipad/isc/gui/MenuActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
