.class public Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;
.super Ljava/lang/Object;


# static fields
.field private static final COMPANY_ABBREVIATION_OFFSET:I = 0x31

.field private static final COMPANY_ABBREVIATION_SIZE:I = 0x5

.field private static final DATE_CODE_OFFSET:I = 0x20

.field private static final DATE_CODE_SIZE:I = 0x7

.field private static final DEFAULT_GATEWAY_OFFSET:I = 0x50

.field private static final DEFAULT_GATEWAY_SIZE:I = 0x4

.field private static final DISCOVERY_VERSION_OFFSET:I = 0x3

.field private static final FW_VERSION_OFFSET:I = 0x27

.field private static final FW_VERSION_SIZE:I = 0xa

.field private static final GET_COMMUNITY_NAME_OFFSET:I = 0xd4

.field private static final GET_COMMUNITY_NAME_SIZE:I = 0x20

.field private static final HW_ADDRESS_OFFSET:I = 0x36

.field private static final HW_ADDRESS_SIZE:I = 0x6

.field private static final IP_ADDRESS_OFFSET:I = 0x48

.field private static final IP_ADDRESS_SIZE:I = 0x4

.field private static final MIN_PACKET_SIZE:I = 0x177

.field private static final PORT_NAME_OFFSET:I = 0x167

.field private static final PORT_NAME_SIZE:I = 0x10

.field private static final PORT_STATUS_OFFSET:I = 0x166

.field private static final PORT_STATUS_SIZE:I = 0x1

.field private static final PRODUCT_NAME_OFFSET:I = 0xc

.field private static final PRODUCT_NAME_SIZE:I = 0x14

.field private static final PRODUCT_NUMBER_OFFSET:I = 0x4

.field private static final PRODUCT_NUMBER_SIZE:I = 0x8

.field private static final SERIAL_NUM_OFFSET:I = 0x3c

.field private static final SERIAL_NUM_SIZE:I = 0xa

.field private static final SET_COMMUNITY_NAME_OFFSET:I = 0xf4

.field private static final SET_COMMUNITY_NAME_SIZE:I = 0x20

.field private static final SUBNET_MASK_OFFSET:I = 0x4c

.field private static final SUBNET_MASK_SIZE:I = 0x4

.field private static final SYSTEM_NAME_OFFSET:I = 0x54

.field private static final SYSTEM_NAME_SIZE:I = 0x19

.field private static final USING_NET_PROTOCOL_OFFSET:I = 0x46

.field private static final USING_NET_PROTOCOL_SIZE:I = 0x2


