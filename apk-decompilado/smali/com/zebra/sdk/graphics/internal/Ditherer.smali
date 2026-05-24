.class public Lcom/zebra/sdk/graphics/internal/Ditherer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPixelWidthFromWidth(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static getZebraSpecificPngHeader(II)[I
    .locals 3

    invoke-static {p0}, Lcom/zebra/sdk/graphics/internal/Ditherer;->getPixelWidthFromWidth(I)I

    move-result p0

    const/4 v0, 0x4

    new-array v0, v0, [I

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    aput v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    const/4 v1, 0x1

    aput p0, v0, v1

    shr-int/lit8 p0, p1, 0x8

    and-int/lit16 p0, p0, 0xff

    const/4 v1, 0x2

    aput p0, v0, v1

    and-int/lit16 p0, p1, 0xff

    const/4 p1, 0x3

    aput p0, v0, p1

    return-object v0
.end method

.method public static writeDitheredContents(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/zebra/sdk/util/internal/ReflectionUtil;->invokeZebraImageFactory_getImage(Ljava/io/InputStream;)Lcom/zebra/sdk/graphics/ZebraImageI;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;

    invoke-interface {p0}, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;->getWidth()I

    move-result v0

    invoke-interface {p0}, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/zebra/sdk/graphics/internal/Ditherer;->getZebraSpecificPngHeader(II)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/graphics/internal/NaughtyBitOutputStream;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/graphics/internal/NaughtyBitOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v0}, Lcom/zebra/sdk/graphics/internal/DitheredImageProvider;->getDitheredImage(Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;Ljava/io/OutputStream;)V

    return-void
.end method
