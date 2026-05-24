.class public Lcom/zebra/android/comm/BluetoothPrinterConnection;
.super Lcom/zebra/android/comm/ZebraPrinterConnectionA;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/zebra/sdk/comm/BluetoothConnection;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/comm/BluetoothConnection;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/zebra/android/comm/ZebraPrinterConnectionA;-><init>(Lcom/zebra/sdk/comm/ConnectionA;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    new-instance v0, Lcom/zebra/sdk/comm/BluetoothConnection;

    invoke-direct {v0, p1, p2, p3}, Lcom/zebra/sdk/comm/BluetoothConnection;-><init>(Ljava/lang/String;II)V

    invoke-direct {p0, v0}, Lcom/zebra/android/comm/ZebraPrinterConnectionA;-><init>(Lcom/zebra/sdk/comm/ConnectionA;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    invoke-super {p0}, Lcom/zebra/android/comm/ZebraPrinterConnectionA;->close()V

    return-void
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/android/comm/BluetoothPrinterConnection;->myDelegator:Lcom/zebra/sdk/comm/Connection;

    check-cast v0, Lcom/zebra/sdk/comm/BluetoothConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/BluetoothConnection;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMACAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/android/comm/BluetoothPrinterConnection;->myDelegator:Lcom/zebra/sdk/comm/Connection;

    check-cast v0, Lcom/zebra/sdk/comm/BluetoothConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/BluetoothConnection;->getMACAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    invoke-super {p0}, Lcom/zebra/android/comm/ZebraPrinterConnectionA;->open()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bluetooth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zebra/android/comm/BluetoothPrinterConnection;->getMACAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zebra/android/comm/BluetoothPrinterConnection;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
