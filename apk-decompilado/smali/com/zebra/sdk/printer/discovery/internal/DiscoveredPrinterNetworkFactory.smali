.class public Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterNetworkFactory;
.super Ljava/lang/Object;


# static fields
.field private static final ADVANCED_DISCOVERY_VERSION:I = 0x4

.field private static final DISCOVERY_VERSION_OFFSET:I = 0x3

.field private static final LEGACY_DISCOVERY_VERSION:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDiscoveredPrinterNetwork([B)Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException;
        }
    .end annotation

    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    invoke-static {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterNetworkFactory;->getDiscoveryVersionNumber([B)I

    move-result v0

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;

    invoke-direct {v0, p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;-><init>([B)V

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getDiscoveredPrinterNetwork()Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderAdvanced;

    invoke-direct {v0, p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderAdvanced;-><init>([B)V

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderAdvanced;->getDiscoveredPrinterNetworkAdvanced()Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException;

    const-string v0, "Unable to parse the supplied discovery packet due to an invalid discovery packet version"

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException;

    const-string v0, "Unable to parse the supplied discovery packet due to an invalid discovery packet length"

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getDiscoveryVersionNumber([B)I
    .locals 1

    const/4 v0, 0x3

    aget-byte p0, p0, v0

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    :cond_0
    return p0
.end method

.method public static isLinkOsPrinter(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;->getDiscoveryDataMap()Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "LINK_OS_MAJOR_VER"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method
