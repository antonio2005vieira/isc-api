.class public Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilCpcl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/internal/GraphicsConvertionUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCorrectedFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/zebra/sdk/util/internal/FileUtilities;->parseDriveAndExtension(Ljava/lang/String;)Lcom/zebra/sdk/util/internal/PrinterFilePath;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zebra/sdk/util/internal/PrinterFilePath;->getFileName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".PCX"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getWidthOfImage(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    return p0
.end method


# virtual methods
.method public createPcxHeader(II)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilCpcl;->integerToLittleEndianByteArray(I)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    invoke-virtual {p0, p2}, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilCpcl;->integerToLittleEndianByteArray(I)[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array p2, v0, [B

    fill-array-data p2, :array_2

    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x30

    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-ge v0, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p1}, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilCpcl;->getWidthOfImage(I)I

    move-result p1

    rem-int/lit8 v0, p1, 0x2

    int-to-char v0, v0

    add-int/2addr p1, v0

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilCpcl;->integerToLittleEndianByteArray(I)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 p1, 0x2

    new-array p1, p1, [B

    fill-array-data p1, :array_3

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 p1, 0x0

    :goto_1
    const/16 v0, 0x3a

    if-ge p1, v0, :cond_1

    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :array_0
    .array-data 1
        0xat
        0x5t
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        -0x38t
        0x0t
        -0x38t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public createPcxImage(IILcom/zebra/sdk/graphics/internal/ZebraImageInternal;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p1, :cond_0

    invoke-interface {p3}, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;->getWidth()I

    move-result p1

    :cond_0
    if-gtz p2, :cond_1

    invoke-interface {p3}, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;->getHeight()I

    move-result p2

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p3, v0}, Lcom/zebra/sdk/graphics/internal/DitheredImageProvider;->getDitheredImage(Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilCpcl;->createPcxImage(II[B)[B

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p1
.end method

.method public createPcxImage(II[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilCpcl;->getWidthOfImage(I)I

    move-result v0

    new-instance v1, Lcom/zebra/sdk/printer/internal/RleEncodedImage;

    invoke-direct {v1}, Lcom/zebra/sdk/printer/internal/RleEncodedImage;-><init>()V

    invoke-virtual {v1, p3, v0}, Lcom/zebra/sdk/printer/internal/RleEncodedImage;->rleEncoding([BI)[B

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilCpcl;->createPcxHeader(II)[B

    move-result-object p1

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p2, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method integerToLittleEndianByteArray(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    return-object v0
.end method

.method public sendImageToStream(Ljava/lang/String;Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;IILjava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2, p3, p4}, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;->scaleImage(II)Z

    invoke-virtual {p0, p3, p4, p2}, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilCpcl;->createPcxImage(IILcom/zebra/sdk/graphics/internal/ZebraImageInternal;)[B

    move-result-object p2

    invoke-static {p2}, Lcom/zebra/sdk/graphics/internal/CpclCrcHeader;->getCRC16ForCertificateFilesOnly([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilCpcl;->getCorrectedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zebra/sdk/util/internal/StringUtilities;->convertTo8dot3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    array-length p4, p2

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p4

    const/16 v0, 0x8

    const-string v1, "0"

    invoke-static {v0, v1, p4}, Lcom/zebra/sdk/util/internal/StringUtilities;->stringPadToPlaces(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p2}, Lcom/zebra/sdk/graphics/internal/CpclCrcHeader;->getWChecksum([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v3, "! CISDFCRC16"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length v3, v1

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v2, v3, v4, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length p3, v1

    invoke-virtual {v2, v1, v4, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v2, p3, v4, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length p1, v1

    invoke-virtual {v2, v1, v4, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v2, p1, v4, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length p1, v1

    invoke-virtual {v2, v1, v4, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v2, p1, v4, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length p1, v1

    invoke-virtual {v2, v1, v4, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length p1, p2

    invoke-virtual {v2, p2, v4, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length p1, v1

    invoke-virtual {v2, v1, v4, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void
.end method
