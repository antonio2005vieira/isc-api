.class public Lcom/br/ipad/isc/gui/InformarImeiActivity;
.super Landroid/app/Activity;
.source "InformarImeiActivity.java"


# instance fields
.field private alertaMensagem:Landroid/widget/TextView;

.field private btnLogin:Landroid/widget/Button;

.field private imei:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/br/ipad/isc/gui/InformarImeiActivity;)Landroid/widget/TextView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/br/ipad/isc/gui/InformarImeiActivity;->imei:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/br/ipad/isc/gui/InformarImeiActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/InformarImeiActivity;->salvarArquivo()V

    return-void
.end method

.method static synthetic access$200(Lcom/br/ipad/isc/gui/InformarImeiActivity;)Landroid/widget/TextView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/br/ipad/isc/gui/InformarImeiActivity;->alertaMensagem:Landroid/widget/TextView;

    return-object p0
.end method

.method private salvarArquivo()V
    .locals 3

    .line 57
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->existeCaminhoIMEI()V

    .line 58
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_IMEI:Ljava/lang/String;

    const-string v2, "imei.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/br/ipad/isc/gui/InformarImeiActivity;->imei:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 64
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 67
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 68
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 69
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 71
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/InformarImeiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/InformarImeiActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Erro : "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0029

    .line 33
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/InformarImeiActivity;->setContentView(I)V

    .line 35
    invoke-static {p0}, Lcom/br/ipad/isc/fachada/Fachada;->setContext(Landroid/content/Context;)V

    const p1, 0x7f0700d0

    .line 37
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/InformarImeiActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/InformarImeiActivity;->imei:Landroid/widget/TextView;

    const p1, 0x7f0700bd

    .line 38
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/InformarImeiActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/InformarImeiActivity;->alertaMensagem:Landroid/widget/TextView;

    const p1, 0x7f070050

    .line 39
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/InformarImeiActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/InformarImeiActivity;->btnLogin:Landroid/widget/Button;

    .line 41
    new-instance v0, Lcom/br/ipad/isc/gui/InformarImeiActivity$1;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/InformarImeiActivity$1;-><init>(Lcom/br/ipad/isc/gui/InformarImeiActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 23
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
