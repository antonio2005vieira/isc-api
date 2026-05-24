.class public Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;
.super Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;


# static fields
.field private static final serialVersionUID:J = 0x4c718c62c8639ed4L


# instance fields
.field public final friendlyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;->friendlyName:Ljava/lang/String;

    iget-object p1, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;->discoSettings:Ljava/util/Map;

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;->address:Ljava/lang/String;

    const-string v1, "MAC_ADDRESS"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;->discoSettings:Ljava/util/Map;

    const-string v0, "FRIENDLY_NAME"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getConnection()Lcom/zebra/sdk/comm/Connection;
    .locals 2

    new-instance v0, Lcom/zebra/sdk/comm/BluetoothConnection;

    iget-object v1, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;->address:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/BluetoothConnection;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
