.class public Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;
.super Lcom/zebra/sdk/settings/internal/ZebraSettingsList;


# instance fields
.field private connection:Lcom/zebra/sdk/comm/Connection;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;)V
    .locals 0

    invoke-direct {p0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->connection:Lcom/zebra/sdk/comm/Connection;

    return-void
.end method

.method private doJsonQuery(Ljava/util/List;)Ljava/util/Map;
    .locals 4
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
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lcom/zebra/sdk/settings/internal/JsonHelper;->buildQuery(Ljava/util/List;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-static {v0}, Lcom/zebra/sdk/settings/internal/ConnectionUtil;->selectConnection(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v1

    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v2

    new-instance v3, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {v3}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/zebra/sdk/settings/internal/JsonHelper;->parseGetResponse([B)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private storeSettingValues(Ljava/util/Map;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    invoke-static {p1}, Lcom/zebra/sdk/settings/internal/JsonHelper;->buildSetCommand(Ljava/util/Map;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-static {v0}, Lcom/zebra/sdk/settings/internal/ConnectionUtil;->selectConnection(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v1

    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v2

    new-instance v3, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {v3}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/settings/SettingsException;

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateSettingsWithResponse(Ljava/util/Map;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->updateInternalState(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/zebra/sdk/settings/SettingsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->storeSettingValues(Ljava/util/Map;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getUpdatedJsonData()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-static {v0}, Lcom/zebra/sdk/settings/internal/ConnectionUtil;->selectConnection(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    const-string v1, "{}{\"allconfig\":null}"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v2

    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v3

    new-instance v4, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {v4}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    move-result-object v0

    return-object v0
.end method

.method public getValues(Ljava/util/List;)Ljava/util/Map;
    .locals 0
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

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->filterOutUnreadableSettings(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->doJsonQuery(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public processSettingsViaMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
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
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->updateSettingsWithResponse(Ljava/util/Map;)[B

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lcom/zebra/sdk/settings/internal/JsonHelper;->parseGetResponse([B)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/settings/SettingsException;

    invoke-virtual {p1}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAllSettings(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zebra/sdk/settings/Setting;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    return-void
.end method

.method public setConnection(Lcom/zebra/sdk/comm/Connection;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->connection:Lcom/zebra/sdk/comm/Connection;

    return-void
.end method

.method public setSetting(Ljava/lang/String;Lcom/zebra/sdk/settings/Setting;)V
    .locals 0

    return-void
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->updateInternalState(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->storeSettingValues(Ljava/util/Map;)[B

    return-void
.end method

.method public setSettings(Ljava/util/Map;)V
    .locals 0
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

    invoke-direct {p0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->updateSettingsWithResponse(Ljava/util/Map;)[B

    return-void
.end method
