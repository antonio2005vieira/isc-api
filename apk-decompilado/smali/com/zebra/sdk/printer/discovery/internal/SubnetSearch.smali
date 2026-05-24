.class public Lcom/zebra/sdk/printer/discovery/internal/SubnetSearch;
.super Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;


# static fields
.field private static final EXCEPTION_STRING:Ljava/lang/String; = "Malformed subnet search address"

.field private static final IP_SEARCH_RANGE_HIGH:I = 0xfe

.field private static final IP_SEARCH_RANGE_LOW:I = 0x1


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    const/16 v0, 0x1770

    invoke-direct {p0, p1, v0}, Lcom/zebra/sdk/printer/discovery/internal/SubnetSearch;-><init>(Ljava/lang/String;I)V

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

    invoke-static {p1}, Lcom/zebra/sdk/printer/discovery/internal/SubnetSearch;->getAddressesToSearch(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/printer/discovery/internal/SubnetSearch;->broadcastIpAddresses:[Ljava/net/InetAddress;

    return-void
.end method

.method private static createSearchList(Ljava/util/regex/Matcher;)[Ljava/net/InetAddress;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Malformed subnet search address"

    if-eqz v0, :cond_3

    const/16 v2, 0xfe

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zebra/sdk/printer/discovery/internal/SubnetSearch;->setLowValue(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/zebra/sdk/printer/discovery/internal/SubnetSearch;->setHighValue(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/zebra/sdk/printer/discovery/internal/SubnetSearch;->isRangeValid(II)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/zebra/sdk/printer/discovery/DiscoveryException;

    invoke-direct {p0, v1}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-gt v0, v2, :cond_2

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    new-instance p0, Lcom/zebra/sdk/printer/discovery/DiscoveryException;

    invoke-direct {p0, v1}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/net/InetAddress;

    invoke-interface {v4, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/net/InetAddress;

    return-object p0

    :cond_3
    new-instance p0, Lcom/zebra/sdk/printer/discovery/DiscoveryException;

    invoke-direct {p0, v1}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static getAddressesToSearch(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    const-string v0, "Malformed subnet search address"

    if-eqz p0, :cond_1

    const-string v1, "^([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3})\\.?((([0-9]{1,3})(\\-([0-9]{1,3}|\\*))?)|\\*)?$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/zebra/sdk/printer/discovery/internal/SubnetSearch;->createSearchList(Ljava/util/regex/Matcher;)[Ljava/net/InetAddress;

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

.method private static isHighValueIsPresent(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isRangeValid(II)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0xfe

    if-gt p0, v1, :cond_0

    if-lt p1, v0, :cond_0

    if-gt p1, v1, :cond_0

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static setHighValue(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p0}, Lcom/zebra/sdk/printer/discovery/internal/SubnetSearch;->isHighValueIsPresent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zebra/sdk/printer/discovery/internal/SubnetSearch;->setHighValueWhichIsPresent(Ljava/lang/String;)I

    move-result p1

    :cond_0
    return p1
.end method

.method private static setHighValueWhichIsPresent(Ljava/lang/String;)I
    .locals 1

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0xfe

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static setLowValue(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/zebra/sdk/printer/discovery/DiscoveryException;

    const-string v0, "Malformed subnet search address"

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
