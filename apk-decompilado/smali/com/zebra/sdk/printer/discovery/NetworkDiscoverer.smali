.class public Lcom/zebra/sdk/printer/discovery/NetworkDiscoverer;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static directedBroadcast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/DirectedBroadcast;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/discovery/internal/DirectedBroadcast;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->doBroadcast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V

    return-void
.end method

.method public static directedBroadcast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/DirectedBroadcast;

    invoke-direct {v0, p1, p2}, Lcom/zebra/sdk/printer/discovery/internal/DirectedBroadcast;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->doBroadcast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V

    return-void
.end method

.method public static findPrinters(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/FindPrinters;

    invoke-direct {v0}, Lcom/zebra/sdk/printer/discovery/internal/FindPrinters;-><init>()V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->doBroadcast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V

    return-void
.end method

.method public static findPrinters(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterNameSearch;

    invoke-direct {v0, p0, p1}, Lcom/zebra/sdk/printer/discovery/internal/PrinterNameSearch;-><init>(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Ljava/util/List;)V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/printer/discovery/internal/PrinterNameSearch;->doBroadcast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V

    return-void
.end method

.method public static findPrinters(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterNameSearch;

    invoke-direct {v0, p0, p1, p2}, Lcom/zebra/sdk/printer/discovery/internal/PrinterNameSearch;-><init>(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Ljava/util/List;I)V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/printer/discovery/internal/PrinterNameSearch;->doBroadcast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V

    return-void
.end method

.method public static localBroadcast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/LocalBroadcast;

    invoke-direct {v0}, Lcom/zebra/sdk/printer/discovery/internal/LocalBroadcast;-><init>()V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->doBroadcast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V

    return-void
.end method

.method public static localBroadcast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/LocalBroadcast;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/discovery/internal/LocalBroadcast;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->doBroadcast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V

    return-void
.end method

.method public static multicast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/MulticastBroadcast;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/discovery/internal/MulticastBroadcast;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->doBroadcast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V

    return-void
.end method

.method public static multicast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/MulticastBroadcast;

    invoke-direct {v0, p1, p2}, Lcom/zebra/sdk/printer/discovery/internal/MulticastBroadcast;-><init>(II)V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->doBroadcast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V

    return-void
.end method

.method public static subnetSearch(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/SubnetSearch;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/discovery/internal/SubnetSearch;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->doBroadcast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V

    return-void
.end method

.method public static subnetSearch(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/SubnetSearch;

    invoke-direct {v0, p1, p2}, Lcom/zebra/sdk/printer/discovery/internal/SubnetSearch;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->doBroadcast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V

    return-void
.end method
