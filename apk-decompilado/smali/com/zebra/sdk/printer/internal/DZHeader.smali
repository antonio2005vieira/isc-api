.class public Lcom/zebra/sdk/printer/internal/DZHeader;
.super Ljava/lang/Object;


# static fields
.field private static final blank:B


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFlags(ZZLjava/lang/String;)B
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x40

    int-to-byte p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 p0, p0, 0x20

    int-to-byte p0, p0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x8

    if-le p1, p2, :cond_2

    or-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    :cond_2
    return p0
.end method

.method public static getHeader([BLjava/lang/String;ZZ)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/zebra/sdk/printer/internal/DZHeader;->getLength([B)[B

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/zebra/sdk/printer/internal/DZHeader;->getHeaderHelper([BLjava/lang/String;ZZ)[B

    move-result-object p0

    return-object p0
.end method

.method private static getHeaderHelper([BLjava/lang/String;ZZ)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lcom/zebra/sdk/util/internal/FileUtilities;->parseDriveAndExtension(Ljava/lang/String;)Lcom/zebra/sdk/util/internal/PrinterFilePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zebra/sdk/util/internal/PrinterFilePath;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    const/16 v1, 0x11

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Lcom/zebra/sdk/util/internal/StringUtilities;->stringPadToPlaces(ICLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v0}, Lcom/zebra/sdk/printer/internal/DZHeader;->getFlags(ZZLjava/lang/String;)B

    move-result p2

    invoke-static {p1}, Lcom/zebra/sdk/printer/internal/DZHeader;->getType(Ljava/lang/String;)B

    move-result p1

    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p3, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p3, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p3, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p3, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static getLength(I)[B
    .locals 2

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/zebra/sdk/util/internal/StringUtilities;->byteArrayPadToPlaces(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static getLength([B)[B
    .locals 0

    array-length p0, p0

    invoke-static {p0}, Lcom/zebra/sdk/printer/internal/DZHeader;->getLength(I)[B

    move-result-object p0

    return-object p0
.end method

.method private static getType(Ljava/lang/String;)B
    .locals 1

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-static {p0}, Lcom/zebra/sdk/util/internal/Extension;->getTypeValue(Ljava/lang/String;)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method
