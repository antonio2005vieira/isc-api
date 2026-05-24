.class public Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;
.super Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;
.source "ControladorAlertaValidarErro.java"


# instance fields
.field private imovel:Lcom/br/ipad/isc/bean/ImovelConta;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-void
.end method


# virtual methods
.method public alertaMensagem()V
    .locals 3

    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 49
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public alertaPerguntaNao()V
    .locals 0

    return-void
.end method

.method public alertaPerguntaSim()V
    .locals 3

    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 31
    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const-string v2, "imovel"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 32
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b007f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
