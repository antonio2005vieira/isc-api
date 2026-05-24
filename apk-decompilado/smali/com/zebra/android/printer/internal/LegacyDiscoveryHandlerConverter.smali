.class public Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;


# instance fields
.field private oldDiscoHandler:Lcom/zebra/android/discovery/DiscoveryHandler;


# direct methods
.method public constructor <init>(Lcom/zebra/android/discovery/DiscoveryHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;->oldDiscoHandler:Lcom/zebra/android/discovery/DiscoveryHandler;

    return-void
.end method


# virtual methods
.method public discoveryError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;->oldDiscoHandler:Lcom/zebra/android/discovery/DiscoveryHandler;

    invoke-interface {v0, p1}, Lcom/zebra/android/discovery/DiscoveryHandler;->discoveryError(Ljava/lang/String;)V

    return-void
.end method

.method public discoveryFinished()V
    .locals 1

    iget-object v0, p0, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;->oldDiscoHandler:Lcom/zebra/android/discovery/DiscoveryHandler;

    invoke-interface {v0}, Lcom/zebra/android/discovery/DiscoveryHandler;->discoveryFinished()V

    return-void
.end method

.method public foundPrinter(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;)V
    .locals 3

    instance-of v0, p1, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;

    new-instance v0, Lcom/zebra/android/discovery/DiscoveredPrinterBluetooth;

    iget-object v1, p1, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;->address:Ljava/lang/String;

    iget-object p1, p1, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;->friendlyName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/zebra/android/discovery/DiscoveredPrinterBluetooth;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;

    new-instance v0, Lcom/zebra/android/discovery/DiscoveredPrinterNetwork;

    iget-object v1, p1, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;->address:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;->getDiscoveryDataMap()Ljava/util/Map;

    move-result-object p1

    const-string v2, "PORT_NUMBER"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/zebra/android/discovery/DiscoveredPrinterNetwork;-><init>(Ljava/lang/String;I)V

    :goto_0
    iget-object p1, p0, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;->oldDiscoHandler:Lcom/zebra/android/discovery/DiscoveryHandler;

    invoke-interface {p1, v0}, Lcom/zebra/android/discovery/DiscoveryHandler;->foundPrinter(Lcom/zebra/android/discovery/DiscoveredPrinter;)V

    return-void
.end method
