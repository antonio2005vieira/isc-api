.class Lcom/zebra/sdk/comm/UsbZebraConnectorImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/comm/internal/ZebraConnector;


# instance fields
.field private device:Landroid/hardware/usb/UsbDevice;

.field private manager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/comm/UsbZebraConnectorImpl;->manager:Landroid/hardware/usb/UsbManager;

    iput-object p2, p0, Lcom/zebra/sdk/comm/UsbZebraConnectorImpl;->device:Landroid/hardware/usb/UsbDevice;

    return-void
.end method


# virtual methods
.method public open()Lcom/zebra/sdk/comm/internal/ZebraSocket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/comm/ZebraUsbSocket;

    iget-object v1, p0, Lcom/zebra/sdk/comm/UsbZebraConnectorImpl;->manager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/zebra/sdk/comm/UsbZebraConnectorImpl;->device:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/comm/ZebraUsbSocket;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/zebra/sdk/comm/ZebraUsbSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Cannot open USB Connection"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
