.class public Lcom/br/ipad/isc/gui/CameraActivity;
.super Landroid/app/Activity;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/gui/CameraActivity$SavePhotoTask;
    }
.end annotation


# instance fields
.field private btTirarFoto:Landroid/widget/Button;

.field private camera:Landroid/hardware/Camera;

.field private cameraConfigured:Z

.field private helper:Lcom/br/ipad/isc/bean/helpers/CameraHelper;

.field private inPreview:Z

.field mPictureCallbackJpeg:Landroid/hardware/Camera$PictureCallback;

.field mPictureCallbackRaw:Landroid/hardware/Camera$PictureCallback;

.field mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private preview:Lcom/br/ipad/isc/gui/CustomDrawableView;

.field private previewHolder:Landroid/view/SurfaceHolder;

.field surfaceCallback:Landroid/view/SurfaceHolder$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->preview:Lcom/br/ipad/isc/gui/CustomDrawableView;

    .line 36
    iput-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->previewHolder:Landroid/view/SurfaceHolder;

    .line 37
    iput-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->camera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->inPreview:Z

    .line 39
    iput-boolean v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->cameraConfigured:Z

    .line 222
    new-instance v0, Lcom/br/ipad/isc/gui/CameraActivity$3;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/CameraActivity$3;-><init>(Lcom/br/ipad/isc/gui/CameraActivity;)V

    iput-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->surfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 243
    new-instance v0, Lcom/br/ipad/isc/gui/CameraActivity$4;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/CameraActivity$4;-><init>(Lcom/br/ipad/isc/gui/CameraActivity;)V

    iput-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->mPictureCallbackRaw:Landroid/hardware/Camera$PictureCallback;

    .line 250
    new-instance v0, Lcom/br/ipad/isc/gui/CameraActivity$5;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/CameraActivity$5;-><init>(Lcom/br/ipad/isc/gui/CameraActivity;)V

    iput-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 256
    new-instance v0, Lcom/br/ipad/isc/gui/CameraActivity$6;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/CameraActivity$6;-><init>(Lcom/br/ipad/isc/gui/CameraActivity;)V

    iput-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->mPictureCallbackJpeg:Landroid/hardware/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/br/ipad/isc/gui/CameraActivity;)Lcom/br/ipad/isc/bean/helpers/CameraHelper;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->helper:Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/br/ipad/isc/gui/CameraActivity;)Landroid/widget/Button;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->btTirarFoto:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/br/ipad/isc/gui/CameraActivity;)Landroid/hardware/Camera;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->camera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$300(Lcom/br/ipad/isc/gui/CameraActivity;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/br/ipad/isc/gui/CameraActivity;->initPreview(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/br/ipad/isc/gui/CameraActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/CameraActivity;->startPreview()V

    return-void
.end method

.method private getBestPreviewSize(IILandroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;
    .locals 5

    .line 139
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    const/16 v2, 0x1ab

    if-ne p1, v2, :cond_2

    .line 143
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    if-gt v2, p1, :cond_0

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    if-gt v2, p2, :cond_0

    if-nez v0, :cond_1

    goto :goto_2

    .line 148
    :cond_1
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int v2, v2, v3

    .line 149
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v3, v4

    if-le v3, v2, :cond_0

    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 159
    :cond_2
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    if-lt v2, p1, :cond_0

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    if-lt v2, p2, :cond_0

    if-nez v0, :cond_3

    goto :goto_2

    .line 164
    :cond_3
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int v2, v2, v3

    .line 165
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v3, v4

    if-le v3, v2, :cond_0

    :goto_2
    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private initPreview(II)V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->previewHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/br/ipad/isc/gui/CameraActivity;->camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/br/ipad/isc/gui/CameraActivity;->previewHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "PreviewDemo-surfaceCallback"

    const-string v3, "Exception in setPreviewDisplay()"

    .line 185
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 191
    :goto_0
    iget-boolean v1, p0, Lcom/br/ipad/isc/gui/CameraActivity;->cameraConfigured:Z

    if-nez v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/br/ipad/isc/gui/CameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/br/ipad/isc/gui/CameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 196
    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lcom/br/ipad/isc/gui/CameraActivity;->getBestPreviewSize(IILandroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 199
    iget p2, p1, Landroid/hardware/Camera$Size;->width:I

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, p2, p1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 201
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    const/16 p1, 0x100

    .line 204
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 208
    iget-object p1, p0, Lcom/br/ipad/isc/gui/CameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 209
    iput-boolean v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->cameraConfigured:Z

    :cond_1
    return-void
.end method

.method private startPreview()V
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->cameraConfigured:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->inPreview:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public combinaImagens(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 329
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 330
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 333
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 334
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x1

    .line 339
    invoke-static {p1, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 342
    invoke-virtual {v3, p1, v0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 343
    invoke-virtual {v3, p2, v0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method public onBackPressed()V
    .locals 3

    .line 351
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 352
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/br/ipad/isc/gui/FotoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    iget-object v1, p0, Lcom/br/ipad/isc/gui/CameraActivity;->helper:Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    const-string v2, "helper"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    .line 354
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/CameraActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 54
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0046

    .line 55
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    .line 56
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/br/ipad/isc/gui/CameraActivity$1;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/CameraActivity$1;-><init>(Lcom/br/ipad/isc/gui/CameraActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    const p1, 0x7f0a001d

    .line 68
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/CameraActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "helper"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/CameraActivity;->helper:Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    const p1, 0x7f07004e

    .line 74
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/CameraActivity;->btTirarFoto:Landroid/widget/Button;

    .line 76
    new-instance v0, Lcom/br/ipad/isc/gui/CameraActivity$2;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/CameraActivity$2;-><init>(Lcom/br/ipad/isc/gui/CameraActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0700dd

    .line 91
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/br/ipad/isc/gui/CustomDrawableView;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/CameraActivity;->preview:Lcom/br/ipad/isc/gui/CustomDrawableView;

    .line 92
    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/CustomDrawableView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/gui/CameraActivity;->previewHolder:Landroid/view/SurfaceHolder;

    .line 93
    iget-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->surfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 94
    iget-object p1, p0, Lcom/br/ipad/isc/gui/CameraActivity;->previewHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 124
    iget-boolean v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->inPreview:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->camera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->inPreview:Z

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 108
    iget-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->btTirarFoto:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    iget-boolean v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->inPreview:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->camera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->inPreview:Z

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 101
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity;->camera:Landroid/hardware/Camera;

    .line 102
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/CameraActivity;->startPreview()V

    return-void
.end method
