.class public Lcom/zebra/sdk/printer/operations/internal/ImageStorer;
.super Ljava/lang/Object;


# instance fields
.field private connection:Lcom/zebra/sdk/comm/Connection;

.field private language:Lcom/zebra/sdk/printer/PrinterLanguage;

.field private linkOsInformation:Lcom/zebra/sdk/printer/LinkOsInformation;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/operations/internal/ImageStorer;->connection:Lcom/zebra/sdk/comm/Connection;

    iput-object p2, p0, Lcom/zebra/sdk/printer/operations/internal/ImageStorer;->language:Lcom/zebra/sdk/printer/PrinterLanguage;

    iput-object p3, p0, Lcom/zebra/sdk/printer/operations/internal/ImageStorer;->linkOsInformation:Lcom/zebra/sdk/printer/LinkOsInformation;

    return-void
.end method

.method private static getCorrectedFileName(Lcom/zebra/sdk/util/internal/PrinterFilePath;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/util/internal/PrinterFilePath;->getDrive()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zebra/sdk/util/internal/PrinterFilePath;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zebra/sdk/util/internal/PrinterFilePath;->getExtension()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, ".PNG"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string p0, ".GRF"

    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid drive specified : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    const-string v0, "E"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lcom/zebra/sdk/graphics/ZebraImageI;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    check-cast p2, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;

    if-eqz p2, :cond_2

    invoke-interface {p2, p3, p4}, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;->scaleImage(II)Z

    :try_start_0
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    invoke-static {p1}, Lcom/zebra/sdk/util/internal/FileUtilities;->parseDriveAndExtension(Ljava/lang/String;)Lcom/zebra/sdk/util/internal/PrinterFilePath;

    move-result-object p1

    invoke-static {p1}, Lcom/zebra/sdk/printer/operations/internal/ImageStorer;->getCorrectedFileName(Lcom/zebra/sdk/util/internal/PrinterFilePath;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zebra/sdk/util/internal/PrinterFilePath;->getExtension()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/zebra/sdk/util/internal/PrinterFilePath;->getExtension()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".PNG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p3, p4}, Lcom/zebra/sdk/graphics/internal/Ditherer;->getZebraSpecificPngHeader(II)[I

    move-result-object p1

    array-length p3, p1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    aget v2, p1, p4

    invoke-virtual {v0, v2}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->write(I)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;->writeDitheredPng(Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/zebra/sdk/graphics/internal/DitheringStream;

    invoke-direct {p1, p2}, Lcom/zebra/sdk/graphics/internal/DitheringStream;-><init>(Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;)V

    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {p1}, Lcom/zebra/sdk/graphics/internal/DitheringStream;->close()V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->close()V

    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p2, p3}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;-><init>(Ljava/io/InputStream;)V

    new-instance p3, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;

    new-instance p4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p3, p4, v1, p2}, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;-><init>(Ljava/io/InputStream;Ljava/lang/String;Lcom/zebra/sdk/util/internal/PrinterFileMetadata;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/zebra/sdk/printer/operations/internal/FileStorer;

    iget-object p3, p0, Lcom/zebra/sdk/printer/operations/internal/ImageStorer;->connection:Lcom/zebra/sdk/comm/Connection;

    iget-object p4, p0, Lcom/zebra/sdk/printer/operations/internal/ImageStorer;->language:Lcom/zebra/sdk/printer/PrinterLanguage;

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ImageStorer;->linkOsInformation:Lcom/zebra/sdk/printer/LinkOsInformation;

    invoke-direct {p2, p1, p3, p4, v0}, Lcom/zebra/sdk/printer/operations/internal/FileStorer;-><init>(Ljava/util/List;Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V

    invoke-virtual {p2}, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->execute()Ljava/util/List;
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

    :cond_2
    new-instance p1, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    const-string p2, "Invalid image file."

    invoke-direct {p1, p2}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
