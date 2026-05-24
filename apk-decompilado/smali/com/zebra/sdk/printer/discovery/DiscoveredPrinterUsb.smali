.class public Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterUsb;
.super Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;


# static fields
.field private static final serialVersionUID:J = -0x3d2186623faf40e9L


# instance fields
.field public device:Landroid/hardware/usb/UsbDevice;

.field public manager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterUsb;->device:Landroid/hardware/usb/UsbDevice;

    iput-object p2, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterUsb;->manager:Landroid/hardware/usb/UsbManager;

    iget-object p2, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterUsb;->discoSettings:Ljava/util/Map;

    const-string p3, "ADDRESS"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getConnection()Lcom/zebra/sdk/comm/Connection;
    .locals 3

    new-instance v0, Lcom/zebra/sdk/comm/UsbConnection;

    iget-object v1, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterUsb;->manager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterUsb;->device:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/comm/UsbConnection;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V

    return-object v0
.end method
