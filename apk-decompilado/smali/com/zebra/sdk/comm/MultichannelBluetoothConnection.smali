.class public Lcom/zebra/sdk/comm/MultichannelBluetoothConnection;
.super Lcom/zebra/sdk/comm/MultichannelConnection;


# static fields
.field private static final STATUS_CHANNEL_OPEN_DELAY:I = 0x7d0


# direct methods
.method protected constructor <init>(Lcom/zebra/sdk/comm/internal/ConnectionInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/internal/NotMyConnectionDataException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/comm/MultichannelConnection;-><init>()V

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/internal/ConnectionInfo;->getMyData()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^\\s*("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/MultichannelBluetoothConnection;->getConnectionBuilderPrefix()Ljava/lang/String;

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
    const-string v0, "(.*)mB=(.*?)&(.*)"

    invoke-static {v0, p1}, Lcom/zebra/sdk/util/internal/RegexUtil;->getMatches(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/MultichannelBluetoothConnection;->getConnectionBuilderPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")?([^:]+)\\s*$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zebra/sdk/util/internal/RegexUtil;->getMatches(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    const/4 p1, 0x2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/zebra/sdk/comm/internal/BluetoothHelper;->formatMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1388

    const/16 v3, 0x1f4

    const/16 v4, 0x1388

    const/16 v5, 0x1f4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/zebra/sdk/comm/MultichannelBluetoothConnection;->init(Ljava/lang/String;IIII)V

    return-void

    :cond_2
    new-instance v0, Lcom/zebra/sdk/comm/internal/NotMyConnectionDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth Connection doesn\'t understand "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/comm/internal/NotMyConnectionDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x1388

    const/16 v1, 0x1f4

    invoke-direct {p0, p1, v0, v1}, Lcom/zebra/sdk/comm/MultichannelBluetoothConnection;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/zebra/sdk/comm/MultichannelBluetoothConnection;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    invoke-direct {p0}, Lcom/zebra/sdk/comm/MultichannelConnection;-><init>()V

    invoke-direct/range {p0 .. p5}, Lcom/zebra/sdk/comm/MultichannelBluetoothConnection;->init(Ljava/lang/String;IIII)V

    return-void
.end method

.method private init(Ljava/lang/String;IIII)V
    .locals 1

    new-instance v0, Lcom/zebra/sdk/comm/BluetoothConnection;

    invoke-direct {v0, p1, p2, p3}, Lcom/zebra/sdk/comm/BluetoothConnection;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/zebra/sdk/comm/MultichannelBluetoothConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    new-instance p2, Lcom/zebra/sdk/comm/BluetoothStatusConnection;

    invoke-direct {p2, p1, p4, p5}, Lcom/zebra/sdk/comm/BluetoothStatusConnection;-><init>(Ljava/lang/String;II)V

    iput-object p2, p0, Lcom/zebra/sdk/comm/MultichannelBluetoothConnection;->settings:Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelBluetoothConnection;->settings:Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;->close()V

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelBluetoothConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->close()V

    return-void
.end method

.method protected getConnectionBuilderPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "BT_MULTI"

    return-object v0
.end method

.method public getSimpleConnectionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelBluetoothConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    check-cast v0, Lcom/zebra/sdk/comm/BluetoothConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/BluetoothConnection;->getSimpleConnectionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/MultichannelBluetoothConnection;->openPrintingChannel()V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Lcom/zebra/sdk/util/internal/Sleeper;->sleep(J)V

    :try_start_1
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/MultichannelBluetoothConnection;->openStatusChannel()V
    :try_end_1
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Could not open connection"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bluetooth_MULTI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zebra/sdk/comm/MultichannelBluetoothConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    check-cast v1, Lcom/zebra/sdk/comm/BluetoothConnection;

    invoke-virtual {v1}, Lcom/zebra/sdk/comm/BluetoothConnection;->getMACAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zebra/sdk/comm/MultichannelBluetoothConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    check-cast v1, Lcom/zebra/sdk/comm/BluetoothConnection;

    invoke-virtual {v1}, Lcom/zebra/sdk/comm/BluetoothConnection;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
