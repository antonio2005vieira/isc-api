.class Lcom/br/ipad/isc/gui/LoginActivity$5$1$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/LoginActivity$5$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/br/ipad/isc/gui/LoginActivity$5$1;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/LoginActivity$5$1;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$5$1$1;->this$2:Lcom/br/ipad/isc/gui/LoginActivity$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 470
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/LoginActivity$5$1$1;->this$2:Lcom/br/ipad/isc/gui/LoginActivity$5$1;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/LoginActivity$5$1;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$5;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/LoginActivity$5;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const-class p3, Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    iget-object p2, p0, Lcom/br/ipad/isc/gui/LoginActivity$5$1$1;->this$2:Lcom/br/ipad/isc/gui/LoginActivity$5$1;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/LoginActivity$5$1;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$5;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/LoginActivity$5;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/gui/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 472
    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$5$1$1;->this$2:Lcom/br/ipad/isc/gui/LoginActivity$5$1;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/LoginActivity$5$1;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$5;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/LoginActivity$5;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/LoginActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
