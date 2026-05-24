.class Lcom/br/ipad/isc/gui/CameraActivity$3;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/gui/CameraActivity;
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

    .line 222
    iput-object p1, p0, Lcom/br/ipad/isc/gui/CameraActivity$3;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 232
    iget-object p1, p0, Lcom/br/ipad/isc/gui/CameraActivity$3;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-static {p1, p3, p4}, Lcom/br/ipad/isc/gui/CameraActivity;->access$300(Lcom/br/ipad/isc/gui/CameraActivity;II)V

    .line 233
    iget-object p1, p0, Lcom/br/ipad/isc/gui/CameraActivity$3;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/CameraActivity;->access$400(Lcom/br/ipad/isc/gui/CameraActivity;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 237
    iget-object p1, p0, Lcom/br/ipad/isc/gui/CameraActivity$3;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/CameraActivity;->access$200(Lcom/br/ipad/isc/gui/CameraActivity;)Landroid/hardware/Camera;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/br/ipad/isc/gui/CameraActivity$3;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/CameraActivity;->access$200(Lcom/br/ipad/isc/gui/CameraActivity;)Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    :cond_0
    return-void
.end method
