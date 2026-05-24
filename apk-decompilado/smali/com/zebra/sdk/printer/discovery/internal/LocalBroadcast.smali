.class public Lcom/zebra/sdk/printer/discovery/internal/LocalBroadcast;
.super Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;


# instance fields
.field private final LOCAL_BROADCAST_ADDRESS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    const/16 v0, 0x1770

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/discovery/internal/LocalBroadcast;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;-><init>(I)V

    const-string p1, "255.255.255.255"

    iput-object p1, p0, Lcom/zebra/sdk/printer/discovery/internal/LocalBroadcast;->LOCAL_BROADCAST_ADDRESS:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/printer/discovery/internal/LocalBroadcast;->broadcastIpAddresses:[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/printer/discovery/DiscoveryException;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw v0
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
