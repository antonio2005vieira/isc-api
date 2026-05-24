.class Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BtReceiver"
.end annotation


# static fields
.field private static final BLUETOOTH_PRINTER_CLASS:I = 0x680


# instance fields
.field private foundDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;


# direct methods
.method private constructor <init>(Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;->this$0:Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;->foundDevices:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;-><init>(Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;)V

    return-void
.end method

.method private isPrinterClass(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p1

    const/16 v1, 0x680

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private processFoundPrinter(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;->foundDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;->this$0:Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;

    invoke-static {v0}, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->access$200(Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;)Lcom/zebra/sdk/printer/discovery/DeviceFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;->this$0:Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;

    invoke-static {v0}, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->access$200(Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;)Lcom/zebra/sdk/printer/discovery/DeviceFilter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zebra/sdk/printer/discovery/DeviceFilter;->shouldAddPrinter(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;->isPrinterClass(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;->this$0:Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;

    invoke-static {v0}, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->access$000(Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;)Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

    move-result-object v0

    new-instance v1, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;->foundPrinter(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;)V

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;->foundDevices:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;->processFoundPrinter(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;->this$0:Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;

    invoke-static {p2}, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->access$000(Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;)Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

    move-result-object p2

    invoke-interface {p2}, Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;->discoveryFinished()V

    iget-object p2, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtReceiver;->this$0:Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;

    invoke-static {p2, p1}, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->access$100(Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
