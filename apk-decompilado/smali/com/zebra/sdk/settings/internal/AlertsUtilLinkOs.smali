.class public Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;
.super Ljava/lang/Object;


# instance fields
.field private connection:Lcom/zebra/sdk/comm/Connection;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;->connection:Lcom/zebra/sdk/comm/Connection;

    return-void
.end method

.method public constructor <init>(Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;->connection:Lcom/zebra/sdk/comm/Connection;

    return-void
.end method

.method private getAlertSgdValue(Lcom/zebra/sdk/printer/PrinterAlert;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/PrinterAlert;->isOnSet()Z

    move-result v0

    const-string v1, "Y"

    const-string v2, "N"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {p1}, Lcom/zebra/sdk/printer/PrinterAlert;->isOnClear()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/PrinterAlert;->getCondition()Lcom/zebra/sdk/settings/AlertCondition;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/PrinterAlert;->getDestinationAsSgdString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/PrinterAlert;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/PrinterAlert;->getPort()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",N,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/PrinterAlert;->getSgdName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getConfiguredAlerts()Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-static {v2}, Lcom/zebra/sdk/settings/internal/ConnectionUtil;->selectConnection(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/comm/Connection;

    move-result-object v2

    const-string v3, "{}{\"alerts.configured\":null}"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v2}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v4

    invoke-interface {v2}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v5

    new-instance v6, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {v6}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/zebra/sdk/settings/internal/JsonHelper;->parseGetResponse([B)Ljava/util/Map;

    move-result-object v2

    const-string v3, "alerts.configured"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_3

    aget-object v7, v2, v6

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x7

    if-eq v9, v10, :cond_1

    array-length v9, v8

    const/16 v11, 0x8

    if-ne v9, v11, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid alert ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] from printer."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    aget-object v7, v8, v5

    invoke-static {v7}, Lcom/zebra/sdk/settings/AlertCondition;->createAlertCondition(Ljava/lang/String;)Lcom/zebra/sdk/settings/AlertCondition;

    move-result-object v7

    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-static {v9}, Lcom/zebra/sdk/settings/AlertDestination;->createAlertDestination(Ljava/lang/String;)Lcom/zebra/sdk/settings/AlertDestination;

    move-result-object v9

    const/4 v11, 0x2

    aget-object v11, v8, v11

    const-string v12, "Y"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    const/4 v11, 0x3

    aget-object v11, v8, v11

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    const/4 v11, 0x4

    aget-object v22, v8, v11

    const/4 v11, 0x5

    aget-object v11, v8, v11

    const/4 v13, 0x6

    aget-object v13, v8, v13

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    array-length v12, v8

    if-le v12, v10, :cond_2

    aget-object v8, v8, v10

    goto :goto_2

    :cond_2
    move-object v8, v4

    :goto_2
    :try_start_0
    new-instance v10, Lcom/zebra/sdk/printer/PrinterAlert;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move-object v11, v10

    move-object v12, v7

    move-object v13, v9

    move-object v14, v8

    move/from16 v15, v20

    move/from16 v16, v21

    move-object/from16 v17, v22

    move/from16 v19, v23

    invoke-direct/range {v11 .. v19}, Lcom/zebra/sdk/printer/PrinterAlert;-><init>(Lcom/zebra/sdk/settings/AlertCondition;Lcom/zebra/sdk/settings/AlertDestination;Ljava/lang/String;ZZLjava/lang/String;IZ)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    new-instance v10, Lcom/zebra/sdk/printer/PrinterAlert;

    const/16 v18, 0x0

    move-object v11, v10

    move-object v12, v7

    move-object v13, v9

    move-object v14, v8

    move/from16 v15, v20

    move/from16 v16, v21

    move-object/from16 v17, v22

    move/from16 v19, v23

    invoke-direct/range {v11 .. v19}, Lcom/zebra/sdk/printer/PrinterAlert;-><init>(Lcom/zebra/sdk/settings/AlertCondition;Lcom/zebra/sdk/settings/AlertDestination;Ljava/lang/String;ZZLjava/lang/String;IZ)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method

.method private sendAlertsViaSgd(Ljava/util/List;)V
    .locals 5
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

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zebra/sdk/printer/PrinterAlert;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;->getAlertSgdValue(Lcom/zebra/sdk/printer/PrinterAlert;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "alerts.add"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/zebra/sdk/settings/internal/JsonHelper;->buildSetCommand(Ljava/util/Map;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-static {v1}, Lcom/zebra/sdk/settings/internal/ConnectionUtil;->selectConnection(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    iput-object v1, p0, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v1}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v2

    iget-object v3, p0, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v3}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v3

    new-instance v4, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {v4}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setAlerts(Ljava/util/List;Lcom/zebra/sdk/comm/Connection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterAlert;",
            ">;",
            "Lcom/zebra/sdk/comm/Connection;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    invoke-direct {v0, p0}, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;->sendAlertsViaSgd(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getAlerts()Ljava/util/List;
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

    invoke-direct {p0}, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;->getConfiguredAlerts()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public removeAllAlerts()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-static {v0}, Lcom/zebra/sdk/settings/internal/ConnectionUtil;->selectConnection(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;->connection:Lcom/zebra/sdk/comm/Connection;

    const-string v1, "{}{\"alerts.configured\":\"\"}"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v2}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v2

    iget-object v3, p0, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v3}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v3

    new-instance v4, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {v4}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    return-void
.end method

.method public setAlerts(Ljava/util/List;)V
    .locals 0
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

    invoke-direct {p0, p1}, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;->sendAlertsViaSgd(Ljava/util/List;)V

    return-void
.end method
