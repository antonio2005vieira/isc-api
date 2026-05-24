.class public Lcom/br/ipad/isc/gui/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# instance fields
.field protected execute:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/br/ipad/isc/gui/BaseActivity;->execute:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/br/ipad/isc/fachada/Fachada;->isOrientacaoLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "execute"

    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 37
    iput-boolean v1, p0, Lcom/br/ipad/isc/gui/BaseActivity;->execute:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/br/ipad/isc/gui/BaseActivity;->execute:Z

    .line 40
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/BaseActivity;->setRequestedOrientation(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "execute"

    const/4 v1, 0x1

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
