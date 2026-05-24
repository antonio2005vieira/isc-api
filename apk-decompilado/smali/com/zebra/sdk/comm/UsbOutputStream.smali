.class Lcom/zebra/sdk/comm/UsbOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field private connection:Landroid/hardware/usb/UsbDeviceConnection;

.field private outEndpoint:Landroid/hardware/usb/UsbEndpoint;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/comm/UsbOutputStream;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object p2, p0, Lcom/zebra/sdk/comm/UsbOutputStream;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public write(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbOutputStream;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/zebra/sdk/comm/UsbOutputStream;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    const/4 v2, 0x1

    new-array v3, v2, [B

    int-to-byte p1, p1

    const/4 v4, 0x0

    aput-byte p1, v3, v4

    const/16 p1, 0x1f4

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    return-void
.end method

.method public write([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbOutputStream;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/zebra/sdk/comm/UsbOutputStream;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    array-length v2, p1

    const/16 v3, 0x1f4

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/comm/UsbOutputStream;->write([B)V

    return-void
.end method
