.class Lcom/br/ipad/isc/gui/LoginActivity$3$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/LoginActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/br/ipad/isc/gui/LoginActivity$3;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/LoginActivity$3;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3$4;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 362
    invoke-static {}, Lcom/br/ipad/isc/util/Bluetooth;->ativarBluetooth()Z

    .line 363
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/LoginActivity$3$4;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$3;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const-class v0, Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 364
    iget-object p2, p0, Lcom/br/ipad/isc/gui/LoginActivity$3$4;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$3;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/gui/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 365
    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3$4;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$3;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/LoginActivity;->finish()V

    return-void
.end method
