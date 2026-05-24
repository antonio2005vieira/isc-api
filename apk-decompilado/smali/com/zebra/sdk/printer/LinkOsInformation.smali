.class public Lcom/zebra/sdk/printer/LinkOsInformation;
.super Ljava/lang/Object;


# instance fields
.field private major:I

.field private minor:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zebra/sdk/printer/LinkOsInformation;->major:I

    iput v0, p0, Lcom/zebra/sdk/printer/LinkOsInformation;->minor:I

    invoke-direct {p0, p1, p2}, Lcom/zebra/sdk/printer/LinkOsInformation;->init(II)V

    return-void
.end method

.method public constructor <init>(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;)V
    .locals 4

    const-string v0, "LINK_OS_MINOR_VER"

    const-string v1, "LINK_OS_MAJOR_VER"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/zebra/sdk/printer/LinkOsInformation;->major:I

    iput v2, p0, Lcom/zebra/sdk/printer/LinkOsInformation;->minor:I

    :try_start_0
    invoke-virtual {p1}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;->getDiscoveryDataMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v1}, Lcom/zebra/sdk/util/internal/StringUtilities;->getIntValueForKey(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v0}, Lcom/zebra/sdk/util/internal/StringUtilities;->getIntValueForKey(Ljava/util/Map;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/zebra/sdk/printer/LinkOsInformation;->init(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, v2}, Lcom/zebra/sdk/printer/LinkOsInformation;->init(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The DiscoveredPrinter argument does not appear to be a Link-OS printer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zebra/sdk/printer/LinkOsInformation;->major:I

    iput v0, p0, Lcom/zebra/sdk/printer/LinkOsInformation;->minor:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/zebra/sdk/printer/LinkOsInformation;->init(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/zebra/sdk/printer/LinkOsInformation;->init(II)V

    :goto_1
    return-void
.end method

.method private init(II)V
    .locals 0

    iput p1, p0, Lcom/zebra/sdk/printer/LinkOsInformation;->major:I

    iput p2, p0, Lcom/zebra/sdk/printer/LinkOsInformation;->minor:I

    return-void
.end method


# virtual methods
.method public getMajor()I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/printer/LinkOsInformation;->major:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/printer/LinkOsInformation;->minor:I

    return v0
.end method
