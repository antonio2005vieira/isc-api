.class public Lcom/zebra/sdk/comm/UsbConnection;
.super Lcom/zebra/sdk/comm/ConnectionA;

# interfaces
.implements Lcom/zebra/sdk/comm/internal/ConnectionI;


# static fields
.field private static final MAX_CARD_USB_WRITE_SIZE:I = 0x4000


# instance fields
.field private connectionAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private device:Landroid/hardware/usb/UsbDevice;

.field private manager:Landroid/hardware/usb/UsbManager;

.field private requestor:Lcom/zebra/sdk/comm/UsbPermissionRequestor;

.field private serialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    const/16 v0, 0x1388

    const/16 v1, 0x1f4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/zebra/sdk/comm/UsbConnection;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;II)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;II)V
    .locals 1

    invoke-direct {p0}, Lcom/zebra/sdk/comm/ConnectionA;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->device:Landroid/hardware/usb/UsbDevice;

    iput-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->manager:Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->requestor:Lcom/zebra/sdk/comm/UsbPermissionRequestor;

    const-string v0, ""

    iput-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->serialNumber:Ljava/lang/String;

    iput-object p1, p0, Lcom/zebra/sdk/comm/UsbConnection;->manager:Landroid/hardware/usb/UsbManager;

    iput-object p2, p0, Lcom/zebra/sdk/comm/UsbConnection;->device:Landroid/hardware/usb/UsbDevice;

    new-instance v0, Lcom/zebra/sdk/comm/UsbZebraConnectorImpl;

    invoke-direct {v0, p1, p2}, Lcom/zebra/sdk/comm/UsbZebraConnectorImpl;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V

    iput-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->zebraConnector:Lcom/zebra/sdk/comm/internal/ZebraConnector;

    iput p3, p0, Lcom/zebra/sdk/comm/UsbConnection;->maxTimeoutForRead:I

    iput p4, p0, Lcom/zebra/sdk/comm/UsbConnection;->timeToWaitForMoreData:I

    :try_start_0
    invoke-direct {p0}, Lcom/zebra/sdk/comm/UsbConnection;->loadDeviceMap()V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private getSerialNumberFromDevice()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->connectionAttributes:Ljava/util/Map;

    invoke-static {v0}, Lcom/zebra/sdk/comm/internal/UsbUtils;->isCardPrinter(Ljava/util/Map;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/UsbConnection;->open()V

    const-string v0, "! U1 getvar \"device.unique_id\"\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/comm/UsbConnection;->write([B)V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/UsbConnection;->read()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/zebra/sdk/util/internal/StringUtilities;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    :catch_0
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/UsbConnection;->close()V
    :try_end_1
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/UsbConnection;->close()V
    :try_end_2
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    throw v0

    :catch_2
    :cond_1
    :goto_0
    return-object v1
.end method

.method private loadDeviceIdMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const-string v0, "SERIAL_NUMBER"

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1, v1}, Lcom/zebra/sdk/comm/internal/UsbUtils;->addSymbolicNameAttributesToMap(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/zebra/sdk/comm/UsbConnection;->device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "pid"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zebra/sdk/comm/UsbConnection;->device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "vid"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/UsbConnection;->open()V

    iget-object p1, p0, Lcom/zebra/sdk/comm/UsbConnection;->commLink:Lcom/zebra/sdk/comm/internal/ZebraSocket;

    check-cast p1, Lcom/zebra/sdk/comm/ZebraUsbSocket;

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/ZebraUsbSocket;->getDeviceIdString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zebra/sdk/comm/internal/UsbUtils;->addDeviceIdArtributesToMap(Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/zebra/sdk/comm/internal/UsbUtils;->isZMotifPrinter(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/zebra/sdk/comm/internal/UsbUtils;->decodeZmotifSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/UsbConnection;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/UsbConnection;->close()V

    throw p1
.end method

.method private loadDeviceMap()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/UsbConnection;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zebra/sdk/comm/UsbConnection;->loadDeviceIdMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->connectionAttributes:Ljava/util/Map;

    invoke-direct {p0}, Lcom/zebra/sdk/comm/UsbConnection;->loadSerialNumber()V

    return-void
.end method

.method private loadSerialNumber()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->connectionAttributes:Ljava/util/Map;

    const-string v1, "SERIAL_NUMBER"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->serialNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/zebra/sdk/comm/UsbConnection;->getSerialNumberFromDevice()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->serialNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->connectionAttributes:Ljava/util/Map;

    const-string v2, "MODEL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->serialNumber:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->connectionAttributes:Ljava/util/Map;

    iget-object v2, p0, Lcom/zebra/sdk/comm/UsbConnection;->serialNumber:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public getConnectionReestablisher(J)Lcom/zebra/sdk/comm/ConnectionReestablisher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->connectionAttributes:Ljava/util/Map;

    invoke-static {v0}, Lcom/zebra/sdk/comm/internal/UsbUtils;->isCardPrinter(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/zebra/sdk/util/internal/ReflectionUtil;->loadUsbCardConnectionReestablisher(Lcom/zebra/sdk/comm/Connection;J)Lcom/zebra/sdk/comm/ConnectionReestablisher;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;

    invoke-direct {v0, p0, p1, p2}, Lcom/zebra/sdk/comm/internal/UsbConnectionReestablisher;-><init>(Lcom/zebra/sdk/comm/Connection;J)V

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManager()Landroid/hardware/usb/UsbManager;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->manager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->connectionAttributes:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->connectionAttributes:Ljava/util/Map;

    const-string v1, "MFG"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getRequestor()Lcom/zebra/sdk/comm/UsbPermissionRequestor;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->requestor:Lcom/zebra/sdk/comm/UsbPermissionRequestor;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleConnectionName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/UsbConnection;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    new-array p1, p1, [B

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->commLink:Lcom/zebra/sdk/comm/internal/ZebraSocket;

    check-cast v0, Lcom/zebra/sdk/comm/ZebraUsbSocket;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/ZebraUsbSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lcom/zebra/sdk/comm/ConnectionA;->read(I)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public setRequestor(Lcom/zebra/sdk/comm/UsbPermissionRequestor;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/comm/UsbConnection;->requestor:Lcom/zebra/sdk/comm/UsbPermissionRequestor;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/UsbConnection;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/UsbConnection;->connectionAttributes:Ljava/util/Map;

    invoke-static {v0}, Lcom/zebra/sdk/comm/internal/UsbUtils;->isCardPrinter(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/comm/UsbConnection;->setMaxDataToWrite(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/zebra/sdk/comm/ConnectionA;->write([BII)V

    return-void
.end method
