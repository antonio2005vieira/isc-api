.class Lcom/br/ipad/isc/gui/MenuActivity$9;
.super Landroid/app/ProgressDialog;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/MenuActivity;->validarFotosNaoEnviadas()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/MenuActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/MenuActivity;Landroid/content/Context;)V
    .locals 0

    .line 836
    iput-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$9;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
