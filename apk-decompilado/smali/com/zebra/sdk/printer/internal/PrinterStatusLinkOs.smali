.class public Lcom/zebra/sdk/printer/internal/PrinterStatusLinkOs;
.super Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/zebra/sdk/printer/PrinterStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "{\"device.host_status\":\"%s\"}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;-><init>([B)V

    new-instance p0, Lcom/zebra/sdk/printer/internal/PrinterStatusLinkOs;

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/internal/PrinterStatusLinkOs;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    return-object p0
.end method

.method private parseJsonStatusResponse(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/zebra/sdk/util/internal/StringUtilities;->convertKeyValueJsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "device.host_status"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "\\\\r\\\\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v0, "Malformed status response - unable to determine printer status"

    invoke-direct {p1, v0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected findStartOfHsResponse([B)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getLineSeparatorChar()B
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method protected getStatusInfoFromPrinter()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusLinkOs;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    const-string v1, "{}{\"device.host_status\":null}"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusLinkOs;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v2}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v2

    iget-object v3, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusLinkOs;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v3}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v3

    new-instance v4, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {v4}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v1}, Lcom/zebra/sdk/printer/internal/PrinterStatusLinkOs;->parseJsonStatusResponse(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Malformed status response - unable to determine printer status"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
