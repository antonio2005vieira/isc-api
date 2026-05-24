.class public Lcom/br/ipad/isc/gui/LoginActivity;
.super Lcom/br/ipad/isc/gui/BaseActivity;
.source "LoginActivity.java"


# instance fields
.field private arquivoRetorno:Z

.field private btLogin:Landroid/widget/Button;

.field private btSair:Landroid/widget/Button;

.field private fachada:Lcom/br/ipad/isc/fachada/Fachada;

.field private login:Landroid/widget/TextView;

.field manager:Landroid/location/LocationManager;

.field private senha:Landroid/widget/TextView;

.field private versao:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/br/ipad/isc/gui/LoginActivity;->arquivoRetorno:Z

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/br/ipad/isc/gui/LoginActivity;->manager:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/br/ipad/isc/gui/LoginActivity;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/br/ipad/isc/gui/LoginActivity;->arquivoRetorno:Z

    return p0
.end method

.method static synthetic access$002(Lcom/br/ipad/isc/gui/LoginActivity;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/br/ipad/isc/gui/LoginActivity;->arquivoRetorno:Z

    return p1
.end method

.method static synthetic access$100(Lcom/br/ipad/isc/gui/LoginActivity;)Ljava/lang/Integer;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/LoginActivity;->imoveisCalculadosMaisImoveisComApenasGuias()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/br/ipad/isc/gui/LoginActivity;)Z
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/LoginActivity;->validarVersao()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/br/ipad/isc/gui/LoginActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/br/ipad/isc/gui/LoginActivity;->exibirMensagem(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/br/ipad/isc/gui/LoginActivity;)Landroid/widget/TextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/br/ipad/isc/gui/LoginActivity;->login:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/br/ipad/isc/gui/LoginActivity;)Landroid/widget/TextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/br/ipad/isc/gui/LoginActivity;->senha:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/br/ipad/isc/gui/LoginActivity;)Z
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/LoginActivity;->validarFaixaDatas()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/br/ipad/isc/gui/LoginActivity;)Lcom/br/ipad/isc/fachada/Fachada;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/br/ipad/isc/gui/LoginActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    return-object p0
.end method

.method private exibirMensagem(Ljava/lang/String;Z)V
    .locals 2

    .line 57
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b00d4

    .line 58
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 59
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 60
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/br/ipad/isc/gui/LoginActivity$1;

    invoke-direct {v1, p0, p2}, Lcom/br/ipad/isc/gui/LoginActivity$1;-><init>(Lcom/br/ipad/isc/gui/LoginActivity;Z)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private imoveisCalculadosMaisImoveisComApenasGuias()Ljava/lang/Integer;
    .locals 2

    .line 525
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->obterQuantidadeImoveisVisitados()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/fachada/Fachada;->getQtdImoveisComApenasGuias()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private validarFaixaDatas()Z
    .locals 4

    .line 99
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDataInicio()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDataFim()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->formatarDataSemBarra(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 102
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDataInicio()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->formatarDataSemBarra(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 103
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDataFim()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarDataSemBarra(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v3, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private validarVersao()Z
    .locals 4

    .line 78
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->getVersaoSistema(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v3

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/SistemaParametros;->getVersaoCelular()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 398
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/LoginActivity;->sair()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 116
    invoke-super {p0, p1}, Lcom/br/ipad/isc/gui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    iget-boolean p1, p0, Lcom/br/ipad/isc/gui/LoginActivity;->execute:Z

    if-eqz p1, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "sair"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/LoginActivity;->sair()V

    goto/16 :goto_2

    :cond_0
    const-string p1, "location"

    .line 123
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity;->manager:Landroid/location/LocationManager;

    const p1, 0x7f0a0046

    .line 124
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/LoginActivity;->setContentView(I)V

    .line 125
    invoke-static {p0}, Lcom/br/ipad/isc/fachada/Fachada;->setContext(Landroid/content/Context;)V

    .line 126
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 129
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 132
    sget-object p1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v0, "sdk"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "google_sdk"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    sput-boolean v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIMULADOR:Z

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 133
    sput-boolean p1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIMULADOR:Z

    .line 139
    :goto_1
    invoke-static {}, Lcom/br/ipad/isc/util/Bluetooth;->resetarBluetooth()V

    const p1, 0x7f070138

    .line 141
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity;->versao:Landroid/widget/TextView;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Produ\u00e7\u00e3o: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->getVersaoSistema(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f070075

    .line 144
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity;->login:Landroid/widget/TextView;

    const p1, 0x7f070076

    .line 145
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity;->senha:Landroid/widget/TextView;

    .line 148
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/LoginActivity;->setUpButtons()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f0b003e

    .line 420
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 421
    invoke-super {p0, p1}, Lcom/br/ipad/isc/gui/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    .line 428
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b00e4

    .line 432
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0127

    .line 433
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/br/ipad/isc/gui/LoginActivity$5;

    invoke-direct {v2, p0}, Lcom/br/ipad/isc/gui/LoginActivity$5;-><init>(Lcom/br/ipad/isc/gui/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0111

    .line 503
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/br/ipad/isc/gui/LoginActivity$4;

    invoke-direct {v2, p0}, Lcom/br/ipad/isc/gui/LoginActivity$4;-><init>(Lcom/br/ipad/isc/gui/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 520
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/br/ipad/isc/gui/BaseActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public sair()V
    .locals 2

    const/4 v0, 0x1

    .line 403
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/LoginActivity;->moveTaskToBack(Z)Z

    .line 404
    invoke-static {}, Lcom/br/ipad/isc/util/Bluetooth;->desativarBluetooth()Z

    .line 405
    iget-object v0, p0, Lcom/br/ipad/isc/gui/LoginActivity;->senha:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p0, Lcom/br/ipad/isc/gui/LoginActivity;->login:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/impressao/ZebraUtils;->getInstance(Landroid/content/Context;)Lcom/br/ipad/isc/impressao/ZebraUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/impressao/ZebraUtils;->disconnect()V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ImpressaoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 411
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ImpressaoException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 414
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public setUpButtons()V
    .locals 2

    const v0, 0x7f070049

    .line 155
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/LoginActivity;->btLogin:Landroid/widget/Button;

    const v0, 0x7f07004d

    .line 156
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/LoginActivity;->btSair:Landroid/widget/Button;

    .line 158
    new-instance v1, Lcom/br/ipad/isc/gui/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/LoginActivity$2;-><init>(Lcom/br/ipad/isc/gui/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/br/ipad/isc/gui/LoginActivity;->btLogin:Landroid/widget/Button;

    new-instance v1, Lcom/br/ipad/isc/gui/LoginActivity$3;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/LoginActivity$3;-><init>(Lcom/br/ipad/isc/gui/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
