.class public Lcom/zebra/sdk/graphics/internal/DitheringStream;
.super Ljava/io/InputStream;


# instance fields
.field private headerIndex:I

.field private headerInfo:[I

.field private image:Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;

.field private tempDitheredImageBuffer:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/graphics/internal/DitheringStream;->image:Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zebra/sdk/graphics/internal/DitheringStream;->headerIndex:I

    iput-object p1, p0, Lcom/zebra/sdk/graphics/internal/DitheringStream;->image:Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;

    invoke-direct {p0}, Lcom/zebra/sdk/graphics/internal/DitheringStream;->processImage()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/zebra/sdk/util/internal/ReflectionUtil;->invokeZebraImageFactory_getImage(Ljava/io/InputStream;)Lcom/zebra/sdk/graphics/ZebraImageI;

    move-result-object p1

    check-cast p1, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;

    invoke-direct {p0, p1}, Lcom/zebra/sdk/graphics/internal/DitheringStream;-><init>(Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;)V

    return-void
.end method

.method private processImage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/graphics/internal/DitheringStream;->image:Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;

    invoke-interface {v0}, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/zebra/sdk/graphics/internal/DitheringStream;->image:Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;

    invoke-interface {v1}, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/zebra/sdk/graphics/internal/Ditherer;->getZebraSpecificPngHeader(II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/graphics/internal/DitheringStream;->headerInfo:[I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/zebra/sdk/graphics/internal/DitheringStream;->image:Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;

    new-instance v2, Lcom/zebra/sdk/graphics/internal/NaughtyBitOutputStream;

    invoke-direct {v2, v0}, Lcom/zebra/sdk/graphics/internal/NaughtyBitOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1, v2}, Lcom/zebra/sdk/graphics/internal/DitheredImageProvider;->getDitheredImage(Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;Ljava/io/OutputStream;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lcom/zebra/sdk/graphics/internal/DitheringStream;->tempDitheredImageBuffer:Ljava/io/ByteArrayInputStream;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3

    iget v0, p0, Lcom/zebra/sdk/graphics/internal/DitheringStream;->headerIndex:I

    iget-object v1, p0, Lcom/zebra/sdk/graphics/internal/DitheringStream;->headerInfo:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/zebra/sdk/graphics/internal/DitheringStream;->headerIndex:I

    aget v0, v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/graphics/internal/DitheringStream;->tempDitheredImageBuffer:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    :goto_0
    return v0
.end method
