.class Lcom/br/ipad/isc/gui/CameraActivity$SavePhotoTask;
.super Landroid/os/AsyncTask;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/gui/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SavePhotoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "[B",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/CameraActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/CameraActivity;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/br/ipad/isc/gui/CameraActivity$SavePhotoTask;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 269
    check-cast p1, [[B

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/CameraActivity$SavePhotoTask;->doInBackground([[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([[B)Ljava/lang/String;
    .locals 7

    const-string v0, "ISC"

    .line 273
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->existeSDCARD()V

    .line 274
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_ISC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/fotos"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 279
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_FOTOS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/br/ipad/isc/gui/CameraActivity$SavePhotoTask;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-static {v3}, Lcom/br/ipad/isc/gui/CameraActivity;->access$000(Lcom/br/ipad/isc/gui/CameraActivity;)Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->getImovel()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/br/ipad/isc/gui/CameraActivity$SavePhotoTask;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-static {v4}, Lcom/br/ipad/isc/gui/CameraActivity;->access$000(Lcom/br/ipad/isc/gui/CameraActivity;)Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->getFotoTipo()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/br/ipad/isc/util/Util;->obterAAAAMMDDHHMMSS(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 280
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_FOTOS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 284
    aget-object v4, p1, v2

    aget-object p1, p1, v2

    array-length p1, p1

    invoke-static {v4, v2, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 287
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 288
    iget-object v4, p0, Lcom/br/ipad/isc/gui/CameraActivity$SavePhotoTask;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-virtual {v4}, Lcom/br/ipad/isc/gui/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/br/ipad/isc/util/Util;->desenhaCirculo(Landroid/content/Context;Landroid/graphics/drawable/ShapeDrawable;)Landroid/graphics/drawable/ShapeDrawable;

    .line 290
    iget-object v4, p0, Lcom/br/ipad/isc/gui/CameraActivity$SavePhotoTask;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-virtual {v4}, Lcom/br/ipad/isc/gui/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/br/ipad/isc/gui/CameraActivity$SavePhotoTask;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-virtual {v5}, Lcom/br/ipad/isc/gui/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 291
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 292
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 295
    iget-object v2, p0, Lcom/br/ipad/isc/gui/CameraActivity$SavePhotoTask;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-virtual {v2, p1, v4}, Lcom/br/ipad/isc/gui/CameraActivity;->combinaImagens(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 299
    :try_start_0
    iget-object v2, p0, Lcom/br/ipad/isc/gui/CameraActivity$SavePhotoTask;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-virtual {v2}, Lcom/br/ipad/isc/gui/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 301
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x46

    invoke-virtual {p1, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 303
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 304
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 311
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 308
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 315
    :goto_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity$SavePhotoTask;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    const-class v1, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "foto"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    iget-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity$SavePhotoTask;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/CameraActivity;->access$000(Lcom/br/ipad/isc/gui/CameraActivity;)Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    move-result-object v0

    const-string v1, "helper"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 318
    iget-object v0, p0, Lcom/br/ipad/isc/gui/CameraActivity$SavePhotoTask;->this$0:Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/gui/CameraActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return-object p1
.end method
