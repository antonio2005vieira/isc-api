.class public Lcom/zebra/sdk/graphics/internal/PngToGrfConverterAndroid;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pngToGrf(Ljava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lcom/zebra/sdk/graphics/internal/NaughtyBitOutputStream;

    invoke-direct {v1, v0}, Lcom/zebra/sdk/graphics/internal/NaughtyBitOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0}, Lcom/zebra/sdk/graphics/ZebraImageFactory;->getImage(Landroid/graphics/Bitmap;)Lcom/zebra/sdk/graphics/ZebraImageI;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;

    invoke-static {p0, v1}, Lcom/zebra/sdk/graphics/internal/DitheredImageProvider;->getDitheredImage(Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
