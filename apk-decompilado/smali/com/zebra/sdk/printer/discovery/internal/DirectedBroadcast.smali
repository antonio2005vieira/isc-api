.class public Lcom/zebra/sdk/printer/discovery/internal/DirectedBroadcast;
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

    invoke-direct {p0, p1, v0}, Lcom/zebra/sdk/printer/discovery/internal/DirectedBroadcast;-><init>(Ljava/lang/String;I)V

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
    invoke-static {p1}, Lcom/zebra/sdk/printer/discovery/internal/DirectedBroadcast;->getDirectedBroadcastAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/printer/discovery/internal/DirectedBroadcast;->broadcastIpAddresses:[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Lcom/zebra/sdk/printer/discovery/DiscoveryException;

    const-string p2, "Malformed directed broadcast address"

    invoke-direct {p1, p2}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getDirectedBroadcastAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    const-string v0, "Malformed directed broadcast address"

    if-eqz p0, :cond_1

    const-string v1, "^((\\d|[1-9]\\d|1\\d\\d|2([0-4]\\d|5[0-5]))\\.(\\d|[1-9]\\d|1\\d\\d|2([0-4]\\d|5[0-5]))\\.(\\d|[1-9]\\d|1\\d\\d|2([0-4]\\d|5[0-5])))(\\.?|\\.(\\d|[1-9]\\d|1\\d\\d|2([0-4]\\d|5[0-5])))?$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".255"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/zebra/sdk/printer/discovery/DiscoveryException;

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/zebra/sdk/printer/discovery/DiscoveryException;

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw p0
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

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DirectedBroadcast;->broadcastIpAddresses:[Ljava/net/InetAddress;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
