.class public Lcom/zebra/sdk/printer/discovery/UsbDiscoverer;
.super Ljava/lang/Object;


# static fields
.field private static final ZEBRA_USB_VID:I = 0xa5f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findPrinters(Landroid/content/Context;Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V
    .locals 1

    const-string v0, "usb"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/usb/UsbManager;

    invoke-static {p0, p1}, Lcom/zebra/sdk/printer/discovery/UsbDiscoverer;->findPrinters(Landroid/hardware/usb/UsbManager;Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V

    return-void
.end method

.method public static findPrinters(Landroid/hardware/usb/UsbManager;Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V
    .locals 4

    if-eqz p0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    invoke-static {v1}, Lcom/zebra/sdk/printer/discovery/UsbDiscoverer;->isZebraUsbDevice(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterUsb;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v1}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterUsb;-><init>(Ljava/lang/String;Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V

    invoke-interface {p1, v2}, Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;->foundPrinter(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;->discoveryFinished()V

    return-void
.end method

.method public static isZebraUsbDevice(Landroid/hardware/usb/UsbDevice;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result p0

    const/16 v0, 0xa5f

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
