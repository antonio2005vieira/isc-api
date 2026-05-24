.class public Lcom/zebra/sdk/comm/BluetoothStatusConnection;
.super Lcom/zebra/sdk/comm/ConnectionStatusA;


# static fields
.field protected static final CONNECTION_STRING_ID:Ljava/lang/String;


# instance fields
.field protected friendlyName:Ljava/lang/String;

.field protected macAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->getConnectionBuilderPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->CONNECTION_STRING_ID:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/zebra/sdk/comm/internal/ConnectionInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/internal/NotMyConnectionDataException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/comm/ConnectionStatusA;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->friendlyName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/internal/ConnectionInfo;->getMyData()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^\\s*("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->getConnectionBuilderPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")?([a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2})\\s*$"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zebra/sdk/util/internal/RegexUtil;->getMatches(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->getConnectionBuilderPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")?([^:]+)\\s*$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zebra/sdk/util/internal/RegexUtil;->getMatches(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_2

    const/4 p1, 0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/zebra/sdk/comm/internal/BluetoothHelper;->formatMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/zebra/sdk/comm/internal/BluetoothZebraConnectorImpl;

    sget-object v1, Lcom/zebra/sdk/comm/ConnectionChannel;->STATUS_CHANNEL:Lcom/zebra/sdk/comm/ConnectionChannel;

    invoke-direct {v0, p1, v1}, Lcom/zebra/sdk/comm/internal/BluetoothZebraConnectorImpl;-><init>(Ljava/lang/String;Lcom/zebra/sdk/comm/ConnectionChannel;)V

    iput-object v0, p0, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->zebraConnector:Lcom/zebra/sdk/comm/internal/ZebraConnector;

    iput-object p1, p0, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->macAddress:Ljava/lang/String;

    const/16 p1, 0x1388

    iput p1, p0, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->maxTimeoutForRead:I

    const/16 p1, 0x1f4

    iput p1, p0, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->timeToWaitForMoreData:I

    return-void

    :cond_2
    new-instance v0, Lcom/zebra/sdk/comm/internal/NotMyConnectionDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BT Connection doesn\'t understand "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/comm/internal/NotMyConnectionDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Lcom/zebra/sdk/comm/internal/ZebraConnector;Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Lcom/zebra/sdk/comm/ConnectionStatusA;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->friendlyName:Ljava/lang/String;

    iput-object p1, p0, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->zebraConnector:Lcom/zebra/sdk/comm/internal/ZebraConnector;

    iput-object p2, p0, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->macAddress:Ljava/lang/String;

    iput p3, p0, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->maxTimeoutForRead:I

    iput p4, p0, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->timeToWaitForMoreData:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x1388

    const/16 v1, 0x1f4

    invoke-direct {p0, p1, v0, v1}, Lcom/zebra/sdk/comm/BluetoothStatusConnection;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3

    new-instance v0, Lcom/zebra/sdk/comm/internal/BluetoothZebraConnectorImpl;

    invoke-static {p1}, Lcom/zebra/sdk/comm/internal/BluetoothHelper;->formatMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zebra/sdk/comm/ConnectionChannel;->STATUS_CHANNEL:Lcom/zebra/sdk/comm/ConnectionChannel;

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/comm/internal/BluetoothZebraConnectorImpl;-><init>(Ljava/lang/String;Lcom/zebra/sdk/comm/ConnectionChannel;)V

    invoke-static {p1}, Lcom/zebra/sdk/comm/internal/BluetoothHelper;->formatMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/zebra/sdk/comm/BluetoothStatusConnection;-><init>(Lcom/zebra/sdk/comm/internal/ZebraConnector;Ljava/lang/String;II)V

    return-void
.end method

.method private cancelBluetoothDiscovery()V
    .locals 1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    return-void
.end method

.method private static getConnectionBuilderPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "BT_STATUS"

    return-object v0
.end method

.method private getFriendlyNameFromDevice()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/comm/ConnectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading from connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->isConnected:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Lcom/zebra/sdk/util/internal/Sleeper;->sleep(J)V

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->friendlyName:Ljava/lang/String;

    invoke-super {p0}, Lcom/zebra/sdk/comm/ConnectionStatusA;->close()V

    return-void
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getMACAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleConnectionName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->getMACAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->cancelBluetoothDiscovery()V

    invoke-super {p0}, Lcom/zebra/sdk/comm/ConnectionStatusA;->open()V

    invoke-direct {p0}, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->getFriendlyNameFromDevice()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->friendlyName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bluetooth_STATUS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->getMACAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/BluetoothStatusConnection;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
