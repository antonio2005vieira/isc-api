.class public Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;


# instance fields
.field protected alerts:Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;

.field protected fileUtil:Lcom/zebra/sdk/device/FileUtilLinkOs;

.field protected formatUtil:Lcom/zebra/sdk/printer/FormatUtilLinkOs;

.field protected fwDownloader:Lcom/zebra/sdk/printer/FirmwareUpdaterLinkOs;

.field private genericPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

.field private getCommunityName:Ljava/lang/String;

.field private language:Lcom/zebra/sdk/printer/PrinterLanguage;

.field private linkOsInformation:Lcom/zebra/sdk/printer/LinkOsInformation;

.field protected profile:Lcom/zebra/sdk/printer/ProfileUtil;

.field public settings:Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

.field protected toolsUtilHelper:Lcom/zebra/sdk/printer/internal/ToolsUtilLinkOsHelper;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/LinkOsInformation;Lcom/zebra/sdk/printer/PrinterLanguage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->settings:Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->profile:Lcom/zebra/sdk/printer/ProfileUtil;

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->alerts:Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->fileUtil:Lcom/zebra/sdk/device/FileUtilLinkOs;

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->formatUtil:Lcom/zebra/sdk/printer/FormatUtilLinkOs;

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->toolsUtilHelper:Lcom/zebra/sdk/printer/internal/ToolsUtilLinkOsHelper;

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->fwDownloader:Lcom/zebra/sdk/printer/FirmwareUpdaterLinkOs;

    iput-object p2, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->linkOsInformation:Lcom/zebra/sdk/printer/LinkOsInformation;

    iput-object p3, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->language:Lcom/zebra/sdk/printer/PrinterLanguage;

    new-instance p2, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;

    invoke-direct {p2, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    invoke-direct {p0, p2}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->init(Lcom/zebra/sdk/printer/ZebraPrinter;)V

    return-void
.end method

.method public constructor <init>(Lcom/zebra/sdk/printer/ZebraPrinter;Lcom/zebra/sdk/printer/LinkOsInformation;Lcom/zebra/sdk/printer/PrinterLanguage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->settings:Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->profile:Lcom/zebra/sdk/printer/ProfileUtil;

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->alerts:Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->fileUtil:Lcom/zebra/sdk/device/FileUtilLinkOs;

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->formatUtil:Lcom/zebra/sdk/printer/FormatUtilLinkOs;

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->toolsUtilHelper:Lcom/zebra/sdk/printer/internal/ToolsUtilLinkOsHelper;

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->fwDownloader:Lcom/zebra/sdk/printer/FirmwareUpdaterLinkOs;

    iput-object p2, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->linkOsInformation:Lcom/zebra/sdk/printer/LinkOsInformation;

    iput-object p3, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->language:Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->init(Lcom/zebra/sdk/printer/ZebraPrinter;)V

    return-void
.end method

.method private downloadFont(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const-string v0, "0000"

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    instance-of v2, p1, Ljava/io/FileInputStream;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    new-instance v3, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v0, v0}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;

    invoke-direct {v0, p1, p2, v3}, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;-><init>(Ljava/io/InputStream;Ljava/lang/String;Lcom/zebra/sdk/util/internal/PrinterFileMetadata;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/zebra/sdk/printer/operations/internal/FileStorer;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p2

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v0

    iget-object v3, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->linkOsInformation:Lcom/zebra/sdk/printer/LinkOsInformation;

    invoke-direct {p1, v1, p2, v0, v3}, Lcom/zebra/sdk/printer/operations/internal/FileStorer;-><init>(Ljava/util/List;Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->execute()Ljava/util/List;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    new-instance v0, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    new-instance v2, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;

    invoke-direct {v2, p1, p2, v0}, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;-><init>(Ljava/io/InputStream;Ljava/lang/String;Lcom/zebra/sdk/util/internal/PrinterFileMetadata;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/zebra/sdk/printer/operations/internal/FileStorer;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p2

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v0

    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->linkOsInformation:Lcom/zebra/sdk/printer/LinkOsInformation;

    invoke-direct {p1, v1, p2, v0, v2}, Lcom/zebra/sdk/printer/operations/internal/FileStorer;-><init>(Ljava/util/List;Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V

    :goto_0
    invoke-virtual {p1}, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->execute()Ljava/util/List;

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, v2}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3, p2, p1}, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;-><init>(Ljava/io/InputStream;Ljava/lang/String;Lcom/zebra/sdk/util/internal/PrinterFileMetadata;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/zebra/sdk/printer/operations/internal/FileStorer;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p2

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v0

    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->linkOsInformation:Lcom/zebra/sdk/printer/LinkOsInformation;

    invoke-direct {p1, v1, p2, v0, v2}, Lcom/zebra/sdk/printer/operations/internal/FileStorer;-><init>(Ljava/util/List;Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_2
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method private downloadFont(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v1, p2}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->downloadFont(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_0
    :try_start_3
    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_0
    throw p1
.end method

.method private hasSupplementalData(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    const-string p1, "profileSupplement.txt"

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/util/internal/ZipUtil;->extractEntry(Ljava/lang/String;)[B

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private init(Lcom/zebra/sdk/printer/ZebraPrinter;)V
    .locals 3

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->genericPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    new-instance v0, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;

    invoke-direct {v0, p0}, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;-><init>(Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;)V

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->alerts:Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;

    new-instance v0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;

    invoke-direct {v0, p0}, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;-><init>(Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;)V

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->profile:Lcom/zebra/sdk/printer/ProfileUtil;

    new-instance v0, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;

    invoke-direct {v0, p0}, Lcom/zebra/sdk/printer/internal/FileUtilLinkOsImpl;-><init>(Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;)V

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->fileUtil:Lcom/zebra/sdk/device/FileUtilLinkOs;

    new-instance v0, Lcom/zebra/sdk/printer/internal/FormatUtilLinkOsImpl;

    invoke-direct {v0, p0}, Lcom/zebra/sdk/printer/internal/FormatUtilLinkOsImpl;-><init>(Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;)V

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->formatUtil:Lcom/zebra/sdk/printer/FormatUtilLinkOs;

    new-instance v0, Lcom/zebra/sdk/printer/internal/ToolsUtilLinkOsHelper;

    invoke-interface {p1}, Lcom/zebra/sdk/printer/ZebraPrinter;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->language:Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/printer/internal/ToolsUtilLinkOsHelper;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->toolsUtilHelper:Lcom/zebra/sdk/printer/internal/ToolsUtilLinkOsHelper;

    invoke-virtual {p0, p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getFirmwareDownloader(Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;)Lcom/zebra/sdk/printer/FirmwareUpdaterLinkOs;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->fwDownloader:Lcom/zebra/sdk/printer/FirmwareUpdaterLinkOs;

    new-instance v0, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

    invoke-interface {p1}, Lcom/zebra/sdk/printer/ZebraPrinter;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->settings:Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

    const-string p1, "public"

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getCommunityName:Ljava/lang/String;

    return-void
.end method

.method private isOnlySettingsChannelOpen(Lcom/zebra/sdk/comm/MultichannelConnection;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/MultichannelConnection;->getStatusChannel()Lcom/zebra/sdk/comm/StatusConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/zebra/sdk/comm/StatusConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/MultichannelConnection;->getPrintingChannel()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    invoke-interface {p1}, Lcom/zebra/sdk/comm/Connection;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private throwExceptionInLinePrintMode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v0

    sget-object v1, Lcom/zebra/sdk/printer/PrinterLanguage;->LINE_PRINT:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Operation cannot be performed with a printer set to line print mode"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwExceptionInLinePrintModeRawOnly()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v1

    sget-object v2, Lcom/zebra/sdk/printer/PrinterLanguage;->LINE_PRINT:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-ne v1, v2, :cond_3

    instance-of v1, v0, Lcom/zebra/sdk/comm/MultichannelConnection;

    const-string v2, "Operation cannot be performed on raw channel with a printer set to line print mode"

    if-eqz v1, :cond_1

    check-cast v0, Lcom/zebra/sdk/comm/MultichannelConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/MultichannelConnection;->getPrintingChannel()Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    invoke-interface {v1}, Lcom/zebra/sdk/comm/Connection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/MultichannelConnection;->getStatusChannel()Lcom/zebra/sdk/comm/StatusConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/zebra/sdk/comm/StatusConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-direct {v0, v2}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, v0, Lcom/zebra/sdk/comm/StatusConnection;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-direct {v0, v2}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method private throwExceptionStatusOnly()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    instance-of v1, v0, Lcom/zebra/sdk/comm/MultichannelConnection;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/zebra/sdk/comm/MultichannelConnection;

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->isOnlySettingsChannelOpen(Lcom/zebra/sdk/comm/MultichannelConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Operation cannot be performed with only the status channel open"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, v0, Lcom/zebra/sdk/comm/StatusConnection;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Operation cannot be performed over the status channel"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwExceptionSupplementalDataStatusOnly(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->hasSupplementalData(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    instance-of v0, p1, Lcom/zebra/sdk/comm/MultichannelConnection;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/zebra/sdk/comm/MultichannelConnection;

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->isOnlySettingsChannelOpen(Lcom/zebra/sdk/comm/MultichannelConnection;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v0, "Supplemental data cannot be sent with only the status channel open"

    invoke-direct {p1, v0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    instance-of p1, p1, Lcom/zebra/sdk/comm/StatusConnection;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v0, "Supplemental data cannot be sent over the status channel"

    invoke-direct {p1, v0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public calibrate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/operations/internal/PrinterCalibrator;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/printer/operations/internal/PrinterCalibrator;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/operations/internal/PrinterCalibrator;->execute()Ljava/lang/Void;

    return-void
.end method

.method public configureAlert(Lcom/zebra/sdk/printer/PrinterAlert;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/zebra/sdk/printer/PrinterAlert;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->configureAlerts(Ljava/util/List;)V

    return-void
.end method

.method public configureAlerts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterAlert;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->alerts:Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;->setAlerts(Ljava/util/List;)V

    return-void
.end method

.method public createBackup(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->profile:Lcom/zebra/sdk/printer/ProfileUtil;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/printer/ProfileUtil;->createBackup(Ljava/lang/String;)V

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

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->profile:Lcom/zebra/sdk/printer/ProfileUtil;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/printer/ProfileUtil;->createProfile(Ljava/io/OutputStream;)V

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

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->profile:Lcom/zebra/sdk/printer/ProfileUtil;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/printer/ProfileUtil;->createProfile(Ljava/lang/String;)V

    return-void
.end method

.method public deleteFile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->fileUtil:Lcom/zebra/sdk/device/FileUtilLinkOs;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/device/FileUtilLinkOs;->deleteFile(Ljava/lang/String;)V

    return-void
.end method

.method public downloadTteFont(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const-string v0, ".TTE"

    invoke-static {p2, v0}, Lcom/zebra/sdk/util/internal/FileUtilities;->changeExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->downloadFont(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public downloadTteFont(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const-string v0, ".TTE"

    invoke-static {p2, v0}, Lcom/zebra/sdk/util/internal/FileUtilities;->changeExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->downloadFont(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public downloadTtfFont(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const-string v0, ".TTF"

    invoke-static {p2, v0}, Lcom/zebra/sdk/util/internal/FileUtilities;->changeExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->downloadFont(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public downloadTtfFont(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const-string v0, ".TTF"

    invoke-static {p2, v0}, Lcom/zebra/sdk/util/internal/FileUtilities;->changeExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->downloadFont(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAllSettingValues()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->settings:Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->getAllSettingValues()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/settings/SettingsException;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAllSettings()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zebra/sdk/settings/Setting;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->settings:Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->getAllSettings()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/settings/SettingsException;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAvailableSettings()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->settings:Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->getAllSettingIds()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/settings/SettingsException;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getConfiguredAlerts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterAlert;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->alerts:Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;

    invoke-virtual {v0}, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;->getAlerts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnection()Lcom/zebra/sdk/comm/Connection;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->genericPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {v0}, Lcom/zebra/sdk/printer/ZebraPrinter;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStatus()Lcom/zebra/sdk/printer/PrinterStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;->execute()Lcom/zebra/sdk/printer/PrinterStatus;

    move-result-object v0

    return-object v0
.end method

.method protected getFirmwareDownloader(Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;)Lcom/zebra/sdk/printer/FirmwareUpdaterLinkOs;
    .locals 1

    new-instance v0, Lcom/zebra/sdk/printer/internal/FirmwareUpdaterLinkOsBase;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/internal/FirmwareUpdaterLinkOsBase;-><init>(Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;)V

    return-object v0
.end method

.method public getGetCommunityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getCommunityName:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkOsInformation()Lcom/zebra/sdk/printer/LinkOsInformation;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->linkOsInformation:Lcom/zebra/sdk/printer/LinkOsInformation;

    return-object v0
.end method

.method public getObjectFromPrinter(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->fileUtil:Lcom/zebra/sdk/device/FileUtilLinkOs;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/device/FileUtilLinkOs;->getObjectFromPrinter(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public getObjectFromPrinter(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->fileUtil:Lcom/zebra/sdk/device/FileUtilLinkOs;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/device/FileUtilLinkOs;->getObjectFromPrinter(Ljava/lang/String;)[B

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

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->fileUtil:Lcom/zebra/sdk/device/FileUtilLinkOs;

    invoke-interface {v0, p1, p2, p3}, Lcom/zebra/sdk/device/FileUtilLinkOs;->getObjectFromPrinterViaFtp(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getObjectFromPrinterViaFtp(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->fileUtil:Lcom/zebra/sdk/device/FileUtilLinkOs;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/device/FileUtilLinkOs;->getObjectFromPrinterViaFtp(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getPortStatus()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/TcpPortStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->genericPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {v0}, Lcom/zebra/sdk/printer/ZebraPrinter;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getGetCommunityName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zebra/sdk/printer/internal/PortStatus;->getPortStatus(Lcom/zebra/sdk/comm/Connection;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->language:Lcom/zebra/sdk/printer/PrinterLanguage;

    return-object v0
.end method

.method public getPrinterDownloadableObjectFromPrinter(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->fileUtil:Lcom/zebra/sdk/device/FileUtilLinkOs;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/device/FileUtilLinkOs;->getPrinterDownloadableObjectFromPrinter(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getSettingRange(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->settings:Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->getSettingRange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/settings/SettingsException;

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSettingType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->settings:Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->getSettingType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/settings/SettingsException;

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;,
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->settings:Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSettingsValues(Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;,
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->settings:Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->getValues(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getStorageInfo()Ljava/util/List;
    .locals 1
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

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->fileUtil:Lcom/zebra/sdk/device/FileUtilLinkOs;

    invoke-interface {v0}, Lcom/zebra/sdk/device/FileUtilLinkOs;->getStorageInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVariableFields(Ljava/lang/String;)[Lcom/zebra/sdk/printer/FieldDescriptionData;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->genericPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/printer/ZebraPrinter;->getVariableFields(Ljava/lang/String;)[Lcom/zebra/sdk/printer/FieldDescriptionData;

    move-result-object p1

    return-object p1
.end method

.method public isSettingReadOnly(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->settings:Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->isSettingReadOnly(Ljava/lang/String;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/settings/SettingsException;

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSettingValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->settings:Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

    invoke-virtual {v0, p1, p2}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->isSettingValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/settings/SettingsException;

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isSettingWriteOnly(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->settings:Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->isSettingWriteOnly(Ljava/lang/String;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/settings/SettingsException;

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadBackup(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionSupplementalDataStatusOnly(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->profile:Lcom/zebra/sdk/printer/ProfileUtil;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/printer/ProfileUtil;->loadBackup(Ljava/lang/String;)V

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

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionSupplementalDataStatusOnly(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->profile:Lcom/zebra/sdk/printer/ProfileUtil;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/printer/ProfileUtil;->loadBackup(Ljava/lang/String;Z)V

    return-void
.end method

.method public loadProfile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionSupplementalDataStatusOnly(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->profile:Lcom/zebra/sdk/printer/ProfileUtil;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/printer/ProfileUtil;->loadProfile(Ljava/lang/String;)V

    return-void
.end method

.method public loadProfile(Ljava/lang/String;Lcom/zebra/sdk/printer/FileDeletionOption;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionSupplementalDataStatusOnly(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->profile:Lcom/zebra/sdk/printer/ProfileUtil;

    invoke-interface {v0, p1, p2, p3}, Lcom/zebra/sdk/printer/ProfileUtil;->loadProfile(Ljava/lang/String;Lcom/zebra/sdk/printer/FileDeletionOption;Z)V

    return-void
.end method

.method public printConfigurationLabel()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/operations/internal/ConfigurationLabelPrinter;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v2

    iget-object v3, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->linkOsInformation:Lcom/zebra/sdk/printer/LinkOsInformation;

    invoke-direct {v0, v1, v2, v3}, Lcom/zebra/sdk/printer/operations/internal/ConfigurationLabelPrinter;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/operations/internal/ConfigurationLabelPrinter;->execute()Ljava/lang/Void;

    return-void
.end method

.method public printDirectoryLabel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintMode()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->toolsUtilHelper:Lcom/zebra/sdk/printer/internal/ToolsUtilLinkOsHelper;

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/internal/ToolsUtilLinkOsHelper;->printDirectoryLabel()V

    return-void
.end method

.method public printImage(Lcom/zebra/sdk/graphics/ZebraImageI;IIIIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintMode()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionStatusOnly()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->genericPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/zebra/sdk/printer/ZebraPrinter;->printImage(Lcom/zebra/sdk/graphics/ZebraImageI;IIIIZ)V

    return-void
.end method

.method public printImage(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintMode()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionStatusOnly()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->genericPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {v0, p1, p2, p3}, Lcom/zebra/sdk/printer/ZebraPrinter;->printImage(Ljava/lang/String;II)V

    return-void
.end method

.method public printImage(Ljava/lang/String;IIIIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintMode()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionStatusOnly()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->genericPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/zebra/sdk/printer/ZebraPrinter;->printImage(Ljava/lang/String;IIIIZ)V

    return-void
.end method

.method public printNetworkConfigurationLabel()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/operations/internal/NetworkConfigurationLabelPrinter;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v2

    iget-object v3, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->linkOsInformation:Lcom/zebra/sdk/printer/LinkOsInformation;

    invoke-direct {v0, v1, v2, v3}, Lcom/zebra/sdk/printer/operations/internal/NetworkConfigurationLabelPrinter;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/operations/internal/NetworkConfigurationLabelPrinter;->execute()Ljava/lang/Void;

    return-void
.end method

.method public printStoredFormat(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintMode()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->genericPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/printer/ZebraPrinter;->printStoredFormat(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public printStoredFormat(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintMode()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->genericPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {v0, p1, p2, p3}, Lcom/zebra/sdk/printer/ZebraPrinter;->printStoredFormat(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public printStoredFormat(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintMode()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->genericPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/printer/ZebraPrinter;->printStoredFormat(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public printStoredFormat(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintMode()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->genericPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {v0, p1, p2, p3}, Lcom/zebra/sdk/printer/ZebraPrinter;->printStoredFormat(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public printStoredFormatWithVarGraphics(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintMode()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionStatusOnly()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->formatUtil:Lcom/zebra/sdk/printer/FormatUtilLinkOs;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/printer/FormatUtilLinkOs;->printStoredFormatWithVarGraphics(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public printStoredFormatWithVarGraphics(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintMode()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionStatusOnly()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->formatUtil:Lcom/zebra/sdk/printer/FormatUtilLinkOs;

    invoke-interface {v0, p1, p2, p3}, Lcom/zebra/sdk/printer/FormatUtilLinkOs;->printStoredFormatWithVarGraphics(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public printStoredFormatWithVarGraphics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/zebra/sdk/graphics/ZebraImageI;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintMode()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionStatusOnly()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->formatUtil:Lcom/zebra/sdk/printer/FormatUtilLinkOs;

    invoke-interface {v0, p1, p2, p3}, Lcom/zebra/sdk/printer/FormatUtilLinkOs;->printStoredFormatWithVarGraphics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public printStoredFormatWithVarGraphics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/zebra/sdk/graphics/ZebraImageI;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintMode()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionStatusOnly()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->formatUtil:Lcom/zebra/sdk/printer/FormatUtilLinkOs;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/zebra/sdk/printer/FormatUtilLinkOs;->printStoredFormatWithVarGraphics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public processSettingsViaMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/operations/internal/SettingsUpdaterOperation;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/zebra/sdk/printer/operations/internal/SettingsUpdaterOperation;-><init>(Lcom/zebra/sdk/comm/Connection;Ljava/util/Map;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/operations/internal/SettingsUpdaterOperation;->process()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public removeAlert(Lcom/zebra/sdk/printer/PrinterAlert;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    instance-of v0, p1, Lcom/zebra/sdk/printer/PrinterAlert;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zebra/sdk/printer/PrinterAlert;

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/PrinterAlert;->getCondition()Lcom/zebra/sdk/settings/AlertCondition;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/PrinterAlert;->getDestination()Lcom/zebra/sdk/settings/AlertDestination;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v6, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/zebra/sdk/printer/PrinterAlert;-><init>(Lcom/zebra/sdk/settings/AlertCondition;Lcom/zebra/sdk/settings/AlertDestination;ZZLjava/lang/String;IZ)V

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->configureAlert(Lcom/zebra/sdk/printer/PrinterAlert;)V

    :cond_0
    return-void
.end method

.method public removeAllAlerts()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->alerts:Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;

    invoke-virtual {v0}, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;->removeAllAlerts()V

    return-void
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/operations/internal/PrinterResetter;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/printer/operations/internal/PrinterResetter;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/operations/internal/PrinterResetter;->execute()Ljava/lang/Void;

    return-void
.end method

.method public resetNetwork()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/operations/internal/NetworkResetter;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/printer/operations/internal/NetworkResetter;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/operations/internal/NetworkResetter;->execute()Ljava/lang/Void;

    return-void
.end method

.method public restoreDefaults()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/operations/internal/PrinterDefaulter;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/printer/operations/internal/PrinterDefaulter;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/operations/internal/PrinterDefaulter;->execute()Ljava/lang/Void;

    return-void
.end method

.method public restoreNetworkDefaults()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/operations/internal/NetworkDefaulter;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/printer/operations/internal/NetworkDefaulter;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/operations/internal/NetworkDefaulter;->execute()Ljava/lang/Void;

    return-void
.end method

.method public retrieveFileNames()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->genericPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {v0}, Lcom/zebra/sdk/printer/ZebraPrinter;->retrieveFileNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public retrieveFileNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->genericPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/printer/ZebraPrinter;->retrieveFileNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public retrieveFormatFromPrinter(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getLinkOsInformation()Lcom/zebra/sdk/printer/LinkOsInformation;

    move-result-object v4

    invoke-direct {v1, p2, v2, v3, v4}, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;-><init>(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->execute()Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    instance-of v1, p2, Lcom/zebra/sdk/printer/internal/MultipartFormReceiverStream;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;

    invoke-direct {v1, p2}, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/zebra/sdk/util/fileConversion/internal/HzoToDzConverterStream;

    invoke-direct {v1, p2}, Lcom/zebra/sdk/util/fileConversion/internal/HzoToDzConverterStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v2, Lcom/zebra/sdk/util/fileConversion/internal/DZ_UnwrapperStream;

    invoke-direct {v2, v1}, Lcom/zebra/sdk/util/fileConversion/internal/DZ_UnwrapperStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    :goto_0
    const-string v2, "^XA"

    invoke-static {v2}, Lcom/zebra/sdk/util/internal/ZPLUtilities;->replaceAllWithInternalCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    :goto_1
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_1
    const-string v2, "^XZ"

    invoke-static {v2}, Lcom/zebra/sdk/util/internal/ZPLUtilities;->replaceAllWithInternalCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v1, v0

    move-object v0, p2

    move-object p2, v1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, v0

    move-object v0, p2

    move-object p2, v1

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v1, v0

    move-object v0, p2

    move-object p2, v1

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p2, v0

    move-object v1, p2

    goto :goto_4

    :catch_4
    move-exception p1

    move-object p2, v0

    move-object v1, p2

    :goto_2
    :try_start_3
    new-instance v2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_5
    move-exception p1

    move-object p2, v0

    move-object v1, p2

    :goto_3
    new-instance v2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    :goto_4
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {p2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public retrieveFormatFromPrinter(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->retrieveFormatFromPrinter(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public retrieveObjectsProperties()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterObjectProperties;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v2

    iget-object v3, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->linkOsInformation:Lcom/zebra/sdk/printer/LinkOsInformation;

    invoke-direct {v0, v1, v2, v3}, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sendCommand(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->genericPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/printer/ZebraPrinter;->sendCommand(Ljava/lang/String;)V

    return-void
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->genericPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/printer/ZebraPrinter;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendFileContents(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->genericPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/printer/ZebraPrinter;->sendFileContents(Ljava/lang/String;)V

    return-void
.end method

.method public sendFileContents(Ljava/lang/String;Lcom/zebra/sdk/device/ProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->genericPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/printer/ZebraPrinter;->sendFileContents(Ljava/lang/String;Lcom/zebra/sdk/device/ProgressMonitor;)V

    return-void
.end method

.method public setClock(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->toolsUtilHelper:Lcom/zebra/sdk/printer/internal/ToolsUtilLinkOsHelper;

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/printer/internal/ToolsUtilLinkOsHelper;->setClock(Ljava/lang/String;)V

    return-void
.end method

.method public setConnection(Lcom/zebra/sdk/comm/Connection;)V
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->genericPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/printer/ZebraPrinter;->setConnection(Lcom/zebra/sdk/comm/Connection;)V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->settings:Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->setConnection(Lcom/zebra/sdk/comm/Connection;)V

    return-void
.end method

.method public setGetCommunityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getCommunityName:Ljava/lang/String;

    return-void
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->settings:Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

    invoke-virtual {v0, p1, p2}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/settings/SettingsException;

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setSettings(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->throwExceptionInLinePrintModeRawOnly()V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->settings:Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->setSettings(Ljava/util/Map;)V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/settings/SettingsException;

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v0
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

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->fileUtil:Lcom/zebra/sdk/device/FileUtilLinkOs;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/device/FileUtilLinkOs;->storeFileOnPrinter(Ljava/lang/String;)V

    return-void
.end method

.method public storeFileOnPrinter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->fileUtil:Lcom/zebra/sdk/device/FileUtilLinkOs;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/device/FileUtilLinkOs;->storeFileOnPrinter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public storeFileOnPrinter([BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->fileUtil:Lcom/zebra/sdk/device/FileUtilLinkOs;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/device/FileUtilLinkOs;->storeFileOnPrinter([BLjava/lang/String;)V

    return-void
.end method

.method public storeImage(Ljava/lang/String;Lcom/zebra/sdk/graphics/ZebraImageI;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/operations/internal/ImageStorer;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getLinkOsInformation()Lcom/zebra/sdk/printer/LinkOsInformation;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/zebra/sdk/printer/operations/internal/ImageStorer;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/zebra/sdk/printer/operations/internal/ImageStorer;->execute(Ljava/lang/String;Lcom/zebra/sdk/graphics/ZebraImageI;II)V

    return-void
.end method

.method public storeImage(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/operations/internal/ImageStorer;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->getLinkOsInformation()Lcom/zebra/sdk/printer/LinkOsInformation;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/zebra/sdk/printer/operations/internal/ImageStorer;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V

    invoke-static {p2}, Lcom/zebra/sdk/util/internal/ReflectionUtil;->invokeZebraImageFactory_getImage(Ljava/lang/String;)Lcom/zebra/sdk/graphics/ZebraImageI;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/zebra/sdk/printer/operations/internal/ImageStorer;->execute(Ljava/lang/String;Lcom/zebra/sdk/graphics/ZebraImageI;II)V

    return-void
.end method

.method public updateFirmware(Ljava/lang/String;JLcom/zebra/sdk/printer/FirmwareUpdateHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->fwDownloader:Lcom/zebra/sdk/printer/FirmwareUpdaterLinkOs;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/zebra/sdk/printer/FirmwareUpdaterLinkOs;->updateFirmware(Ljava/lang/String;JLcom/zebra/sdk/printer/FirmwareUpdateHandler;)V

    return-void
.end method

.method public updateFirmware(Ljava/lang/String;Lcom/zebra/sdk/printer/FirmwareUpdateHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->fwDownloader:Lcom/zebra/sdk/printer/FirmwareUpdaterLinkOs;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/printer/FirmwareUpdaterLinkOs;->updateFirmware(Ljava/lang/String;Lcom/zebra/sdk/printer/FirmwareUpdateHandler;)V

    return-void
.end method

.method public updateFirmwareUnconditionally(Ljava/lang/String;JLcom/zebra/sdk/printer/FirmwareUpdateHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->fwDownloader:Lcom/zebra/sdk/printer/FirmwareUpdaterLinkOs;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/zebra/sdk/printer/FirmwareUpdaterLinkOs;->updateFirmwareUnconditionally(Ljava/lang/String;JLcom/zebra/sdk/printer/FirmwareUpdateHandler;)V

    return-void
.end method

.method public updateFirmwareUnconditionally(Ljava/lang/String;Lcom/zebra/sdk/printer/FirmwareUpdateHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->fwDownloader:Lcom/zebra/sdk/printer/FirmwareUpdaterLinkOs;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/printer/FirmwareUpdaterLinkOs;->updateFirmwareUnconditionally(Ljava/lang/String;Lcom/zebra/sdk/printer/FirmwareUpdateHandler;)V

    return-void
.end method
