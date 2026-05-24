.class public Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;
.super Lcom/br/ipad/isc/gui/BaseActivity;
.source "FinalizaArquivoActivty.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;
    }
.end annotation


# static fields
.field private static retorno:[Ljava/lang/Object;


# instance fields
.field private arquivoRetorno:Lcom/br/ipad/isc/io/ArquivoRetorno;

.field private btnCancel:Landroid/widget/Button;

.field private fac:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;

.field private fachada:Lcom/br/ipad/isc/fachada/Fachada;

.field private imoveisImprimir:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nomeArquivo:Ljava/lang/String;

.field private perguntaImprimir:Z

.field private posicaoImovelNaoImpresso:I

.field private progress:I

.field private tipoFinalizacao:S

.field private total:I

.field private valorProgresso:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-short v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->tipoFinalizacao:S

    .line 36
    iput v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->valorProgresso:I

    const/4 v1, -0x1

    .line 40
    iput v1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->posicaoImovelNaoImpresso:I

    .line 42
    iput v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->progress:I

    .line 48
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    return-void
.end method

.method static synthetic access$000(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->perguntaImprimir:Z

    return p0
.end method

.method static synthetic access$002(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->perguntaImprimir:Z

    return p1
.end method

.method static synthetic access$100(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Lcom/br/ipad/isc/io/ArquivoRetorno;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->arquivoRetorno:Lcom/br/ipad/isc/io/ArquivoRetorno;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->imoveisImprimir:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->imoveisImprimir:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$102(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;Lcom/br/ipad/isc/io/ArquivoRetorno;)Lcom/br/ipad/isc/io/ArquivoRetorno;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->arquivoRetorno:Lcom/br/ipad/isc/io/ArquivoRetorno;

    return-object p1
.end method

.method static synthetic access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S
    .locals 0

    .line 28
    iget-short p0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->tipoFinalizacao:S

    return p0
.end method

.method static synthetic access$202(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;S)S
    .locals 0

    .line 28
    iput-short p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->tipoFinalizacao:S

    return p1
.end method

.method static synthetic access$300(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Lcom/br/ipad/isc/fachada/Fachada;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    return-object p0
.end method

.method static synthetic access$400(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->valorProgresso:I

    return p0
.end method

.method static synthetic access$402(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->valorProgresso:I

    return p1
.end method

.method static synthetic access$500(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->posicaoImovelNaoImpresso:I

    return p0
.end method

.method static synthetic access$502(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->posicaoImovelNaoImpresso:I

    return p1
.end method

.method static synthetic access$600(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->total:I

    return p0
.end method

.method static synthetic access$602(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->total:I

    return p1
.end method

.method static synthetic access$700()[Ljava/lang/Object;
    .locals 1

    .line 28
    sget-object v0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->retorno:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    .line 28
    sput-object p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->retorno:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$800(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->progress:I

    return p0
.end method

.method static synthetic access$802(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->progress:I

    return p1
.end method

.method static synthetic access$900(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->nomeArquivo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->nomeArquivo:Ljava/lang/String;

    return-object p1
.end method

.method private start()V
    .locals 4

    const v0, 0x7f0700df

    .line 398
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    .line 399
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 400
    new-instance v2, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;-><init>(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$1;)V

    iput-object v2, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->fac:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    .line 401
    iget-short v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->tipoFinalizacao:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    iget v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->valorProgresso:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public gerar(IIZ)[Ljava/lang/Object;
    .locals 2

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 371
    invoke-static {}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->getInstancia()Lcom/br/ipad/isc/fachada/FachadaWebServer;

    move-result-object p2

    iget-short v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->tipoFinalizacao:S

    iget-object v1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->arquivoRetorno:Lcom/br/ipad/isc/io/ArquivoRetorno;

    .line 372
    invoke-virtual {p2, v0, v1, p1, p3}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->comunicacao(SLcom/br/ipad/isc/io/ArquivoRetorno;IZ)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 377
    aget-object p3, p1, p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 380
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p1, p2

    :cond_0
    return-object p1
.end method

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

    .line 390
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->btnCancel:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 392
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->fac:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->abort:Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 347
    invoke-super {p0, p1}, Lcom/br/ipad/isc/gui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0022

    .line 348
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->setContentView(I)V

    .line 350
    invoke-static {p0}, Lcom/br/ipad/isc/fachada/Fachada;->setContext(Landroid/content/Context;)V

    .line 352
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const v0, 0x7f0b0083

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 354
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result p1

    iput-short p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->tipoFinalizacao:S

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const v0, 0x7f0b0082

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 359
    new-instance p1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->valorProgresso:I

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "posicao"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->posicaoImovelNaoImpresso:I

    .line 364
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->start()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 407
    invoke-super {p0}, Lcom/br/ipad/isc/gui/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    .line 427
    invoke-super {p0, p1, p2}, Lcom/br/ipad/isc/gui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
