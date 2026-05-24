.class public Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/ProfileUtil;


# instance fields
.field protected drivePrefix:Ljava/lang/String;

.field protected final linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    const-string p1, "*:"

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->drivePrefix:Ljava/lang/String;

    return-void
.end method

.method private containsCisdWrapper(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "! CISDFCRC16"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "! CISDFRCRC16"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private createOutputZipFile(Ljava/io/OutputStream;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p1, Ljava/util/zip/ZipEntry;

    const-string v1, "settings.json"

    invoke-direct {p1, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v2, p2}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    iget-object p2, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    invoke-virtual {p2}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object p2

    sget-object v1, Lcom/zebra/sdk/printer/PrinterLanguage;->LINE_PRINT:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-ne p2, v1, :cond_0

    instance-of p2, p1, Lcom/zebra/sdk/comm/StatusConnection;

    if-nez p2, :cond_0

    instance-of p1, p1, Lcom/zebra/sdk/comm/MultichannelConnection;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->enableZplMode(Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConfiguredAlerts()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/zebra/sdk/printer/internal/ProfileHelper;->createJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/zip/ZipEntry;

    const-string v1, "alerts.json"

    invoke-direct {p2, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_2
    .catch Lcom/zebra/sdk/settings/SettingsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    invoke-direct {p0, v2, p1}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->saveFilesToProfile(Ljava/util/zip/ZipOutputStream;Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_2

    :try_start_4
    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->reEnableLinePrintMode(Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;)V
    :try_end_4
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_2
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    return-void

    :catch_1
    move-exception p1

    :try_start_5
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_3

    :try_start_6
    iget-object p2, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    invoke-direct {p0, p2}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->reEnableLinePrintMode(Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;)V
    :try_end_6
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_2
    nop

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_4
    throw p1
.end method

.method private deleteAllCloneableFiles()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ZPL"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "GRF"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "DAT"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "BAS"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "STO"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "PNG"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "LBL"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "PCX"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "BMP"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "IMG"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "WML"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "HTM"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->drivePrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->deleteFile(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method

.method private deleteAllFiles()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->drivePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "*.*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->deleteFile(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private deleteFilesBeforeLoadingProfile(Lcom/zebra/sdk/printer/FileDeletionOption;)V
    .locals 1

    sget-object v0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl$2;->$SwitchMap$com$zebra$sdk$printer$FileDeletionOption:[I

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/FileDeletionOption;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->deleteAllCloneableFiles()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->deleteAllFiles()V

    :goto_0
    return-void
.end method

.method private enableZplMode(Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    const-string v0, "device.languages"

    const-string v1, "zpl"

    invoke-static {v0, v1, p1}, Lcom/zebra/sdk/printer/SGD;->SET(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)V

    return-void
.end method

.method private getAllConfig()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    invoke-static {v0}, Lcom/zebra/sdk/settings/internal/ConnectionUtil;->selectConnection(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    const-string v1, "{}{\"allconfig\":null}"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v2, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {v2}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    const/16 v3, 0x2710

    const/16 v4, 0x7d0

    invoke-interface {v0, v1, v3, v4, v2}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    move-result-object v0

    return-object v0
.end method

.method private getFileDescriptors([BLjava/lang/String;)Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->containsCisdWrapper(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/zebra/sdk/util/internal/FileWrapper;->stripOffCISDFWrapper([B)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zebra/sdk/util/internal/FileWrapper;->isHzoExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, p2, v1}, Lcom/zebra/sdk/util/internal/FileWrapper;->unwrapHZOResult(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    array-length p1, p1

    int-to-long v2, p1

    const-string p1, "0000"

    invoke-direct {v1, v2, v3, p1, p1}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;

    invoke-direct {p1, v0, p2, v1}, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;-><init>(Ljava/io/InputStream;Ljava/lang/String;Lcom/zebra/sdk/util/internal/PrinterFileMetadata;)V

    return-object p1
.end method

.method private isCloneable(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Z:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->isValidExtension(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isLinkOs2_5_OrHigher(Lcom/zebra/sdk/printer/LinkOsInformation;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/LinkOsInformation;->getMajor()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/LinkOsInformation;->getMinor()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/zebra/sdk/printer/LinkOsInformation;->getMajor()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method private isValidExtension(Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "PAC"

    aput-object v3, v1, v2

    const-string v2, "NRD"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, "BAZ"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "BAE"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "TTF"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, "TTE"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, "TXT"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v4, "CSV"

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    return p1
.end method

.method private loadAlertsFromProfile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/zebra/sdk/printer/internal/ProfileHelper;->getAlertsFromJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->removeAllAlerts()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->configureAlerts(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private loadCloneOrArchiveImage(Ljava/lang/String;Lcom/zebra/sdk/printer/internal/RestoreType;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->loadFirmwareFromProfile(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p2}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->restoreSettings(Ljava/lang/String;Lcom/zebra/sdk/printer/internal/RestoreType;)V

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->loadAlertsFromProfile(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->loadFilesFromProfile(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->loadSupplementFromProfile(Ljava/lang/String;)V

    return-void
.end method

.method private loadFilesFromProfile(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/util/internal/ZipUtil;->getEntryNames()Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    invoke-virtual {v2}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v2

    invoke-static {v2}, Lcom/zebra/sdk/settings/internal/ConnectionUtil;->selectConnection(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/comm/Connection;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/zebra/sdk/printer/internal/ProfileHelper;->isSpecialProfileFile(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Lcom/zebra/sdk/util/internal/ZipUtil;->extractEntry(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    invoke-direct {p0, v2, v5}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->shouldSendMultipartForm(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v4, v3}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->getFileDescriptors([BLjava/lang/String;)Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2, v4}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v2, v1}, Lcom/zebra/sdk/util/internal/MultipartFileSender;->send(Lcom/zebra/sdk/comm/Connection;Ljava/util/List;)Ljava/util/List;

    :cond_3
    return-void
.end method

.method private loadFirmwareFromProfile(Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    const-string v1, "firmwareFile.txt"

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;->containsEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "sdkTmpFwFile"

    const-string v4, "txt"

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;->extractEntry(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;

    iget-object v4, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    invoke-virtual {v4}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v4

    invoke-interface {v4}, Lcom/zebra/sdk/comm/Connection;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl$1;

    invoke-direct {v5, p0}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl$1;-><init>(Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;)V

    invoke-direct {v3, p2, v4, p1, v5}, Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;-><init>(ZLjava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/printer/FirmwareUpdateHandler;)V

    invoke-virtual {v0, v1, v3}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->updateFirmware(Ljava/lang/String;Lcom/zebra/sdk/printer/FirmwareUpdateHandler;)V
    :try_end_0
    .catch Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/zebra/sdk/printer/discovery/DiscoveryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_3
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method private loadSupplementFromProfile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    const-string p1, "profileSupplement.txt"

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/util/internal/ZipUtil;->extractEntry(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    :cond_0
    return-void
.end method

.method private reEnableLinePrintMode(Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    const-string v0, "device.languages"

    const-string v1, "line_print"

    invoke-static {v0, v1, p1}, Lcom/zebra/sdk/printer/SGD;->SET(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)V

    return-void
.end method

.method private restoreSettings(Ljava/lang/String;Lcom/zebra/sdk/printer/internal/RestoreType;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lcom/zebra/sdk/device/Profile;

    invoke-direct {v1, p1}, Lcom/zebra/sdk/device/Profile;-><init>(Ljava/lang/String;)V

    :try_start_0
    sget-object p1, Lcom/zebra/sdk/printer/internal/RestoreType;->ARCHIVE:Lcom/zebra/sdk/printer/internal/RestoreType;

    if-ne p2, p1, :cond_0

    invoke-virtual {v1}, Lcom/zebra/sdk/device/Profile;->getArchivableSettingValues()Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/zebra/sdk/device/Profile;->getClonableSettingValues()Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Lcom/zebra/sdk/settings/SettingsException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-static {p1, p2}, Lcom/zebra/sdk/printer/internal/ProfileHelper;->handleSpecialCases(Ljava/util/Map;Lcom/zebra/sdk/printer/internal/RestoreType;)V

    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    invoke-virtual {v2, v0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->setSettings(Ljava/util/Map;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    invoke-virtual {p1, v0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->setSettings(Ljava/util/Map;)V
    :try_end_1
    .catch Lcom/zebra/sdk/settings/SettingsException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Lcom/zebra/sdk/settings/SettingsException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/zebra/sdk/settings/SettingsException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method private saveFilesToProfile(Ljava/util/zip/ZipOutputStream;Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->retrieveFileNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->isCloneable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    aget-object v2, v0, v1

    invoke-interface {p2, v2}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getPrinterDownloadableObjectFromPrinter(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_0

    new-instance v3, Ljava/util/zip/ZipEntry;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {p1, v2}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private shouldSendMultipartForm(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;)Z
    .locals 1

    invoke-interface {p2}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getLinkOsInformation()Lcom/zebra/sdk/printer/LinkOsInformation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->isLinkOs2_5_OrHigher(Lcom/zebra/sdk/printer/LinkOsInformation;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object p2

    sget-object v0, Lcom/zebra/sdk/printer/PrinterLanguage;->LINE_PRINT:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-ne p2, v0, :cond_0

    instance-of p1, p1, Lcom/zebra/sdk/comm/StatusConnection;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public createBackup(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->createProfile(Ljava/lang/String;)V

    return-void
.end method

.method public createProfile(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->getAllConfig()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->createOutputZipFile(Ljava/io/OutputStream;[B)V

    return-void
.end method

.method public createProfile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const-string v0, "zprofile"

    invoke-static {p1, v0}, Lcom/zebra/sdk/util/internal/FileUtilities;->changeExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->getAllConfig()[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->createOutputZipFile(Ljava/io/OutputStream;[B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public loadBackup(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->loadBackup(Ljava/lang/String;Z)V

    return-void
.end method

.method public loadBackup(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    sget-object v0, Lcom/zebra/sdk/printer/FileDeletionOption;->ALL:Lcom/zebra/sdk/printer/FileDeletionOption;

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->deleteFilesBeforeLoadingProfile(Lcom/zebra/sdk/printer/FileDeletionOption;)V

    sget-object v0, Lcom/zebra/sdk/printer/internal/RestoreType;->ARCHIVE:Lcom/zebra/sdk/printer/internal/RestoreType;

    invoke-direct {p0, p1, v0, p2}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->loadCloneOrArchiveImage(Ljava/lang/String;Lcom/zebra/sdk/printer/internal/RestoreType;Z)V

    return-void
.end method

.method public loadProfile(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    sget-object v0, Lcom/zebra/sdk/printer/FileDeletionOption;->NONE:Lcom/zebra/sdk/printer/FileDeletionOption;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->loadProfile(Ljava/lang/String;Lcom/zebra/sdk/printer/FileDeletionOption;Z)V

    return-void
.end method

.method public loadProfile(Ljava/lang/String;Lcom/zebra/sdk/printer/FileDeletionOption;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->deleteFilesBeforeLoadingProfile(Lcom/zebra/sdk/printer/FileDeletionOption;)V

    sget-object p2, Lcom/zebra/sdk/printer/internal/RestoreType;->CLONE:Lcom/zebra/sdk/printer/internal/RestoreType;

    invoke-direct {p0, p1, p2, p3}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->loadCloneOrArchiveImage(Ljava/lang/String;Lcom/zebra/sdk/printer/internal/RestoreType;Z)V

    return-void
.end method
