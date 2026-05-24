.class public Lcom/zebra/sdk/settings/SettingsValues;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getValuesUsingJson(Ljava/util/List;Lcom/zebra/sdk/comm/Connection;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
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
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lcom/zebra/sdk/settings/internal/JsonHelper;->buildQuery(Ljava/util/List;)[B

    move-result-object p1

    invoke-interface {p2}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v0

    invoke-interface {p2}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v1

    new-instance v2, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {v2}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/zebra/sdk/settings/internal/JsonHelper;->parseGetResponse([B)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private getValuesUsingSGD(Ljava/util/List;Lcom/zebra/sdk/comm/Connection;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "! U1 getvar \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {p2}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v3

    invoke-interface {p2}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v4

    new-instance v5, Lcom/zebra/sdk/settings/internal/SgdValidator;

    invoke-direct {v5}, Lcom/zebra/sdk/settings/internal/SgdValidator;-><init>()V

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Lcom/zebra/sdk/util/internal/StringUtilities;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private setValuesUsingJson(Ljava/util/Map;Lcom/zebra/sdk/comm/Connection;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
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
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lcom/zebra/sdk/settings/internal/JsonHelper;->buildSetCommand(Ljava/util/Map;)[B

    move-result-object p1

    invoke-interface {p2}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v0

    invoke-interface {p2}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v1

    new-instance v2, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {v2}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/zebra/sdk/settings/internal/JsonHelper;->parseGetResponse([B)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private setValuesUsingSGD(Ljava/util/Map;Lcom/zebra/sdk/comm/Connection;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
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

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "! U1 setvar \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, p2}, Lcom/zebra/sdk/settings/SettingsValues;->getValuesUsingSGD(Ljava/util/List;Lcom/zebra/sdk/comm/Connection;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private shouldUseJson(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/zebra/sdk/printer/LinkOsInformation;->getMajor()I

    move-result p3

    const/4 v1, 0x1

    if-ge p3, v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object p3, Lcom/zebra/sdk/printer/PrinterLanguage;->LINE_PRINT:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-ne p2, p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    instance-of p3, p1, Lcom/zebra/sdk/comm/MultichannelConnection;

    if-ne p3, v1, :cond_2

    check-cast p1, Lcom/zebra/sdk/comm/MultichannelConnection;

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/MultichannelConnection;->getStatusChannel()Lcom/zebra/sdk/comm/StatusConnection;

    move-result-object p3

    invoke-interface {p3}, Lcom/zebra/sdk/comm/StatusConnection;->isConnected()Z

    move-result p3

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/MultichannelConnection;->getPrintingChannel()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    invoke-interface {p1}, Lcom/zebra/sdk/comm/Connection;->isConnected()Z

    move-result p1

    goto :goto_1

    :cond_2
    instance-of p3, p1, Lcom/zebra/sdk/comm/StatusConnection;

    xor-int/lit8 p1, p3, 0x1

    :goto_1
    if-nez p3, :cond_3

    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_2
    return v0
.end method


# virtual methods
.method public getValues(Ljava/util/List;Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zebra/sdk/comm/Connection;",
            "Lcom/zebra/sdk/printer/PrinterLanguage;",
            "Lcom/zebra/sdk/printer/LinkOsInformation;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-static {p2}, Lcom/zebra/sdk/settings/internal/ConnectionUtil;->selectConnection(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    invoke-direct {p0, p2, p3, p4}, Lcom/zebra/sdk/settings/SettingsValues;->shouldUseJson(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/zebra/sdk/settings/SettingsValues;->getValuesUsingJson(Ljava/util/List;Lcom/zebra/sdk/comm/Connection;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/zebra/sdk/settings/SettingsValues;->getValuesUsingSGD(Ljava/util/List;Lcom/zebra/sdk/comm/Connection;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public setValues(Ljava/util/Map;Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zebra/sdk/comm/Connection;",
            "Lcom/zebra/sdk/printer/PrinterLanguage;",
            "Lcom/zebra/sdk/printer/LinkOsInformation;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-static {p2}, Lcom/zebra/sdk/settings/internal/ConnectionUtil;->selectConnection(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    invoke-direct {p0, p2, p3, p4}, Lcom/zebra/sdk/settings/SettingsValues;->shouldUseJson(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/zebra/sdk/settings/SettingsValues;->setValuesUsingJson(Ljava/util/Map;Lcom/zebra/sdk/comm/Connection;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/zebra/sdk/settings/SettingsValues;->setValuesUsingSGD(Ljava/util/Map;Lcom/zebra/sdk/comm/Connection;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
