.class public Lcom/br/ipad/isc/gui/BaseTabActivity;
.super Landroid/app/TabActivity;
.source "BaseTabActivity.java"


# instance fields
.field protected execute:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/br/ipad/isc/gui/BaseTabActivity;->execute:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/br/ipad/isc/fachada/Fachada;->isOrientacaoLandscape(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/BaseTabActivity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method
