.class public Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;
.super Lcom/zebra/sdk/comm/internal/ConnectionReestablisherBase;

# interfaces
.implements Lcom/zebra/sdk/comm/ConnectionReestablisher;


# instance fields
.field private device:Landroid/hardware/usb/UsbDevice;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zebra/sdk/comm/internal/ConnectionReestablisherBase;-><init>(Lcom/zebra/sdk/comm/Connection;J)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;->device:Landroid/hardware/usb/UsbDevice;

    return-void
.end method

.method static synthetic access$002(Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDevice;
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;->device:Landroid/hardware/usb/UsbDevice;

    return-object p1
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

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;->device:Landroid/hardware/usb/UsbDevice;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;->startTime:J

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;->zebraPrinterConnection:Lcom/zebra/sdk/comm/Connection;

    check-cast v0, Lcom/zebra/sdk/comm/UsbConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/UsbConnection;->getRequestor()Lcom/zebra/sdk/comm/UsbPermissionRequestor;

    move-result-object v1

    :goto_0
    invoke-virtual {v0}, Lcom/zebra/sdk/comm/UsbConnection;->getManager()Landroid/hardware/usb/UsbManager;

    move-result-object v2

    new-instance v3, Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher$1;

    invoke-direct {v3, p0}, Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher$1;-><init>(Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;)V

    invoke-static {v2, v3}, Lcom/zebra/sdk/printer/discovery/UsbDiscoverer;->findPrinters(Landroid/hardware/usb/UsbManager;Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V

    iget-object v2, p0, Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;->device:Landroid/hardware/usb/UsbDevice;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/UsbConnection;->getManager()Landroid/hardware/usb/UsbManager;

    move-result-object v2

    iget-object v3, p0, Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;->device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;->device:Landroid/hardware/usb/UsbDevice;

    invoke-interface {v1, v2}, Lcom/zebra/sdk/comm/UsbPermissionRequestor;->requestUsbPermission(Landroid/hardware/usb/UsbDevice;)V

    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcom/zebra/sdk/comm/UsbConnection;->getManager()Landroid/hardware/usb/UsbManager;

    move-result-object v1

    iget-object v2, p0, Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;->device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Lcom/zebra/sdk/util/internal/Sleeper;->sleep(J)V

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;->timeoutCheck()V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/zebra/sdk/comm/UsbConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/UsbConnection;->getManager()Landroid/hardware/usb/UsbManager;

    move-result-object v0

    iget-object v2, p0, Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;->device:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v1, v0, v2}, Lcom/zebra/sdk/comm/UsbConnection;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {p0, v1}, Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;->waitForPrinterToComeOnlineViaSgdAndGetFwVer(Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->getInstance(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

    move-result-object v1

    invoke-static {v1}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->createLinkOsPrinter(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/zebra/sdk/printer/PrinterReconnectionHandler;->printerOnline(Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;Ljava/lang/String;)V

    return-void

    :cond_2
    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Lcom/zebra/sdk/util/internal/Sleeper;->sleep(J)V

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;->timeoutCheck()V

    goto :goto_0
.end method
