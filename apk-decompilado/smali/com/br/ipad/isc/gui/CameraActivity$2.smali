.class Lcom/br/ipad/isc/gui/CameraActivity$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 76
    iput-object p1, p0, Lcom/br/ipad/isc/gui/CameraActivity$2;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 81
    iget-object p1, p0, Lcom/br/ipad/isc/gui/CameraActivity$2;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/CameraActivity;->access$100(Lcom/br/ipad/isc/gui/CameraActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 83
    :try_start_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/CameraActivity$2;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/CameraActivity;->access$200(Lcom/br/ipad/isc/gui/CameraActivity;)Landroid/hardware/Camera;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity$2;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    iget-object v0, v0, Lcom/br/ipad/isc/gui/CameraActivity;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/CameraActivity$2;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    iget-object v1, v1, Lcom/br/ipad/isc/gui/CameraActivity;->mPictureCallbackRaw:Landroid/hardware/Camera$PictureCallback;

    iget-object v2, p0, Lcom/br/ipad/isc/gui/CameraActivity$2;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    iget-object v2, v2, Lcom/br/ipad/isc/gui/CameraActivity;->mPictureCallbackJpeg:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
