.class public Lcom/zebra/sdk/printer/internal/GraphicsUtilZpl;
.super Lcom/zebra/sdk/printer/internal/GraphicsUtilA;


# instance fields
.field protected printerConnection:Lcom/zebra/sdk/comm/Connection;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;)V
    .locals 0

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/GraphicsUtilA;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/GraphicsUtilZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    return-void
.end method

.method private getBodyHeader(IIZII)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "^FO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, "^GFA"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p3, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "^XA"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public printImage(Lcom/zebra/sdk/graphics/ZebraImageI;IIIIZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    check-cast p1, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;

    invoke-virtual {p0, p4, p5, p1}, Lcom/zebra/sdk/printer/internal/GraphicsUtilZpl;->scaleImage(IILcom/zebra/sdk/graphics/internal/ZebraImageInternal;)Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;

    move-result-object p1

    invoke-interface {p1}, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;->getWidth()I

    move-result p4

    add-int/lit8 p4, p4, 0x7

    div-int/lit8 v4, p4, 0x8

    invoke-interface {p1}, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;->getHeight()I

    move-result p4

    mul-int v5, v4, p4

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p6

    invoke-direct/range {v0 .. v5}, Lcom/zebra/sdk/printer/internal/GraphicsUtilZpl;->getBodyHeader(IIZII)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zebra/sdk/util/internal/ZPLUtilities;->replaceAllWithInternalCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/zebra/sdk/printer/internal/GraphicsUtilZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    new-instance p2, Lcom/zebra/sdk/printer/internal/PrinterConnectionOutputStream;

    iget-object p3, p0, Lcom/zebra/sdk/printer/internal/GraphicsUtilZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {p2, p3}, Lcom/zebra/sdk/printer/internal/PrinterConnectionOutputStream;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    new-instance p3, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;

    invoke-direct {p3, p2}, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-static {p1, p3}, Lcom/zebra/sdk/graphics/internal/DitheredImageProvider;->getDitheredImage(Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;Ljava/io/OutputStream;)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p2}, Lcom/zebra/sdk/printer/internal/PrinterConnectionOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p6, :cond_0

    const-string p1, "^XZ"

    invoke-static {p1}, Lcom/zebra/sdk/util/internal/ZPLUtilities;->decorateWithFormatPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/zebra/sdk/printer/internal/GraphicsUtilZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public storeImage(Ljava/lang/String;Lcom/zebra/sdk/graphics/ZebraImageI;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilZpl;

    invoke-direct {v0}, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilZpl;-><init>()V

    new-instance v5, Lcom/zebra/sdk/printer/internal/PrinterConnectionOutputStream;

    iget-object v1, p0, Lcom/zebra/sdk/printer/internal/GraphicsUtilZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {v5, v1}, Lcom/zebra/sdk/printer/internal/PrinterConnectionOutputStream;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    :try_start_0
    move-object v2, p2

    check-cast v2, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilZpl;->sendImageToStream(Ljava/lang/String;Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;IILjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
