.class public Lcom/zebra/android/discovery/BluetoothDiscoverer;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findPrinters(Landroid/content/Context;Lcom/zebra/android/discovery/DiscoveryHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;

    invoke-direct {v0, p1}, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;-><init>(Lcom/zebra/android/discovery/DiscoveryHandler;)V

    invoke-static {p0, v0}, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->findPrinters(Landroid/content/Context;Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/zebra/android/comm/ZebraPrinterConnectionException;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
