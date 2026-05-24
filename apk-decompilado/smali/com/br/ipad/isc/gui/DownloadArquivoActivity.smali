.class public Lcom/br/ipad/isc/gui/DownloadArquivoActivity;
.super Lcom/br/ipad/isc/gui/BaseActivity;
.source "DownloadArquivoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;
    }
.end annotation


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private fileLength:I

.field private rdc:Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;

.field private sairSistema:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/br/ipad/isc/gui/DownloadArquivoActivity;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->fileLength:I

    return p0
.end method

.method static synthetic access$002(Lcom/br/ipad/isc/gui/DownloadArquivoActivity;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->fileLength:I

    return p1
.end method

.method static synthetic access$100(Lcom/br/ipad/isc/gui/DownloadArquivoActivity;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->sairSistema:Z

    return p0
.end method

.method static synthetic access$102(Lcom/br/ipad/isc/gui/DownloadArquivoActivity;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->sairSistema:Z

    return p1
.end method

.method static synthetic access$200(Lcom/br/ipad/isc/gui/DownloadArquivoActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->enviarListaArquivos()V

    return-void
.end method

.method static synthetic access$300(Lcom/br/ipad/isc/gui/DownloadArquivoActivity;)Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->rdc:Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;

    return-object p0
.end method

.method private enviarListaArquivos()V
    .locals 2

    .line 351
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->startActivity(Landroid/content/Intent;)V

    .line 353
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->finish()V

    return-void
.end method

.method private startDownload()V
    .locals 4

    const v0, 0x7f0700e0

    .line 396
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    .line 397
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 398
    new-instance v2, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;-><init>(Lcom/br/ipad/isc/gui/DownloadArquivoActivity;Lcom/br/ipad/isc/gui/DownloadArquivoActivity$1;)V

    iput-object v2, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->rdc:Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/widget/ProgressBar;

    aput-object v0, v3, v1

    .line 399
    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .line 416
    invoke-super {p0}, Lcom/br/ipad/isc/gui/BaseActivity;->onAttachedToWindow()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 403
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->rdc:Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->abort:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 365
    invoke-super {p0, p1}, Lcom/br/ipad/isc/gui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 367
    iget-boolean p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->execute:Z

    if-eqz p1, :cond_1

    const p1, 0x7f0a0021

    .line 368
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->setContentView(I)V

    .line 370
    invoke-static {p0}, Lcom/br/ipad/isc/fachada/Fachada;->setContext(Landroid/content/Context;)V

    const p1, 0x7f07004f

    .line 372
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->btnCancel:Landroid/widget/Button;

    .line 373
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/fachada/Fachada;->verificarExistenciaBancoDeDados()Z

    move-result p1

    if-nez p1, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->startDownload()V

    goto :goto_0

    .line 380
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->startActivity(Landroid/content/Intent;)V

    .line 382
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->finish()V

    :goto_0
    const p1, 0x7f070051

    .line 385
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 386
    new-instance v0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$1;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$1;-><init>(Lcom/br/ipad/isc/gui/DownloadArquivoActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
