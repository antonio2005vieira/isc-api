.class public Lcom/zebra/sdk/printer/discovery/internal/PrinterNameSearch;
.super Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Ljava/util/List;)V
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

    const/16 v0, 0x1770

    invoke-direct {p0, p1, p2, v0}, Lcom/zebra/sdk/printer/discovery/internal/PrinterNameSearch;-><init>(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Ljava/util/List;I)V
    .locals 3
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

    invoke-direct {p0, p3}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;-><init>(I)V

    if-eqz p1, :cond_1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An invalid printer name/ip address was provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;->discoveryError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/net/InetAddress;

    invoke-interface {p3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/net/InetAddress;

    iput-object p1, p0, Lcom/zebra/sdk/printer/discovery/internal/PrinterNameSearch;->broadcastIpAddresses:[Ljava/net/InetAddress;

    return-void

    :cond_1
    new-instance p1, Lcom/zebra/sdk/printer/discovery/DiscoveryException;

    const-string p2, "A DiscoveryHandler must be supplied"

    invoke-direct {p1, p2}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method protected setSocketOptions(Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    return-void
.end method
