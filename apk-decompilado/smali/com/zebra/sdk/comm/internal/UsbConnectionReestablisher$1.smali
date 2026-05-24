.class Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;->reestablishConnection(Lcom/zebra/sdk/printer/PrinterReconnectionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;


# direct methods
.method constructor <init>(Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher$1;->this$0:Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public discoveryError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public discoveryFinished()V
    .locals 0

    return-void
.end method

.method public foundPrinter(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;)V
    .locals 1

    instance-of v0, p1, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterUsb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher$1;->this$0:Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;

    check-cast p1, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterUsb;

    iget-object p1, p1, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterUsb;->device:Landroid/hardware/usb/UsbDevice;

    invoke-static {v0, p1}, Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;->access$002(Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDevice;

    :cond_0
    return-void
.end method
