.class public Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtRadioMonitor;,
        Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;
    }
.end annotation


# instance fields
.field btMonitor:Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtRadioMonitor;

.field btReceiver:Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;

.field private deviceFilter:Lcom/zebra/sdk/printer/discovery/DeviceFilter;

.field private mContext:Landroid/content/Context;

.field private mDiscoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Lcom/zebra/sdk/printer/discovery/DeviceFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->deviceFilter:Lcom/zebra/sdk/printer/discovery/DeviceFilter;

    iput-object p2, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->mDiscoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;)Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;
    .locals 0

    iget-object p0, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->mDiscoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->unregisterTopLevelReceivers(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;)Lcom/zebra/sdk/printer/discovery/DeviceFilter;
    .locals 0

    iget-object p0, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->deviceFilter:Lcom/zebra/sdk/printer/discovery/DeviceFilter;

    return-object p0
.end method

.method private doBluetoothDisco()V
    .locals 5

    new-instance v0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;-><init>(Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$1;)V

    iput-object v0, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->btReceiver:Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtRadioMonitor;

    invoke-direct {v0, p0, v1}, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtRadioMonitor;-><init>(Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$1;)V

    iput-object v0, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->btMonitor:Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtRadioMonitor;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->btReceiver:Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->btReceiver:Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->btMonitor:Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtRadioMonitor;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    return-void
.end method

.method public static findPrinters(Landroid/content/Context;Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$1;

    invoke-direct {v0}, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$1;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->findPrinters(Landroid/content/Context;Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Lcom/zebra/sdk/printer/discovery/DeviceFilter;)V

    return-void
.end method

.method public static findPrinters(Landroid/content/Context;Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Lcom/zebra/sdk/printer/discovery/DeviceFilter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "No bluetooth radio found"

    :goto_0
    invoke-interface {p1, p0}, Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;->discoveryError(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "Bluetooth radio is currently disabled"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_2
    new-instance v0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;-><init>(Landroid/content/Context;Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Lcom/zebra/sdk/printer/discovery/DeviceFilter;)V

    invoke-direct {v0}, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->doBluetoothDisco()V

    :goto_1
    return-void
.end method

.method public static findServices(Landroid/content/Context;Ljava/lang/String;Lcom/zebra/sdk/printer/discovery/ServiceDiscoveryHandler;)V
    .locals 1

    new-instance v0, Lcom/zebra/sdk/comm/internal/BtServiceDiscoverer;

    invoke-static {p1}, Lcom/zebra/sdk/comm/internal/BluetoothHelper;->formatMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/zebra/sdk/comm/internal/BtServiceDiscoverer;-><init>(Ljava/lang/String;Lcom/zebra/sdk/printer/discovery/ServiceDiscoveryHandler;)V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/comm/internal/BtServiceDiscoverer;->doDiscovery(Landroid/content/Context;)V

    return-void
.end method

.method private unregisterTopLevelReceivers(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->btReceiver:Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->btMonitor:Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtRadioMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method
