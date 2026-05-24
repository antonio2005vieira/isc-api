.class Lcom/br/ipad/isc/gui/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/CameraActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/CameraActivity;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/br/ipad/isc/gui/CameraActivity$1;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 59
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/CameraActivity$1;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    const-class v0, Lcom/br/ipad/isc/gui/FotoActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    iget-object p2, p0, Lcom/br/ipad/isc/gui/CameraActivity$1;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-static {p2}, Lcom/br/ipad/isc/gui/CameraActivity;->access$000(Lcom/br/ipad/isc/gui/CameraActivity;)Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    move-result-object p2

    const-string v0, "helper"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 p2, 0x40000000    # 2.0f

    .line 61
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    iget-object p2, p0, Lcom/br/ipad/isc/gui/CameraActivity$1;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/gui/CameraActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
