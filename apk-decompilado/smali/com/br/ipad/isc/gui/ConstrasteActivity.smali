.class public Lcom/br/ipad/isc/gui/ConstrasteActivity;
.super Landroid/app/Activity;
.source "ConstrasteActivity.java"


# instance fields
.field private seekBarContraste:Landroid/widget/SeekBar;

.field private sp:Lcom/br/ipad/isc/bean/SistemaParametros;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/br/ipad/isc/gui/ConstrasteActivity;)Lcom/br/ipad/isc/bean/SistemaParametros;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ConstrasteActivity;->sp:Lcom/br/ipad/isc/bean/SistemaParametros;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001e

    .line 24
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/ConstrasteActivity;->setContentView(I)V

    .line 25
    invoke-static {p0}, Lcom/br/ipad/isc/fachada/Fachada;->setContext(Landroid/content/Context;)V

    const p1, 0x7f0700fb

    .line 27
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/ConstrasteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/ConstrasteActivity;->seekBarContraste:Landroid/widget/SeekBar;

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 30
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ConstrasteActivity;->seekBarContraste:Landroid/widget/SeekBar;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 31
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ConstrasteActivity;->seekBarContraste:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 33
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarSistemaParametro()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/gui/ConstrasteActivity;->sp:Lcom/br/ipad/isc/bean/SistemaParametros;

    .line 35
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ConstrasteActivity;->seekBarContraste:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getContrasteConta()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 37
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ConstrasteActivity;->seekBarContraste:Landroid/widget/SeekBar;

    new-instance v0, Lcom/br/ipad/isc/gui/ConstrasteActivity$1;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/ConstrasteActivity$1;-><init>(Lcom/br/ipad/isc/gui/ConstrasteActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method
