.class public Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;
.super Lcom/zebra/sdk/printer/internal/ZebraPrinterA;


# instance fields
.field language:Lcom/zebra/sdk/printer/PrinterLanguage;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->language:Lcom/zebra/sdk/printer/PrinterLanguage;

    new-instance v0, Lcom/zebra/sdk/printer/internal/FileUtilZpl;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->fileUtil:Lcom/zebra/sdk/device/FileUtil;

    new-instance v0, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->formatUtil:Lcom/zebra/sdk/printer/FormatUtil;

    new-instance v0, Lcom/zebra/sdk/printer/internal/GraphicsUtilZpl;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/internal/GraphicsUtilZpl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->graphicsUtil:Lcom/zebra/sdk/printer/GraphicsUtil;

    new-instance v0, Lcom/zebra/sdk/printer/internal/ToolsUtilZpl;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/internal/ToolsUtilZpl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->toolsUtil:Lcom/zebra/sdk/printer/ToolsUtil;

    return-void
.end method

.method private getLanguageViaJson(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/PrinterLanguage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;
        }
    .end annotation

    const-string v0, "{}{\"device.languages\":null}"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-interface {p1}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v1

    invoke-interface {p1}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v2

    new-instance v3, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {v3}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/zebra/sdk/util/internal/StringUtilities;->convertKeyValueJsonToMap([B)Ljava/util/Map;

    move-result-object v0

    const-string v1, "device.languages"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/zebra/sdk/printer/PrinterLanguage;->getLanguage(Ljava/lang/String;)Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance v0, Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zebra printer language could not be determined for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/zebra/sdk/comm/Connection;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getLanguageViaSgd(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/PrinterLanguage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;
        }
    .end annotation

    const-string v0, "device.languages"

    invoke-static {v0, p1}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zebra/sdk/printer/PrinterLanguage;->getLanguage(Ljava/lang/String;)Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object p1

    return-object p1
.end method

.method private obtainLanguage(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/PrinterLanguage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->language:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->queryPrinterLanguage(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private queryPrinterLanguage(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/PrinterLanguage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;
        }
    .end annotation

    instance-of v0, p1, Lcom/zebra/sdk/comm/MultichannelConnection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/zebra/sdk/comm/MultichannelConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/MultichannelConnection;->getStatusChannel()Lcom/zebra/sdk/comm/StatusConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/zebra/sdk/comm/StatusConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/MultichannelConnection;->getStatusChannel()Lcom/zebra/sdk/comm/StatusConnection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->getLanguageViaJson(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lcom/zebra/sdk/comm/StatusConnection;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->getLanguageViaJson(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->getLanguageViaSgd(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getCurrentStatus()Lcom/zebra/sdk/printer/PrinterStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;

    iget-object v1, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    return-object v0
.end method

.method public getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->obtainLanguage(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->language:Lcom/zebra/sdk/printer/PrinterLanguage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/zebra/sdk/printer/PrinterLanguage;->ZPL:Lcom/zebra/sdk/printer/PrinterLanguage;

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->language:Lcom/zebra/sdk/printer/PrinterLanguage;

    :goto_0
    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->language:Lcom/zebra/sdk/printer/PrinterLanguage;

    return-object v0
.end method

.method public setConnection(Lcom/zebra/sdk/comm/Connection;)V
    .locals 1

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->connection:Lcom/zebra/sdk/comm/Connection;

    new-instance p1, Lcom/zebra/sdk/printer/internal/FileUtilZpl;

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {p1, v0}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->fileUtil:Lcom/zebra/sdk/device/FileUtil;

    new-instance p1, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {p1, v0}, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->formatUtil:Lcom/zebra/sdk/printer/FormatUtil;

    new-instance p1, Lcom/zebra/sdk/printer/internal/GraphicsUtilZpl;

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {p1, v0}, Lcom/zebra/sdk/printer/internal/GraphicsUtilZpl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->graphicsUtil:Lcom/zebra/sdk/printer/GraphicsUtil;

    new-instance p1, Lcom/zebra/sdk/printer/internal/ToolsUtilZpl;

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {p1, v0}, Lcom/zebra/sdk/printer/internal/ToolsUtilZpl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;->toolsUtil:Lcom/zebra/sdk/printer/ToolsUtil;

    return-void
.end method
