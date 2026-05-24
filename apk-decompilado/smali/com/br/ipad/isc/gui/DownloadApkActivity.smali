.class public Lcom/br/ipad/isc/gui/DownloadApkActivity;
.super Lcom/br/ipad/isc/gui/BaseActivity;
.source "DownloadApkActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;
    }
.end annotation


# static fields
.field private static final ERROR_ABORT_REQUESTED:I = 0x63

.field private static final ERRO_DOWNLOAD_APK:I = 0x60

.field private static final ERRO_VERIFICANDO_VERSAO:I = 0x61

.field public static final ERRO_VERSAO_INDISPONIVEL:I = 0x62

.field public static final IGNORE_DOWNLOAD_VERSION:I = 0x5a


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnSair:Landroid/widget/Button;

.field private rdc:Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;

.field private sairSistema:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/br/ipad/isc/gui/DownloadApkActivity;)Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity;->rdc:Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;

    return-object p0
.end method

.method static synthetic access$100(Lcom/br/ipad/isc/gui/DownloadApkActivity;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->verificaErros(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/br/ipad/isc/gui/DownloadApkActivity;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity;->sairSistema:Z

    return p0
.end method

.method static synthetic access$202(Lcom/br/ipad/isc/gui/DownloadApkActivity;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity;->sairSistema:Z

    return p1
.end method

.method private compararVersao()I
    .locals 8

    .line 301
    invoke-static {}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->getInstancia()Lcom/br/ipad/isc/fachada/FachadaWebServer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->iniciarConexaoWebServer(Landroid/content/Context;)V

    .line 305
    invoke-static {}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->getInstancia()Lcom/br/ipad/isc/fachada/FachadaWebServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->serverOnline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 310
    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v1, Ljava/lang/Long;

    invoke-static {p0}, Lcom/br/ipad/isc/util/Util;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->getVersaoSistema(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    const-string v3, ""

    .line 315
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 318
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->getInstancia()Lcom/br/ipad/isc/fachada/FachadaWebServer;

    move-result-object v4

    const-string v5, "https://batchsanep.gruporas.com.br/gsan/processarRequisicaoDipositivoMovelImpressaoSimultaneaAndroidAction.do"

    invoke-virtual {v4, v5, v0}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->comunicar(Ljava/lang/String;Ljava/util/Vector;)Ljava/io/InputStream;

    move-result-object v0

    .line 320
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 326
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 327
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-virtual {v0, v6, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 332
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    :cond_1
    const/16 v0, 0x5a

    if-eqz v5, :cond_3

    .line 339
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v2, v1, :cond_3

    const/16 v0, 0x64

    goto :goto_1

    :catch_0
    move-exception v0

    .line 352
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISC"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/16 v0, 0x61

    return v0

    :cond_2
    const/4 v0, 0x4

    :cond_3
    :goto_1
    return v0
.end method

.method private startDownload()V
    .locals 4

    const v0, 0x7f0700e0

    .line 294
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    .line 295
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 296
    new-instance v2, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;-><init>(Lcom/br/ipad/isc/gui/DownloadApkActivity;Lcom/br/ipad/isc/gui/DownloadApkActivity$1;)V

    iput-object v2, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity;->rdc:Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/widget/ProgressBar;

    aput-object v0, v3, v1

    .line 297
    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private verificaErros(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 368
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    move-object p1, v0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0b0077

    .line 399
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0b0033

    .line 395
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    const p1, 0x7f0b0036

    .line 391
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0b0032

    .line 387
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f0b007c

    .line 383
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const p1, 0x7f0b007a

    .line 379
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const p1, 0x7f0b0079

    .line 375
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const p1, 0x7f0b0060

    .line 371
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public iniciarAplicacao()V
    .locals 11

    .line 480
    iget-boolean v0, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity;->execute:Z

    if-eqz v0, :cond_5

    .line 481
    invoke-static {p0}, Lcom/br/ipad/isc/fachada/Fachada;->setContext(Landroid/content/Context;)V

    .line 485
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "msgErro"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 487
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 488
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    .line 487
    invoke-virtual/range {v2 .. v10}, Lcom/br/ipad/isc/fachada/Fachada;->alertaMensagemConexao(Lcom/br/ipad/isc/bean/ImovelConta;BBZIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 490
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->verificarExistenciaBancoDeDados()Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f0a0021

    .line 492
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->setContentView(I)V

    const v0, 0x7f07011b

    .line 494
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "Verificando nova vers\u00e3o. Por favor, aguarde..."

    .line 495
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f07004f

    .line 497
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity;->btnCancel:Landroid/widget/Button;

    const/4 v1, 0x4

    .line 498
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f070051

    .line 501
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity;->btnSair:Landroid/widget/Button;

    .line 502
    new-instance v1, Lcom/br/ipad/isc/gui/DownloadApkActivity$3;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/DownloadApkActivity$3;-><init>(Lcom/br/ipad/isc/gui/DownloadApkActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->compararVersao()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 515
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->startDownload()V

    goto/16 :goto_0

    .line 519
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->verificaErros(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 522
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/fachada/Fachada;->verificarExistenciaBancoDeDados()Z

    move-result v1

    const v2, 0x104000a

    const/4 v3, 0x0

    const v4, 0x7f0b005e

    if-eqz v1, :cond_2

    .line 525
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 526
    invoke-virtual {p0, v4}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 527
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 528
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 529
    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/br/ipad/isc/gui/DownloadApkActivity$4;

    invoke-direct {v2, p0}, Lcom/br/ipad/isc/gui/DownloadApkActivity$4;-><init>(Lcom/br/ipad/isc/gui/DownloadApkActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 542
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 543
    invoke-virtual {p0, v4}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 544
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 545
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 546
    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/br/ipad/isc/gui/DownloadApkActivity$5;

    invoke-direct {v2, p0}, Lcom/br/ipad/isc/gui/DownloadApkActivity$5;-><init>(Lcom/br/ipad/isc/gui/DownloadApkActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 562
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 563
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->startActivity(Landroid/content/Intent;)V

    .line 564
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->finish()V

    goto :goto_0

    .line 569
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 570
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->startActivity(Landroid/content/Intent;)V

    .line 571
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->finish()V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 234
    invoke-super {p0, p1, p2, p3}, Lcom/br/ipad/isc/gui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x1285

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    .line 239
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0b005e

    .line 240
    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 241
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0b0077

    .line 242
    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    .line 243
    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/br/ipad/isc/gui/DownloadApkActivity$1;

    invoke-direct {p3, p0}, Lcom/br/ipad/isc/gui/DownloadApkActivity$1;-><init>(Lcom/br/ipad/isc/gui/DownloadApkActivity;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 420
    invoke-super {p0}, Lcom/br/ipad/isc/gui/BaseActivity;->onAttachedToWindow()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 269
    invoke-super {p0, p1}, Lcom/br/ipad/isc/gui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 272
    new-instance p1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    .line 273
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const p1, 0x7f0a0041

    .line 275
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->setContentView(I)V

    .line 277
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->iniciarAplicacao()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "android.permission.CAMERA"

    aput-object v1, p1, v0

    const/4 v0, 0x4

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, p1, v0

    const/16 v0, 0x4d2

    .line 280
    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x4d2

    if-eq p1, p2, :cond_0

    return-void

    .line 454
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_2

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    aget p1, p3, p1

    if-nez p1, :cond_2

    const/4 p1, 0x2

    aget p1, p3, p1

    if-nez p1, :cond_2

    const/4 p1, 0x3

    aget p1, p3, p1

    if-nez p1, :cond_2

    const/4 p1, 0x4

    aget p1, p3, p1

    if-nez p1, :cond_2

    .line 460
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 461
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/br/ipad/isc/gui/InformarImeiActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->startActivity(Landroid/content/Intent;)V

    .line 463
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->finish()V

    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->iniciarAplicacao()V

    goto :goto_0

    .line 470
    :cond_2
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .line 428
    invoke-super {p0}, Lcom/br/ipad/isc/gui/BaseActivity;->onRestart()V

    .line 431
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b005e

    .line 432
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0077

    .line 433
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 434
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    .line 435
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/br/ipad/isc/gui/DownloadApkActivity$2;

    invoke-direct {v2, p0}, Lcom/br/ipad/isc/gui/DownloadApkActivity$2;-><init>(Lcom/br/ipad/isc/gui/DownloadApkActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
