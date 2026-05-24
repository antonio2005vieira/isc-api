.class Lcom/br/ipad/isc/gui/ImagemSalvarActivity$1;
.super Ljava/lang/Object;
.source "ImagemSalvarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$1;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 72
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$1;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->deletaFoto()V

    .line 74
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$1;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    const-class v1, Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$1;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->access$000(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    move-result-object v0

    const-string v1, "helper"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$1;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
