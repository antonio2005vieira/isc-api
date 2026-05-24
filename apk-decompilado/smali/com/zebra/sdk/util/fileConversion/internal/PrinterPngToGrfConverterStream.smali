.class public Lcom/zebra/sdk/util/fileConversion/internal/PrinterPngToGrfConverterStream;
.super Ljava/io/InputStream;


# instance fields
.field private grfStream:Ljava/io/ByteArrayInputStream;

.field headerCount:I

.field private pngStream:Ljava/io/InputStream;

.field zebraHeader:[I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterPngToGrfConverterStream;->headerCount:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterPngToGrfConverterStream;->zebraHeader:[I

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterPngToGrfConverterStream;->pngStream:Ljava/io/InputStream;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private pngToGrf(Ljava/io/InputStream;)[B
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.zebra.sdk.graphics.internal.PngToGrfConverterDesktop"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_1
    const-string v1, "com.zebra.sdk.graphics.internal.PngToGrfConverterAndroid"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const-string v2, "pngToGrf"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/io/InputStream;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterPngToGrfConverterStream;->headerCount:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterPngToGrfConverterStream;->pngStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterPngToGrfConverterStream;->zebraHeader:[I

    iget v2, p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterPngToGrfConverterStream;->headerCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterPngToGrfConverterStream;->headerCount:I

    aput v0, v1, v2

    return v0

    :cond_0
    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterPngToGrfConverterStream;->headerCount:I

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterPngToGrfConverterStream;->pngStream:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterPngToGrfConverterStream;->pngToGrf(Ljava/io/InputStream;)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterPngToGrfConverterStream;->grfStream:Ljava/io/ByteArrayInputStream;

    :cond_1
    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterPngToGrfConverterStream;->grfStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    return v0
.end method
