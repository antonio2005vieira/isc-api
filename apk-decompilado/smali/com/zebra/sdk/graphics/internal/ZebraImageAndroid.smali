.class public Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;->bitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitmap arg cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "unknown image type"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "unknown image type"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "image path arg cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private removePixelPaddingFromRaster(IILjava/io/ByteArrayOutputStream;Landroid/graphics/Bitmap;I)V
    .locals 6

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_2

    mul-int v3, v1, p5

    div-int/lit8 v4, v2, 0x8

    add-int/2addr v3, v4

    aget-byte v3, p3, v3

    rem-int/lit8 v4, v2, 0x8

    rsub-int/lit8 v4, v4, 0x7

    const/4 v5, 0x1

    shl-int v4, v5, v4

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    const/4 v5, 0x0

    :cond_0
    int-to-byte v3, v5

    if-nez v3, :cond_1

    const/high16 v3, -0x1000000

    goto :goto_2

    :cond_1
    const/4 v3, -0x1

    :goto_2
    invoke-virtual {p4, v2, v1, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getDitheredB64EncodedPng()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;->writeDitheredPng(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/zebra/sdk/util/internal/Base64;->encodeBytes([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getRow(I)[I
    .locals 9

    iget-object v0, p0, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    new-array v0, v7, [I

    iget-object v1, p0, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v2, v0

    move v4, v7

    move v6, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public scaleImage(II)Z
    .locals 2

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;->bitmap:Landroid/graphics/Bitmap;

    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public writeDitheredPng(Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v3}, Lcom/zebra/sdk/graphics/internal/DitheredImageProvider;->getDitheredImage(Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;->getWidth()I

    move-result v1

    rem-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int v5, v0, v1

    invoke-virtual {p0}, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;->getHeight()I

    move-result v2

    move-object v0, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;->removePixelPaddingFromRaster(IILjava/io/ByteArrayOutputStream;Landroid/graphics/Bitmap;I)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {v6, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    return-void
.end method
