.class public Lcom/zebra/sdk/printer/discovery/DiscoveryUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDiscoveryDataMap(Lcom/zebra/sdk/comm/Connection;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zebra/sdk/comm/Connection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const-string v0, "ip.discovery_packet"

    invoke-static {v0, p0}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zebra/sdk/printer/discovery/DiscoveryUtil;->parseDiscoveryPacket(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static parseDiscoveryPacket(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException;
        }
    .end annotation

    if-eqz p0, :cond_1

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/zebra/sdk/util/internal/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterNetworkFactory;->getDiscoveredPrinterNetwork([B)Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;->getDiscoveryDataMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException;

    const-string v0, "Unable to parse the supplied discovery packet due to an invalid discovery packet length"

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
