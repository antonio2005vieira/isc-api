.class public Lcom/zebra/sdk/comm/internal/BluetoothZebraConnectorImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/comm/internal/ZebraConnector;


# instance fields
.field private channelId:Ljava/lang/String;

.field private macAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/zebra/sdk/comm/ConnectionChannel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    iput-object v0, p0, Lcom/zebra/sdk/comm/internal/BluetoothZebraConnectorImpl;->channelId:Ljava/lang/String;

    iput-object p1, p0, Lcom/zebra/sdk/comm/internal/BluetoothZebraConnectorImpl;->macAddress:Ljava/lang/String;

    sget-object p1, Lcom/zebra/sdk/comm/ConnectionChannel;->STATUS_CHANNEL:Lcom/zebra/sdk/comm/ConnectionChannel;

    if-ne p2, p1, :cond_0

    const-string p1, "AEB33570-0B7B-11E3-8FFD-0800200C9A66"

    iput-object p1, p0, Lcom/zebra/sdk/comm/internal/BluetoothZebraConnectorImpl;->channelId:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public open()Lcom/zebra/sdk/comm/internal/ZebraSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/comm/internal/BluetoothZebraConnectorImpl;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/comm/internal/BluetoothZebraConnectorImpl;->channelId:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    new-instance v1, Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;

    invoke-direct {v1, v0}, Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    invoke-virtual {v1}, Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
