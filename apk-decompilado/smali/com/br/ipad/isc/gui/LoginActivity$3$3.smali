.class Lcom/br/ipad/isc/gui/LoginActivity$3$3;
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

    .line 341
    iput-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3$3;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 344
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    iget-object p2, p0, Lcom/br/ipad/isc/gui/LoginActivity$3$3;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$3;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/gui/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
