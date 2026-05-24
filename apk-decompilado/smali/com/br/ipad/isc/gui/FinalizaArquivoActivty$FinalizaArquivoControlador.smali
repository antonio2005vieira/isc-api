.class Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;
.super Landroid/os/AsyncTask;
.source "FinalizaArquivoActivty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinalizaArquivoControlador"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field protected abort:Z

.field private prb:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;


# direct methods
.method private constructor <init>(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->abort:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;-><init>(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)V

    return-void
.end method

.method private verificaSePerguntaImprimir()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$300(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarSistemaParametro()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-virtual {v1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "login"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v2}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    .line 86
    invoke-static {v2}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ""

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v0

    const-string v1, "86"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v0, v3}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$002(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;Z)Z

    :cond_1
    return-void
.end method

.method private verificarImoveisNaoImpressos(I)I
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$000(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$1000(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$300(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarIdsImoveisLidosNaoImpressos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$1002(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$1000(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$1000(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$1000(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v0, p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$502(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;I)I

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/16 p1, 0x64

    :goto_0
    return p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 10

    const/4 v0, 0x0

    .line 97
    aget-object v1, p1, v0

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->prb:Landroid/widget/ProgressBar;

    .line 98
    iget-object v1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    const/4 v2, 0x1

    aget-object v3, p1, v2

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-static {v1, v3}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$202(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;S)S

    .line 99
    iget-object v1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    const/4 v3, 0x2

    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$402(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;I)I

    .line 106
    :try_start_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$400(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)I

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v2, [Ljava/lang/Integer;

    .line 107
    iget-object v1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$400(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->publishProgress([Ljava/lang/Object;)V

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->prb:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 113
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$500(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)I

    move-result p1

    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    .line 114
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$500(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 117
    :goto_0
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->verificarImoveisNaoImpressos(I)I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 123
    :cond_2
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$100(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Lcom/br/ipad/isc/io/ArquivoRetorno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/br/ipad/isc/io/ArquivoRetorno;->getTotalImoveis()I

    move-result v4

    invoke-static {p1, v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$602(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;I)I

    .line 127
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$600(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S

    move-result p1

    if-eq p1, v3, :cond_3

    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S

    move-result p1

    if-nez p1, :cond_4

    .line 128
    :cond_3
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$800(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)I

    move-result v4

    invoke-virtual {p1, v0, v4, v0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->gerar(IIZ)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$702([Ljava/lang/Object;)[Ljava/lang/Object;

    new-array p1, v2, [Ljava/lang/Integer;

    const/16 v4, 0x5a

    .line 130
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v0

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->publishProgress([Ljava/lang/Object;)V

    :cond_4
    const/4 p1, 0x0

    .line 134
    :goto_1
    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$600(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)I

    move-result v4

    if-ge p1, v4, :cond_7

    .line 137
    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    add-int/lit8 v5, p1, 0x1

    int-to-double v6, v5

    iget-object v8, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v8}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$600(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v8, v2

    int-to-double v8, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double v6, v6, v8

    double-to-int v6, v6

    :try_start_1
    invoke-static {v4, v6}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$802(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;I)I

    .line 139
    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    iget-object v6, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v6}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$800(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)I

    move-result v6

    invoke-virtual {v4, p1, v6, v0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->gerar(IIZ)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$702([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 141
    iget-boolean p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->abort:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x7

    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    new-array p1, v2, [Ljava/lang/Integer;

    .line 144
    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$800(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v0

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->publishProgress([Ljava/lang/Object;)V

    .line 146
    invoke-static {}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$700()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$700()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v0

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$700()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v4, :cond_6

    goto :goto_2

    :cond_6
    move p1, v5

    goto :goto_1

    .line 155
    :cond_7
    :goto_2
    invoke-static {}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$700()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$700()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v0

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$700()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq p1, v4, :cond_9

    .line 156
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$700()[Ljava/lang/Object;

    move-result-object v4

    aget-object v3, v4, v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$902(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S

    move-result p1

    if-eq p1, v2, :cond_8

    .line 159
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$900(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/br/ipad/isc/io/ArquivoRetorno;->montaArquivo:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_RETORNO:Ljava/lang/String;

    invoke-static {p1, v3, v4}, Lcom/br/ipad/isc/util/Util;->escreverArquivoTexto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object p1, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_BACKUP:Ljava/lang/String;

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->apagarArquivos(Ljava/lang/String;)V

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/br/ipad/isc/util/Util;->dataFormatada(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v3}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$900(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/br/ipad/isc/io/ArquivoRetorno;->montaArquivo:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_BACKUP:Ljava/lang/String;

    invoke-static {p1, v3, v4}, Lcom/br/ipad/isc/util/Util;->escreverArquivoTexto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_8
    invoke-static {}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->getInstancia()Lcom/br/ipad/isc/fachada/FachadaWebServer;

    move-result-object p1

    iget-object v3, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v3}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$900(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S

    move-result v4

    iget-object v5, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    sget-object v6, Lcom/br/ipad/isc/io/ArquivoRetorno;->montaArquivo:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->enviarDados(Ljava/lang/String;SLandroid/content/Context;Ljava/lang/StringBuilder;)I

    move-result p1

    new-array v3, v2, [Ljava/lang/Integer;

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {p0, v3}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->publishProgress([Ljava/lang/Object;)V

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v1, Lcom/br/ipad/isc/io/ArquivoRetorno;->montaArquivo:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 173
    invoke-static {v1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$702([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_3

    :cond_9
    const/4 p1, 0x3

    .line 179
    :goto_3
    iget-boolean v1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->abort:Z

    if-eqz v1, :cond_a

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sput-object p1, Lcom/br/ipad/isc/io/ArquivoRetorno;->montaArquivo:Ljava/lang/StringBuilder;

    .line 181
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :cond_a
    move v0, p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v1, Lcom/br/ipad/isc/io/ArquivoRetorno;->montaArquivo:Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISC"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 14

    .line 225
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v2, :cond_7

    if-eq p1, v0, :cond_6

    const/4 v4, 0x4

    if-eq p1, v4, :cond_5

    const/4 v4, 0x5

    if-eq p1, v4, :cond_4

    const/16 v4, 0x63

    if-eq p1, v4, :cond_3

    const/16 v4, 0x64

    if-eq p1, v4, :cond_0

    .line 260
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    const v4, 0x7f0b006c

    invoke-virtual {p1, v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S

    move-result p1

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    .line 250
    invoke-static {p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S

    move-result p1

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 256
    :cond_1
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    const v4, 0x7f0b0064

    invoke-virtual {p1, v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 252
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    const v4, 0x7f0b0085

    invoke-virtual {p1, v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/4 v4, 0x1

    goto :goto_3

    .line 243
    :cond_3
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    const v4, 0x7f0b006e

    new-array v5, v3, [Ljava/lang/Object;

    sget-object v6, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->tempoRestanteFormatado:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {p1, v4, v5}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 240
    :cond_4
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    const v4, 0x7f0b0069

    invoke-virtual {p1, v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 237
    :cond_5
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    const v4, 0x7f0b0071

    invoke-virtual {p1, v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 234
    :cond_6
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    const v4, 0x7f0b0073

    invoke-virtual {p1, v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 231
    :cond_7
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    const v4, 0x7f0b0065

    invoke-virtual {p1, v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 228
    :cond_8
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    const v4, 0x7f0b006b

    invoke-virtual {p1, v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-eqz p1, :cond_10

    .line 269
    iget-object v5, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v5}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$300(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/br/ipad/isc/fachada/Fachada;->insereLogFinalizacao(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->getMensagemError()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_b

    const-string v4, ""

    .line 277
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 280
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    const v4, 0x7f0b0072

    invoke-virtual {p1, v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v13, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v5, ". "

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    .line 281
    invoke-static {p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S

    move-result p1

    if-nez p1, :cond_9

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    const v7, 0x7f0b0063

    invoke-virtual {v6, v7}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_9
    move-object p1, v13

    .line 285
    :goto_4
    iget-object v6, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-virtual {v6, v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    .line 286
    invoke-static {v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S

    move-result v4

    if-ne v4, v0, :cond_a

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    const v5, 0x7f0b0086

    invoke-virtual {v4, v5}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    :cond_b
    move v10, v4

    .line 294
    :goto_5
    invoke-static {}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$700()[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 295
    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$700()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v2

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$902(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    :cond_c
    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$000(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$1000(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$1000(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_d

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$500(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)I

    move-result v4

    iget-object v5, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v5}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$1000(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_d

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    .line 301
    invoke-static {v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$500(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_d

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    .line 302
    invoke-static {v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S

    move-result v4

    if-eq v4, v2, :cond_d

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    .line 303
    invoke-static {v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S

    move-result v4

    if-eq v4, v3, :cond_d

    .line 306
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$1000(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$500(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 308
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    .line 309
    invoke-static {v0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$300(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    new-instance v4, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    invoke-virtual {v0, p1, v4}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 311
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$900(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$800(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)I

    move-result v10

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$500(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)I

    move-result v11

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v4}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S

    move-result v12

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/String;BBZIIS)V

    .line 313
    iget-object v4, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    const v5, 0x7f0b0070

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1, v3}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->defineAlerta(ILjava/lang/String;I)Z

    goto :goto_7

    .line 315
    :cond_d
    iget-object v1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S

    move-result v1

    if-eq v1, v2, :cond_f

    iget-object v1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    .line 316
    invoke-static {v1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S

    move-result v1

    if-ne v1, v0, :cond_e

    goto :goto_6

    .line 324
    :cond_e
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    iget-object v1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S

    move-result v11

    iget-object v1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$900(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;BBZILjava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0, v3, p1, v3}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->defineAlerta(ILjava/lang/String;I)Z

    .line 326
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sput-object p1, Lcom/br/ipad/isc/io/ArquivoRetorno;->montaArquivo:Ljava/lang/StringBuilder;

    goto :goto_7

    .line 318
    :cond_f
    :goto_6
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    iget-object v1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S

    move-result v11

    iget-object v1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$900(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;BBZILjava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0, v3, p1, v3}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->defineAlerta(ILjava/lang/String;I)Z

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sput-object p1, Lcom/br/ipad/isc/io/ArquivoRetorno;->montaArquivo:Ljava/lang/StringBuilder;

    :cond_10
    :goto_7
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 64
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 68
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorSistemaLeitura()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$002(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;Z)Z

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->verificaSePerguntaImprimir()V

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    new-instance v1, Lcom/br/ipad/isc/io/ArquivoRetorno;

    invoke-direct {v1}, Lcom/br/ipad/isc/io/ArquivoRetorno;-><init>()V

    invoke-static {v0, v1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$102(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;Lcom/br/ipad/isc/io/ArquivoRetorno;)Lcom/br/ipad/isc/io/ArquivoRetorno;

    .line 75
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$100(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)Lcom/br/ipad/isc/io/ArquivoRetorno;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->this$0:Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-static {v1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->access$200(Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/io/ArquivoRetorno;->setArrayListImovelConta(I)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 1

    .line 334
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 336
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 338
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->prb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty$FinalizaArquivoControlador;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
