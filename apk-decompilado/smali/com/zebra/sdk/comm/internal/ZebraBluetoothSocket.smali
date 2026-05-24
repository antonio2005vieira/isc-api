.class public Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/comm/internal/ZebraSocket;


# instance fields
.field private final MAX_TIMEOUT:I

.field private bSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x88b8

    iput v0, p0, Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;->MAX_TIMEOUT:I

    iput-object p1, p0, Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;->bSocket:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method

.method static synthetic access$000(Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    iget-object p0, p0, Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;->bSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;->unpairDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private unpairDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "removeBond"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;->bSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    return-void
.end method

.method public connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket$1;

    invoke-direct {v0, p0}, Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket$1;-><init>(Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/32 v2, 0x88b8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_start_0
    iget-object v2, p0, Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;->bSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v2
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;->bSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;->bSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public setReadTimeout(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
