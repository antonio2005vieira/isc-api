.class Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtRadioMonitor;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BtRadioMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;


# direct methods
.method private constructor <init>(Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtRadioMonitor;->this$0:Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtRadioMonitor;-><init>(Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtRadioMonitor;->this$0:Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;

    invoke-static {p2}, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->access$000(Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;)Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

    move-result-object p2

    invoke-interface {p2}, Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;->discoveryFinished()V

    iget-object p2, p0, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer$BtRadioMonitor;->this$0:Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;

    invoke-static {p2, p1}, Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;->access$100(Lcom/zebra/sdk/printer/discovery/BluetoothDiscoverer;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
