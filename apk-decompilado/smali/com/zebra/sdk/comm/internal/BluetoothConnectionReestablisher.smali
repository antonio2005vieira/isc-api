.class public Lcom/zebra/sdk/comm/internal/BluetoothConnectionReestablisher;
.super Lcom/zebra/sdk/comm/internal/ConnectionReestablisherBase;

# interfaces
.implements Lcom/zebra/sdk/comm/ConnectionReestablisher;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zebra/sdk/comm/internal/ConnectionReestablisherBase;-><init>(Lcom/zebra/sdk/comm/Connection;J)V

    return-void
.end method


# virtual methods
.method public reestablishConnection(Lcom/zebra/sdk/printer/PrinterReconnectionHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;,
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/BluetoothConnectionReestablisher;->zebraPrinterConnection:Lcom/zebra/sdk/comm/Connection;

    check-cast v0, Lcom/zebra/sdk/comm/BluetoothConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/BluetoothConnection;->getMACAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/BluetoothConnection;->getMaxTimeoutForRead()I

    move-result v2

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/BluetoothConnection;->getTimeToWaitForMoreData()I

    move-result v0

    new-instance v3, Lcom/zebra/sdk/comm/BluetoothConnection;

    invoke-direct {v3, v1, v2, v0}, Lcom/zebra/sdk/comm/BluetoothConnection;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3}, Lcom/zebra/sdk/comm/internal/BluetoothConnectionReestablisher;->waitForPrinterToComeOnlineViaSgdAndGetFwVer(Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->getInstance(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

    move-result-object v1

    invoke-static {v1}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->createLinkOsPrinter(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/zebra/sdk/printer/PrinterReconnectionHandler;->printerOnline(Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;Ljava/lang/String;)V

    return-void
.end method
