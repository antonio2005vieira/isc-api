.class public abstract Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;
.super Ljava/lang/Object;


# static fields
.field private static ADVANCED_DISCOVERY_REQUEST_PACKET:[B = null

.field protected static final DEFAULT_LATE_ARRIVAL_DELAY:I = 0x1770

.field public static DISCOVERY_REQUEST_PACKET:[B = null

.field public static final MAX_DATAGRAM_SIZE:I = 0x258


# instance fields
.field private final DISCOVERY_PORT:I

.field protected broadcastIpAddresses:[Ljava/net/InetAddress;

.field private discoveredPrinters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected discoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

.field private waitForResponsesTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->ADVANCED_DISCOVERY_REQUEST_PACKET:[B

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->DISCOVERY_REQUEST_PACKET:[B

    return-void

    :array_0
    .array-data 1
        0x2et
        0x2ct
        0x3at
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        -0x5ct
        -0x13t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2et
        0x2ct
        0x3at
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1069

    iput v0, p0, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->DISCOVERY_PORT:I

    const/16 v0, 0x1770

    iput v0, p0, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->waitForResponsesTimeout:I

    iput p1, p0, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->waitForResponsesTimeout:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->discoveredPrinters:Ljava/util/Map;

    return-void
.end method

.method private createDiscoverySocket()Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;,
            Ljava/net/SocketException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->createDiscoSocket()Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->setSocketOptions(Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;)V

    iget v1, p0, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->waitForResponsesTimeout:I

    invoke-interface {v0, v1}, Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;->setSoTimeout(I)V

    return-object v0
.end method

.method private getDiscoveryResponses(Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;Ljava/net/DatagramPacket;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException;,
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :try_start_0
    invoke-interface {p1, p2}, Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterNetworkFactory;->getDiscoveredPrinterNetwork([B)Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->discoveredPrinters:Ljava/util/Map;

    iget-object v2, v0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;->address:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;->address:Ljava/lang/String;

    const-string v2, "0.0.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->discoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

    invoke-interface {v1, v0}, Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;->foundPrinter(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;)V

    iget-object v1, p0, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->discoveredPrinters:Ljava/util/Map;

    iget-object v2, v0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;->address:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;->getDiscoveryDataMap()Ljava/util/Map;

    move-result-object v0

    const-string v3, "DNS_NAME"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->shouldExitOnceAPrinterIsFound()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :catch_0
    return-void
.end method

.method private sendDiscoveryRequest(Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;Ljava/net/DatagramPacket;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->broadcastIpAddresses:[Ljava/net/InetAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->broadcastIpAddresses:[Ljava/net/InetAddress;

    aget-object v2, v2, v0

    const/16 v3, 0x1069

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p2, v1}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    invoke-interface {p1, p2}, Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;->send(Ljava/net/DatagramPacket;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startDiscoveryInBackground()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA$1;

    invoke-direct {v1, p0}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA$1;-><init>(Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected createDiscoSocket()Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocketImpl;

    invoke-direct {v0}, Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocketImpl;-><init>()V

    return-object v0
.end method

.method protected createDiscoveryRequestPacket()Ljava/net/DatagramPacket;
    .locals 3

    new-instance v0, Ljava/net/DatagramPacket;

    sget-object v1, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->ADVANCED_DISCOVERY_REQUEST_PACKET:[B

    array-length v2, v1

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    return-object v0
.end method

.method public doBroadcast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->discoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->startDiscoveryInBackground()V

    return-void

    :cond_0
    new-instance p1, Lcom/zebra/sdk/printer/discovery/DiscoveryException;

    const-string v0, "A DiscoveryHandler must be supplied"

    invoke-direct {p1, v0}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected doDiscovery()Z
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->createDiscoverySocket()Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->createDiscoveryRequestPacket()Ljava/net/DatagramPacket;

    move-result-object v1

    const/16 v2, 0x258

    new-array v3, v2, [B

    new-instance v4, Ljava/net/DatagramPacket;

    invoke-direct {v4, v3, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-direct {p0, v0, v1}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->sendDiscoveryRequest(Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;Ljava/net/DatagramPacket;)V

    invoke-direct {p0, v0, v4}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->getDiscoveryResponses(Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;Ljava/net/DatagramPacket;)V

    invoke-interface {v0}, Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/zebra/sdk/printer/discovery/DiscoveryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->discoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->discoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->discoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;->discoveryError(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract setSocketOptions(Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation
.end method

.method protected shouldExitOnceAPrinterIsFound()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
