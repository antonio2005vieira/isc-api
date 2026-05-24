.class public Lcom/zebra/sdk/comm/BluetoothStatusConnectionInsecure;
.super Lcom/zebra/sdk/comm/BluetoothStatusConnection;


# direct methods
.method protected constructor <init>(Lcom/zebra/sdk/comm/internal/ConnectionInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/internal/NotMyConnectionDataException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/zebra/sdk/comm/BluetoothStatusConnection;-><init>(Lcom/zebra/sdk/comm/internal/ConnectionInfo;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x1388

    const/16 v1, 0x1f4

    invoke-direct {p0, p1, v0, v1}, Lcom/zebra/sdk/comm/BluetoothStatusConnectionInsecure;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3

    new-instance v0, Lcom/zebra/sdk/comm/internal/BluetoothInsecureZebraConnectorImpl;

    invoke-static {p1}, Lcom/zebra/sdk/comm/internal/BluetoothHelper;->formatMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zebra/sdk/comm/ConnectionChannel;->STATUS_CHANNEL:Lcom/zebra/sdk/comm/ConnectionChannel;

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/comm/internal/BluetoothInsecureZebraConnectorImpl;-><init>(Ljava/lang/String;Lcom/zebra/sdk/comm/ConnectionChannel;)V

    invoke-static {p1}, Lcom/zebra/sdk/comm/internal/BluetoothHelper;->formatMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/zebra/sdk/comm/BluetoothStatusConnection;-><init>(Lcom/zebra/sdk/comm/internal/ZebraConnector;Ljava/lang/String;II)V

    return-void
.end method
