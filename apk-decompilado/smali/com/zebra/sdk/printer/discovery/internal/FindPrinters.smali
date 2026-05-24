.class public Lcom/zebra/sdk/printer/discovery/internal/FindPrinters;
.super Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;


# instance fields
.field private final ESI_REGISTERED_MULTICAST_GROUP_ADDRESS:Ljava/lang/String;

.field final LOCAL_BROADCAST_ADDRESS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    const/16 v0, 0x1770

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;-><init>(I)V

    const-string v0, "224.0.1.55"

    iput-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/FindPrinters;->ESI_REGISTERED_MULTICAST_GROUP_ADDRESS:Ljava/lang/String;

    const-string v0, "255.255.255.255"

    iput-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/FindPrinters;->LOCAL_BROADCAST_ADDRESS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doDiscovery()Z
    .locals 2

    :try_start_0
    const-string v0, "255.255.255.255"

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/FindPrinters;->broadcastIpAddresses:[Ljava/net/InetAddress;

    invoke-super {p0}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->doDiscovery()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "224.0.1.55"

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/FindPrinters;->broadcastIpAddresses:[Ljava/net/InetAddress;

    invoke-super {p0}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->doDiscovery()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/FindPrinters;->discoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

    const-string v1, "Unknown host address"

    invoke-interface {v0, v1}, Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;->discoveryError(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected setSocketOptions(Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    const/4 v0, 0x3

    :try_start_0
    invoke-interface {p1, v0}, Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;->setTimeToLive(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/printer/discovery/DiscoveryException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
