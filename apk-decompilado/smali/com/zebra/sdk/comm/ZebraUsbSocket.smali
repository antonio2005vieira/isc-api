.class Lcom/zebra/sdk/comm/ZebraUsbSocket;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/comm/internal/ZebraSocket;


# instance fields
.field private connection:Landroid/hardware/usb/UsbDeviceConnection;

.field private device:Landroid/hardware/usb/UsbDevice;

.field private inEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private inputStream:Ljava/io/InputStream;

.field private outEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private outputStream:Ljava/io/OutputStream;

.field private usbInterface:Landroid/hardware/usb/UsbInterface;

.field private usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->device:Landroid/hardware/usb/UsbDevice;

    iput-object p1, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->usbManager:Landroid/hardware/usb/UsbManager;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    iget-object v0, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->usbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    return-void
.end method

.method public connect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->device:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->usbInterface:Landroid/hardware/usb/UsbInterface;

    :goto_0
    iget-object v0, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->usbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->usbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    if-ne v2, v3, :cond_0

    iput-object v0, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    const/16 v4, 0x80

    if-ne v2, v4, :cond_1

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    if-ne v2, v3, :cond_1

    iput-object v0, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->usbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->usbInterface:Landroid/hardware/usb/UsbInterface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/zebra/sdk/comm/UsbOutputStream;

    iget-object v1, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/comm/UsbOutputStream;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)V

    iput-object v0, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->outputStream:Ljava/io/OutputStream;

    new-instance v0, Lcom/zebra/sdk/comm/UsbInputStream;

    iget-object v1, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/comm/UsbInputStream;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)V

    iput-object v0, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->inputStream:Ljava/io/InputStream;

    return-void

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to claim USB interface"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method protected getDeviceIdString()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const/16 v0, 0x100

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0xa1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x100

    const/16 v8, 0x7d0

    move-object v6, v0

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    sub-int/2addr v1, v3

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    return-object v2

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Unable to retrieve Device ID"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public setReadTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/ZebraUsbSocket;->inputStream:Ljava/io/InputStream;

    check-cast v0, Lcom/zebra/sdk/comm/UsbInputStream;

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/comm/UsbInputStream;->setReadTimeout(I)V

    return-void
.end method
