.class public Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/device/FileUtilLinkOs;


# static fields
.field private static final validExtensionsToGetObjectFromPrinter:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zebraPrinterLinkOs:Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x12

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "FNT"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ZPL"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "GRF"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "DAT"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "BAS"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "STO"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "PNG"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "LBL"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "TTF"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "PCX"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "BMP"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "IMG"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "TTE"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "WML"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "CSV"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "HTM"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "BAE"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "TXT"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->validExtensionsToGetObjectFromPrinter:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->zebraPrinterLinkOs:Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    return-void
.end method

.method private copyInputStreamToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :goto_0
    if-eq v0, v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    const-string p2, "Invalid extension or file not found"

    invoke-direct {p1, p2}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private getFileOverFtp(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->zebraPrinterLinkOs:Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    invoke-interface {v0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    instance-of v1, v0, Lcom/zebra/sdk/comm/TcpConnection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/zebra/sdk/comm/internal/FTP;

    check-cast v0, Lcom/zebra/sdk/comm/TcpConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/TcpConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2, p3}, Lcom/zebra/sdk/comm/internal/FTP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, p1, p2}, Lcom/zebra/sdk/comm/internal/FTP;->getFile(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lcom/zebra/sdk/comm/MultichannelConnection;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/zebra/sdk/comm/MultichannelConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/MultichannelConnection;->getPrintingChannel()Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    instance-of v1, v1, Lcom/zebra/sdk/comm/TcpConnection;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/MultichannelConnection;->getPrintingChannel()Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    check-cast v0, Lcom/zebra/sdk/comm/TcpConnection;

    new-instance v1, Lcom/zebra/sdk/comm/internal/FTP;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/TcpConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2, p3}, Lcom/zebra/sdk/comm/internal/FTP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p1, Lcom/zebra/sdk/comm/ConnectionException;

    const-string p2, "Must be a TCP connected printer to tranfer files"

    invoke-direct {p1, p2}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private getObjectData(Ljava/lang/String;Ljava/io/ByteArrayInputStream;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    const-string v0, "OBJECT-DATA"

    invoke-static {p2, v0, p1}, Lcom/zebra/sdk/util/internal/XmlUtil;->getDataAtNamedNode(Ljava/io/ByteArrayInputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method private parseHzo(Ljava/lang/String;Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->getObjectData(Ljava/lang/String;Ljava/io/ByteArrayInputStream;)Lorg/w3c/dom/Node;

    move-result-object p1

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/zebra/sdk/util/internal/XmlUtil;->getTextContent(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private retrieveFileViaFileTypeSgdCommand(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "! U1 do \"file.type\" \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\r\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;

    invoke-direct {v0, p2}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->zebraPrinterLinkOs:Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    invoke-interface {p2}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v2

    invoke-interface {v2}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v3

    invoke-interface {v2}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v4

    const/4 v5, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/zebra/sdk/comm/internal/PrinterCommand;->sendAndWaitForResponse(Ljava/io/OutputStream;Lcom/zebra/sdk/comm/Connection;IILjava/lang/String;)V

    return-void
.end method

.method private retrieveFileViaFileTypeSgdCommand(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->retrieveFileViaFileTypeSgdCommand(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private validExtension(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->validExtensionsToGetObjectFromPrinter:Ljava/util/Set;

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public deleteFile(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->zebraPrinterLinkOs:Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    invoke-interface {v0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    const-string v1, "file.delete"

    invoke-static {v1, p1, v0}, Lcom/zebra/sdk/printer/SGD;->SET(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)V

    return-void
.end method

.method public getObjectFromPrinter(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;

    iget-object v1, p0, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->zebraPrinterLinkOs:Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    invoke-interface {v1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->zebraPrinterLinkOs:Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    invoke-interface {v2}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v2

    iget-object v3, p0, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->zebraPrinterLinkOs:Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    invoke-interface {v3}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getLinkOsInformation()Lcom/zebra/sdk/printer/LinkOsInformation;

    move-result-object v3

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;-><init>(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->execute()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    instance-of v2, v0, Lcom/zebra/sdk/printer/internal/MultipartFormReceiverStream;

    if-eqz v2, :cond_0

    new-instance p2, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;

    invoke-direct {p2, v0}, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v1

    move-object v1, p2

    move-object p2, v4

    goto :goto_0

    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zebra/sdk/util/internal/FileWrapper;->isHzoExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p2, Lcom/zebra/sdk/util/fileConversion/internal/HzoToDzConverterStream;

    invoke-direct {p2, v0}, Lcom/zebra/sdk/util/fileConversion/internal/HzoToDzConverterStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lcom/zebra/sdk/util/fileConversion/internal/DZ_UnwrapperStream;

    invoke-direct {v2, p2}, Lcom/zebra/sdk/util/fileConversion/internal/DZ_UnwrapperStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->copyInputStreamToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {p2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v4, v1

    move-object v1, p2

    move-object p2, v4

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v4, v1

    move-object v1, p2

    move-object p2, v4

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-direct {p0, p2}, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->validExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->retrieveFileViaFileTypeSgdCommand(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void

    :cond_2
    :try_start_3
    new-instance p1, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    const-string p2, "Invalid extension, cannot retrieve file type"

    invoke-direct {p1, p2}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    move-object p2, v1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p2, v1

    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "File not found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    :goto_2
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {p2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw p1
.end method

.method public getObjectFromPrinter(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->getObjectFromPrinter(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public getObjectFromPrinterViaFtp(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->validExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->getFileOverFtp(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    const-string p2, "Invalid extension, cannot retrieve file type"

    invoke-direct {p1, p2}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getObjectFromPrinterViaFtp(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->getObjectFromPrinterViaFtp(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public getPrinterDownloadableObjectFromPrinter(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->validExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;

    iget-object v1, p0, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->zebraPrinterLinkOs:Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    invoke-interface {v1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->zebraPrinterLinkOs:Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    invoke-interface {v2}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v2

    iget-object v3, p0, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->zebraPrinterLinkOs:Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    invoke-interface {v3}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getLinkOsInformation()Lcom/zebra/sdk/printer/LinkOsInformation;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;-><init>(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->execute()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    instance-of v3, v0, Lcom/zebra/sdk/printer/internal/MultipartFormReceiverStream;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;

    invoke-direct {v3, v0}, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v3, v2}, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->copyInputStreamToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v2}, Lcom/zebra/sdk/util/internal/FileWrapper;->wrapFile([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v1, v3

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, v3

    goto :goto_0

    :cond_0
    const/16 v3, 0x2e

    :try_start_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zebra/sdk/util/internal/FileWrapper;->isHzoExtension(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0, v2}, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->copyInputStreamToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v3}, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->parseHzo(Ljava/lang/String;Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object p1

    :cond_1
    :try_start_3
    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->retrieveFileViaFileTypeSgdCommand(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, p1}, Lcom/zebra/sdk/util/internal/FileWrapper;->wrapFileWithCisdfHeader([BLjava/lang/String;)[B

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_0
    :try_start_4
    new-instance v2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    const-string v0, "Invalid extension, cannot retrieve file type"

    invoke-direct {p1, v0}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStorageInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/StorageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;

    iget-object v1, p0, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->zebraPrinterLinkOs:Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    invoke-interface {v1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->zebraPrinterLinkOs:Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    invoke-interface {v2}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v2

    iget-object v3, p0, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->zebraPrinterLinkOs:Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    invoke-interface {v3}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getLinkOsInformation()Lcom/zebra/sdk/printer/LinkOsInformation;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public storeFileOnPrinter(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lcom/zebra/sdk/util/internal/FileUtilities;->GetFileNameOnPrinter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->storeFileOnPrinter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public storeFileOnPrinter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lcom/zebra/sdk/util/internal/FileReader;->toByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->storeFileOnPrinter([BLjava/lang/String;)V

    return-void
.end method

.method public storeFileOnPrinter([BLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    new-instance p1, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    invoke-direct {p1, v0}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;

    invoke-direct {v2, v0, p2, p1}, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;-><init>(Ljava/io/InputStream;Ljava/lang/String;Lcom/zebra/sdk/util/internal/PrinterFileMetadata;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/zebra/sdk/printer/operations/internal/FileStorer;

    iget-object p2, p0, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->zebraPrinterLinkOs:Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    invoke-interface {p2}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p2

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->zebraPrinterLinkOs:Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    invoke-interface {v0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v0

    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;->zebraPrinterLinkOs:Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    invoke-interface {v2}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getLinkOsInformation()Lcom/zebra/sdk/printer/LinkOsInformation;

    move-result-object v2

    invoke-direct {p1, v1, p2, v0, v2}, Lcom/zebra/sdk/printer/operations/internal/FileStorer;-><init>(Ljava/util/List;Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->execute()Ljava/util/List;

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p1, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    const-string p2, "file not found."

    invoke-direct {p1, p2}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
