.class public Lcom/br/ipad/isc/gui/RateioActivity;
.super Lcom/br/ipad/isc/gui/BaseActivity;
.source "RateioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;
    }
.end annotation


# instance fields
.field private final ABORTADO:I

.field private final CONEXAO_IMPRESSORA_EXCEPTION:I

.field private final EXCEPTION:I

.field private final IMPRESSAO_INICIADA:I

.field private final STATUS_IMPRESSORA_EXCEPTION:I

.field private final SUCESSO:I

.field private final ZEBRA_EXCEPTION:I

.field protected abort:Z

.field private completo:Z

.field private contrRateio:Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;

.field private erro:Ljava/lang/String;

.field private imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

.field private indicadorCalcularCondominioSemImpressao:Ljava/lang/Integer;

.field private prb:Landroid/widget/ProgressBar;

.field private rdc:Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;

.field private validado:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/br/ipad/isc/gui/RateioActivity;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcom/br/ipad/isc/gui/RateioActivity;->abort:Z

    const/16 v1, 0x64

    .line 41
    iput v1, p0, Lcom/br/ipad/isc/gui/RateioActivity;->SUCESSO:I

    const/4 v1, 0x1

    .line 43
    iput v1, p0, Lcom/br/ipad/isc/gui/RateioActivity;->ABORTADO:I

    const/4 v1, 0x2

    .line 44
    iput v1, p0, Lcom/br/ipad/isc/gui/RateioActivity;->CONEXAO_IMPRESSORA_EXCEPTION:I

    const/4 v1, 0x3

    .line 45
    iput v1, p0, Lcom/br/ipad/isc/gui/RateioActivity;->STATUS_IMPRESSORA_EXCEPTION:I

    const/4 v1, 0x4

    .line 46
    iput v1, p0, Lcom/br/ipad/isc/gui/RateioActivity;->ZEBRA_EXCEPTION:I

    const/4 v1, 0x5

    .line 47
    iput v1, p0, Lcom/br/ipad/isc/gui/RateioActivity;->EXCEPTION:I

    const/4 v1, 0x6

    .line 48
    iput v1, p0, Lcom/br/ipad/isc/gui/RateioActivity;->IMPRESSAO_INICIADA:I

    .line 50
    iput-object v0, p0, Lcom/br/ipad/isc/gui/RateioActivity;->erro:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/br/ipad/isc/gui/RateioActivity;->validado:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/br/ipad/isc/gui/RateioActivity;)Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/br/ipad/isc/gui/RateioActivity;->contrRateio:Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;

    return-object p0
.end method

.method static synthetic access$102(Lcom/br/ipad/isc/gui/RateioActivity;Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;)Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/br/ipad/isc/gui/RateioActivity;->contrRateio:Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;

    return-object p1
.end method

.method static synthetic access$200(Lcom/br/ipad/isc/gui/RateioActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/br/ipad/isc/gui/RateioActivity;->prb:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$202(Lcom/br/ipad/isc/gui/RateioActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/br/ipad/isc/gui/RateioActivity;->prb:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$300(Lcom/br/ipad/isc/gui/RateioActivity;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/br/ipad/isc/gui/RateioActivity;->erro:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/br/ipad/isc/gui/RateioActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/br/ipad/isc/gui/RateioActivity;->erro:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/br/ipad/isc/gui/RateioActivity;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/br/ipad/isc/gui/RateioActivity;->validado:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/br/ipad/isc/gui/RateioActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/br/ipad/isc/gui/RateioActivity;->validado:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/br/ipad/isc/gui/RateioActivity;)Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/br/ipad/isc/gui/RateioActivity;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object p0
.end method

.method static synthetic access$600(Lcom/br/ipad/isc/gui/RateioActivity;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/br/ipad/isc/gui/RateioActivity;->completo:Z

    return p0
.end method

.method static synthetic access$602(Lcom/br/ipad/isc/gui/RateioActivity;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/br/ipad/isc/gui/RateioActivity;->completo:Z

    return p1
.end method

.method static synthetic access$700(Lcom/br/ipad/isc/gui/RateioActivity;)Ljava/lang/Integer;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/br/ipad/isc/gui/RateioActivity;->indicadorCalcularCondominioSemImpressao:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/br/ipad/isc/gui/RateioActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/RateioActivity;->start()V

    return-void
.end method

.method private start()V
    .locals 4

    const v0, 0x7f0700e0

    .line 92
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/RateioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 94
    new-instance v2, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;-><init>(Lcom/br/ipad/isc/gui/RateioActivity;Lcom/br/ipad/isc/gui/RateioActivity$1;)V

    iput-object v2, p0, Lcom/br/ipad/isc/gui/RateioActivity;->rdc:Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/widget/ProgressBar;

    aput-object v0, v3, v1

    .line 95
    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lcom/br/ipad/isc/gui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0021

    .line 58
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/RateioActivity;->setContentView(I)V

    .line 59
    invoke-static {p0}, Lcom/br/ipad/isc/fachada/Fachada;->setContext(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/RateioActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "macro"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/br/ipad/isc/bean/ImovelConta;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/RateioActivity;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 63
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/RateioActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "indicadorCalcularCondominio"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/RateioActivity;->indicadorCalcularCondominioSemImpressao:Ljava/lang/Integer;

    .line 67
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorSistemaLeitura()Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/br/ipad/isc/gui/RateioActivity;->indicadorCalcularCondominioSemImpressao:Ljava/lang/Integer;

    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/RateioActivity;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/fachada/Fachada;->verificarExistenciaImpressora(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const v0, 0x7f070051

    .line 75
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/RateioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x4

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz p1, :cond_2

    const p1, 0x7f07004f

    .line 80
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/RateioActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 81
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f07011b

    .line 84
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/RateioActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "Realizando o rateio. Por favor, aguarde..."

    .line 85
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/RateioActivity;->start()V

    :cond_2
    return-void
.end method
