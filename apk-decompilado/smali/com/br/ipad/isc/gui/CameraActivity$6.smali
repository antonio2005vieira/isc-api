.class Lcom/br/ipad/isc/gui/CameraActivity$6;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


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

    .line 256
    iput-object p1, p0, Lcom/br/ipad/isc/gui/CameraActivity$6;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2

    .line 259
    new-instance p2, Lcom/br/ipad/isc/gui/CameraActivity$SavePhotoTask;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity$6;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-direct {p2, v0}, Lcom/br/ipad/isc/gui/CameraActivity$SavePhotoTask;-><init>(Lcom/br/ipad/isc/gui/CameraActivity;)V

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/gui/CameraActivity$SavePhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 260
    iget-object p1, p0, Lcom/br/ipad/isc/gui/CameraActivity$6;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/CameraActivity;->access$200(Lcom/br/ipad/isc/gui/CameraActivity;)Landroid/hardware/Camera;

    return-void
.end method
