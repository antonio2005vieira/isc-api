.class public Lcom/zebra/sdk/comm/internal/BtServiceDiscoverer;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private device:Landroid/bluetooth/BluetoothDevice;

.field private serviceDiscoveryHandler:Lcom/zebra/sdk/printer/discovery/ServiceDiscoveryHandler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/zebra/sdk/printer/discovery/ServiceDiscoveryHandler;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/zebra/sdk/comm/internal/BtServiceDiscoverer;->serviceDiscoveryHandler:Lcom/zebra/sdk/printer/discovery/ServiceDiscoveryHandler;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/comm/internal/BtServiceDiscoverer;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method private processFoundServices(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/zebra/sdk/comm/internal/BtServiceDiscoverer;->serviceUUIDToChannel(Landroid/os/Parcelable;)Lcom/zebra/sdk/comm/ConnectionChannel;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/zebra/sdk/comm/internal/BtServiceDiscoverer;->serviceDiscoveryHandler:Lcom/zebra/sdk/printer/discovery/ServiceDiscoveryHandler;

    invoke-interface {v2, v1}, Lcom/zebra/sdk/printer/discovery/ServiceDiscoveryHandler;->foundService(Lcom/zebra/sdk/comm/ConnectionChannel;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zebra/sdk/comm/internal/BtServiceDiscoverer;->serviceDiscoveryHandler:Lcom/zebra/sdk/printer/discovery/ServiceDiscoveryHandler;

    invoke-interface {p1}, Lcom/zebra/sdk/printer/discovery/ServiceDiscoveryHandler;->discoveryFinished()V

    return-void
.end method

.method private serviceUUIDToChannel(Landroid/os/Parcelable;)Lcom/zebra/sdk/comm/ConnectionChannel;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AEB33570-0B7B-11E3-8FFD-0800200C9A66"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/zebra/sdk/comm/ConnectionChannel;->STATUS_CHANNEL:Lcom/zebra/sdk/comm/ConnectionChannel;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/zebra/sdk/comm/ConnectionChannel;->PRINTING_CHANNEL:Lcom/zebra/sdk/comm/ConnectionChannel;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public doDiscovery(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.UUID"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/zebra/sdk/comm/internal/BtServiceDiscoverer;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.UUID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/comm/internal/BtServiceDiscoverer;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0, p2}, Lcom/zebra/sdk/comm/internal/BtServiceDiscoverer;->processFoundServices(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