# instance fields
.field private rawDiscoveryPacket:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->rawDiscoveryPacket:[B

    iput-object p1, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->rawDiscoveryPacket:[B

    return-void
.end method

.method private copyOfRange([BII)[B
    .locals 4

    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    move v1, p2

    :goto_0
    if-gt v1, p3, :cond_0

    sub-int v2, v1, p2

    aget-byte v3, p1, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getCompanyAbbreviation()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->rawDiscoveryPacket:[B

    const/16 v1, 0x31

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/zebra/sdk/util/internal/PacketParsingUtil;->parseGeneralString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDateCode()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->rawDiscoveryPacket:[B

    const/16 v1, 0x20

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/zebra/sdk/util/internal/PacketParsingUtil;->parseGeneralString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDiscoveryDataMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getPrinterPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PORT_NUMBER"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getDnsName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DNS_NAME"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ADDRESS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getCompanyAbbreviation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COMPANY_ABBREVIATION"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getDiscoveryVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DISCOVERY_VER"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getProductNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PRODUCT_NUMBER"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getProductName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PRODUCT_NAME"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getDateCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DATE_CODE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FIRMWARE_VER"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getHardwareAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HARDWARE_ADDRESS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SERIAL_NUMBER"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getUsingNetProtocol()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    const-string v2, "USING_NET_PROTOCOL"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getSubnetmask()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUBNET_MASK"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getGateway()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GATEWAY"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getSystemName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SYSTEM_NAME"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getPortName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PORT_NAME"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getPortStatus()Lcom/zebra/sdk/printer/discovery/internal/PrinterPortStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/discovery/internal/PrinterPortStatus;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PORT_STATUS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getGetCommunityNameAsHexString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ENCRYPTED_GET_COMMUNITY_NAME"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getSetCommunityNameAsHexString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ENCRYPTED_SET_COMMUNITY_NAME"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getDiscoveryVersion()I
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->rawDiscoveryPacket:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/zebra/sdk/util/internal/PacketParsingUtil;->byte2int(B)I

    move-result v0

    return v0
.end method

.method private getDnsName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getSystemName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFirmwareVersion()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->rawDiscoveryPacket:[B

    const/16 v1, 0x27

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/zebra/sdk/util/internal/PacketParsingUtil;->parseGeneralString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGateway()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->rawDiscoveryPacket:[B

    const/16 v1, 0x50

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/zebra/sdk/util/internal/PacketParsingUtil;->parseAddress([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGetCommunityNameAsHexString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->rawDiscoveryPacket:[B

    const/16 v1, 0xd4

    const/16 v2, 0xf4

    invoke-direct {p0, v0, v1, v2}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/zebra/sdk/util/internal/StringUtilities;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHardwareAddress()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->rawDiscoveryPacket:[B

    const/16 v1, 0x36

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/zebra/sdk/util/internal/PacketParsingUtil;->parseGeneralByte([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIpAddress()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->rawDiscoveryPacket:[B

    const/16 v1, 0x48

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/zebra/sdk/util/internal/PacketParsingUtil;->parseAddress([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPortName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->rawDiscoveryPacket:[B

    const/16 v1, 0x167

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/zebra/sdk/util/internal/PacketParsingUtil;->parseGeneralString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPortStatus()Lcom/zebra/sdk/printer/discovery/internal/PrinterPortStatus;
    .locals 3

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->rawDiscoveryPacket:[B

    const/16 v1, 0x166

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->parseStatus([BII)Lcom/zebra/sdk/printer/discovery/internal/PrinterPortStatus;

    move-result-object v0

    return-object v0
.end method

.method private getPrinterPort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getProductName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "RW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "P4T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MQ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x238c

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x17d5

    :goto_1
    return v0
.end method

.method private getProductName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->rawDiscoveryPacket:[B

    const/16 v1, 0xc

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lcom/zebra/sdk/util/internal/PacketParsingUtil;->parseGeneralString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProductNumber()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->rawDiscoveryPacket:[B

    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/zebra/sdk/util/internal/PacketParsingUtil;->parseGeneralString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSerialNumber()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->rawDiscoveryPacket:[B

    const/16 v1, 0x3c

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/zebra/sdk/util/internal/PacketParsingUtil;->parseGeneralString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSetCommunityNameAsHexString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->rawDiscoveryPacket:[B

    const/16 v1, 0xf4

    const/16 v2, 0x114

    invoke-direct {p0, v0, v1, v2}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/zebra/sdk/util/internal/StringUtilities;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSubnetmask()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->rawDiscoveryPacket:[B

    const/16 v1, 0x4c

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/zebra/sdk/util/internal/PacketParsingUtil;->parseAddress([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSystemName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->rawDiscoveryPacket:[B

    const/16 v1, 0x54

    const/16 v2, 0x19

    invoke-static {v0, v1, v2}, Lcom/zebra/sdk/util/internal/PacketParsingUtil;->parseGeneralString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsingNetProtocol()Z
    .locals 3

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->rawDiscoveryPacket:[B

    const/16 v1, 0x46

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/zebra/sdk/util/internal/PacketParsingUtil;->parseBoolean([BII)Z

    move-result v0

    return v0
.end method

.method private static parseStatus([BII)Lcom/zebra/sdk/printer/discovery/internal/PrinterPortStatus;
    .locals 0

    aget-byte p0, p0, p1

    invoke-static {p0}, Lcom/zebra/sdk/util/internal/PacketParsingUtil;->byte2int(B)I

    move-result p0

    invoke-static {p0}, Lcom/zebra/sdk/printer/discovery/internal/PrinterPortStatus;->intToEnum(I)Lcom/zebra/sdk/printer/discovery/internal/PrinterPortStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDiscoveredPrinterNetwork()Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->rawDiscoveryPacket:[B

    array-length v0, v0

    const/16 v1, 0x177

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveryPacketDecoderLegacy;->getDiscoveryDataMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException;

    const-string v1, "Unable to parse the supplied discovery packet due to an invalid discovery packet length"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/printer/discovery/DiscoveryPacketDecodeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
