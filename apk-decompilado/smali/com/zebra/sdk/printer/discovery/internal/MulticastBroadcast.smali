.class public Lcom/zebra/sdk/printer/discovery/internal/MulticastBroadcast;
.super Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;


# instance fields
.field private final ESI_REGISTERED_MULTICAST_GROUP_ADDRESS:Ljava/lang/String;

.field private hops:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    const/16 v0, 0x1770

    invoke-direct {p0, p1, v0}, Lcom/zebra/sdk/printer/discovery/internal/MulticastBroadcast;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;-><init>(I)V

    const-string p2, "224.0.1.55"

    iput-object p2, p0, Lcom/zebra/sdk/printer/discovery/internal/MulticastBroadcast;->ESI_REGISTERED_MULTICAST_GROUP_ADDRESS:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zebra/sdk/printer/discovery/internal/MulticastBroadcast;->hops:I

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/zebra/sdk/printer/discovery/internal/MulticastBroadcast;->hops:I

    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/printer/discovery/internal/MulticastBroadcast;->broadcastIpAddresses:[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/printer/discovery/DiscoveryException;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p2, Lcom/zebra/sdk/printer/discovery/DiscoveryException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is an invalid multicast hop argument"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method protected setSocketOptions(Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    :try_start_0
    const-string v0, "224.0.1.55"

    invoke-interface {p1, v0}, Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;->joinGroup(Ljava/lang/String;)V

    iget v0, p0, Lcom/zebra/sdk/printer/discovery/internal/MulticastBroadcast;->hops:I

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
