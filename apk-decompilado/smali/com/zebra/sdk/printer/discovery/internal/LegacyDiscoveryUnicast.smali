.class public Lcom/zebra/sdk/printer/discovery/internal/LegacyDiscoveryUnicast;
.super Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    const/16 v0, 0x1770

    invoke-direct {p0, p1, v0}, Lcom/zebra/sdk/printer/discovery/internal/LegacyDiscoveryUnicast;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;-><init>(I)V

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/printer/discovery/internal/LegacyDiscoveryUnicast;->broadcastIpAddresses:[Ljava/net/InetAddress;
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
.end method


# virtual methods
.method protected createDiscoveryRequestPacket()Ljava/net/DatagramPacket;
    .locals 3

    new-instance v0, Ljava/net/DatagramPacket;

    sget-object v1, Lcom/zebra/sdk/printer/discovery/internal/LegacyDiscoveryUnicast;->DISCOVERY_REQUEST_PACKET:[B

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/LegacyDiscoveryUnicast;->DISCOVERY_REQUEST_PACKET:[B

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    return-object v0
.end method

.method protected setSocketOptions(Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    return-void
.end method

.method protected shouldExitOnceAPrinterIsFound()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
