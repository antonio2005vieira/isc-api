.class Lcom/zebra/sdk/comm/UsbInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private connection:Landroid/hardware/usb/UsbDeviceConnection;

.field private fifo:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private inEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private readTimeout:I


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/zebra/sdk/comm/UsbInputStream;->readTimeout:I

    iput-object p1, p0, Lcom/zebra/sdk/comm/UsbInputStream;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object p2, p0, Lcom/zebra/sdk/comm/UsbInputStream;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/comm/UsbInputStream;->fifo:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbInputStream;->fifo:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbInputStream;->fifo:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x1000

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/comm/UsbInputStream;->read([B)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/zebra/sdk/comm/UsbInputStream;->fifo:Ljava/util/Queue;

    aget-byte v5, v0, v3

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ltz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/UsbInputStream;->available()I

    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbInputStream;->fifo:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbInputStream;->fifo:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/zebra/sdk/comm/UsbInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbInputStream;->fifo:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbInputStream;->fifo:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-ge v0, p3, :cond_0

    iget-object p3, p0, Lcom/zebra/sdk/comm/UsbInputStream;->fifo:Ljava/util/Queue;

    invoke-interface {p3}, Ljava/util/Queue;->size()I

    move-result p3

    :cond_0
    :goto_0
    if-ge v1, p3, :cond_1

    add-int v0, p2, v1

    iget-object v2, p0, Lcom/zebra/sdk/comm/UsbInputStream;->fifo:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, p1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    new-array v0, p3, [B

    iget-object v2, p0, Lcom/zebra/sdk/comm/UsbInputStream;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/zebra/sdk/comm/UsbInputStream;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    iget v4, p0, Lcom/zebra/sdk/comm/UsbInputStream;->readTimeout:I

    invoke-virtual {v2, v3, v0, p3, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p3

    const/4 v2, -0x1

    if-ne p3, v2, :cond_3

    return v2

    :cond_3
    :goto_1
    if-ge v1, p3, :cond_4

    add-int v2, p2, v1

    aget-byte v3, v0, v1

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return p3
.end method

.method public setReadTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/zebra/sdk/comm/UsbInputStream;->readTimeout:I

    return-void
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbInputStream;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/zebra/sdk/comm/UsbInputStream;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    long-to-int p2, p1

    new-array p1, p2, [B

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p1

    if-gez p1, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    int-to-long p1, p1

    :goto_0
    return-wide p1
.end method
