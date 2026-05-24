.class public Lcom/zebra/sdk/printer/internal/GraphicsUtilCpcl;
.super Lcom/zebra/sdk/printer/internal/GraphicsUtilA;


# instance fields
.field protected printerConnection:Lcom/zebra/sdk/comm/Connection;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;)V
    .locals 0

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/GraphicsUtilA;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/GraphicsUtilCpcl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    return-void
.end method


# virtual methods
.method public printImage(Lcom/zebra/sdk/graphics/ZebraImageI;IIIIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const-string v0, " "

    move-object v1, p1

    check-cast v1, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;

    invoke-virtual {p0, p4, p5, v1}, Lcom/zebra/sdk/printer/internal/GraphicsUtilCpcl;->scaleImage(IILcom/zebra/sdk/graphics/internal/ZebraImageInternal;)Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;

    move-result-object p4

    invoke-interface {p1}, Lcom/zebra/sdk/graphics/ZebraImageI;->getWidth()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    :try_start_0
    new-instance p5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz p6, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "! 0 200 200 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " 1\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "FORM\r\nPRINT\r\n"

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string p6, "CG "

    invoke-virtual {p6}, Ljava/lang/String;->getBytes()[B

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-interface {p4}, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/GraphicsUtilCpcl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    new-instance p1, Lcom/zebra/sdk/printer/internal/PrinterConnectionOutputStream;

    iget-object p2, p0, Lcom/zebra/sdk/printer/internal/GraphicsUtilCpcl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {p1, p2}, Lcom/zebra/sdk/printer/internal/PrinterConnectionOutputStream;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    new-instance p2, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamCpcl;

    invoke-direct {p2, p1}, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamCpcl;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p4, p2}, Lcom/zebra/sdk/graphics/internal/DitheredImageProvider;->getDitheredImage(Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;Ljava/io/OutputStream;)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/internal/PrinterConnectionOutputStream;->close()V

    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/GraphicsUtilCpcl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    const-string p2, "\r\n"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/GraphicsUtilCpcl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/zebra/sdk/comm/Connection;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

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

    new-instance v0, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilCpcl;

    invoke-direct {v0}, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilCpcl;-><init>()V

    new-instance v5, Lcom/zebra/sdk/printer/internal/PrinterConnectionOutputStream;

    iget-object v1, p0, Lcom/zebra/sdk/printer/internal/GraphicsUtilCpcl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {v5, v1}, Lcom/zebra/sdk/printer/internal/PrinterConnectionOutputStream;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    :try_start_0
    move-object v2, p2

    check-cast v2, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilCpcl;->sendImageToStream(Ljava/lang/String;Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;IILjava/io/OutputStream;)V
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
