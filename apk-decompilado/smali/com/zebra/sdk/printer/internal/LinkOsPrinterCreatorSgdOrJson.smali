.class public Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;
.super Ljava/lang/Object;


# instance fields
.field private language:Lcom/zebra/sdk/printer/PrinterLanguage;

.field private linkosInfo:Lcom/zebra/sdk/printer/LinkOsInformation;


# direct methods
.method protected constructor <init>(Lcom/zebra/sdk/printer/LinkOsInformation;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;-><init>(Lcom/zebra/sdk/printer/LinkOsInformation;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    return-void
.end method

.method protected constructor <init>(Lcom/zebra/sdk/printer/LinkOsInformation;Lcom/zebra/sdk/printer/PrinterLanguage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->linkosInfo:Lcom/zebra/sdk/printer/LinkOsInformation;

    iput-object p2, p0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->language:Lcom/zebra/sdk/printer/PrinterLanguage;

    return-void
.end method

.method protected constructor <init>(Lcom/zebra/sdk/printer/PrinterLanguage;)V
    .locals 2

    new-instance v0, Lcom/zebra/sdk/printer/LinkOsInformation;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/zebra/sdk/printer/LinkOsInformation;-><init>(II)V

    invoke-direct {p0, v0, p1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;-><init>(Lcom/zebra/sdk/printer/LinkOsInformation;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    return-void
.end method

.method private createLinkOsPrinterFromMultiChannelConnection(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/zebra/sdk/printer/ZebraPrinter;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    check-cast v0, Lcom/zebra/sdk/comm/MultichannelConnection;

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->obtainLanguage(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v1

    iput-object v1, p0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->language:Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->obtainVersion(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/LinkOsInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->linkosInfo:Lcom/zebra/sdk/printer/LinkOsInformation;

    new-instance v0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    iget-object v1, p0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->linkosInfo:Lcom/zebra/sdk/printer/LinkOsInformation;

    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->language:Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-direct {v0, p1, v1, v2}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;-><init>(Lcom/zebra/sdk/printer/ZebraPrinter;Lcom/zebra/sdk/printer/LinkOsInformation;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    return-object v0
.end method

.method private createLinkOsPrinterFromStandardConnection(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/zebra/sdk/printer/ZebraPrinter;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->obtainLanguage(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->language:Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-interface {p1}, Lcom/zebra/sdk/printer/ZebraPrinter;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->obtainVersion(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/LinkOsInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->linkosInfo:Lcom/zebra/sdk/printer/LinkOsInformation;

    new-instance v0, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    iget-object v1, p0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->linkosInfo:Lcom/zebra/sdk/printer/LinkOsInformation;

    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->language:Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-direct {v0, p1, v1, v2}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;-><init>(Lcom/zebra/sdk/printer/ZebraPrinter;Lcom/zebra/sdk/printer/LinkOsInformation;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    return-object v0
.end method

.method private getDiscoMapViaJson(Lcom/zebra/sdk/comm/Connection;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zebra/sdk/comm/Connection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "ip.discovery_packet"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/zebra/sdk/settings/internal/JsonHelper;->buildQuery(Ljava/util/List;)[B

    move-result-object v0

    :try_start_0
    invoke-interface {p1}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v2

    invoke-interface {p1}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v3

    new-instance v4, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {v4}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/zebra/sdk/settings/internal/JsonHelper;->parseGetResponse([B)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/zebra/sdk/util/internal/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->parseDiscoPacket([B)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDiscoMapViaSgd(Lcom/zebra/sdk/comm/Connection;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zebra/sdk/comm/Connection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :try_start_0
    const-string v0, "ip.discovery_packet"

    invoke-static {v0, p1}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/zebra/sdk/util/internal/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->parseDiscoPacket([B)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
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

.method private getLinkOsVersionFromDiscoMap(Ljava/util/Map;)Lcom/zebra/sdk/printer/LinkOsInformation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zebra/sdk/printer/LinkOsInformation;"
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/LinkOsInformation;

    const-string v1, "LINK_OS_MAJOR_VER"

    invoke-static {p1, v1}, Lcom/zebra/sdk/util/internal/StringUtilities;->getIntValueForKey(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    const-string v2, "LINK_OS_MINOR_VER"

    invoke-static {p1, v2}, Lcom/zebra/sdk/util/internal/StringUtilities;->getIntValueForKey(Ljava/util/Map;Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/zebra/sdk/printer/LinkOsInformation;-><init>(II)V

    return-object v0
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

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->shouldQueryLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->queryPrinterLanguage(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->language:Lcom/zebra/sdk/printer/PrinterLanguage;

    :goto_0
    return-object p1
.end method

.method private obtainVersion(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/LinkOsInformation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->shouldQueryPrinter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->queryVersionNumber(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/LinkOsInformation;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->linkosInfo:Lcom/zebra/sdk/printer/LinkOsInformation;

    :goto_0
    return-object p1
.end method

.method private parseDiscoPacket([B)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException;
        }
    .end annotation

    invoke-static {p1}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterNetworkFactory;->getDiscoveredPrinterNetwork([B)Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;

    move-result-object p1

    invoke-static {p1}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterNetworkFactory;->isLinkOsPrinter(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;->getDiscoveryDataMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
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

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->getLanguageViaJson(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lcom/zebra/sdk/comm/StatusConnection;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->getLanguageViaJson(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->getLanguageViaSgd(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object p1

    return-object p1
.end method

.method private queryVersionInfoOverSingleChannel(Lcom/zebra/sdk/comm/Connection;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zebra/sdk/comm/Connection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->language:Lcom/zebra/sdk/printer/PrinterLanguage;

    sget-object v1, Lcom/zebra/sdk/printer/PrinterLanguage;->ZPL:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->getDiscoMapViaJson(Lcom/zebra/sdk/comm/Connection;)Ljava/util/Map;

    move-result-object p1

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/zebra/sdk/comm/StatusConnection;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->getDiscoMapViaSgd(Lcom/zebra/sdk/comm/Connection;)Ljava/util/Map;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private queryVersionNumber(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/LinkOsInformation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    instance-of v0, p1, Lcom/zebra/sdk/comm/MultichannelConnection;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/zebra/sdk/comm/MultichannelConnection;

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/MultichannelConnection;->getStatusChannel()Lcom/zebra/sdk/comm/StatusConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/zebra/sdk/comm/StatusConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/MultichannelConnection;->getStatusChannel()Lcom/zebra/sdk/comm/StatusConnection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->getDiscoMapViaJson(Lcom/zebra/sdk/comm/Connection;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zebra/sdk/comm/MultichannelConnection;->getPrintingChannel()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->queryVersionInfoOverSingleChannel(Lcom/zebra/sdk/comm/Connection;)Ljava/util/Map;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->getLinkOsVersionFromDiscoMap(Ljava/util/Map;)Lcom/zebra/sdk/printer/LinkOsInformation;

    move-result-object p1

    return-object p1
.end method

.method private shouldQueryLanguage()Z
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->language:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldQueryPrinter()Z
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->linkosInfo:Lcom/zebra/sdk/printer/LinkOsInformation;

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/LinkOsInformation;->getMajor()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public create(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->create(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p1

    return-object p1
.end method

.method public create(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lcom/zebra/sdk/printer/ZebraPrinter;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    instance-of v0, v0, Lcom/zebra/sdk/comm/MultichannelConnection;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->createLinkOsPrinterFromMultiChannelConnection(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->createLinkOsPrinterFromStandardConnection(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
