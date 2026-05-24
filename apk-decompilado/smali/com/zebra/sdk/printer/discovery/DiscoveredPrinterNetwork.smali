.class public Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;
.super Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;


# static fields
.field private static final serialVersionUID:J = -0x7859e4b121c9db89L


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;->discoSettings:Ljava/util/Map;

    const-string v1, "ADDRESS"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;->discoSettings:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "PORT_NUMBER"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ADDRESS"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;->discoSettings:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    check-cast p1, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;->discoSettings:Ljava/util/Map;

    const-string v1, "SERIAL_NUMBER"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "UNKNOWN"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object v0, v2

    :cond_3
    invoke-virtual {p1}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;->getDiscoveryDataMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    move-object v2, v1

    :cond_5
    :goto_0
    new-instance v1, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;->address:Ljava/lang/String;

    iget-object p1, p1, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;->address:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result p1

    return p1
.end method

.method public getConnection()Lcom/zebra/sdk/comm/Connection;
    .locals 4

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;->discoSettings:Ljava/util/Map;

    const-string v1, "ADDRESS"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;->discoSettings:Ljava/util/Map;

    const-string v2, "PORT_NUMBER"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;->discoSettings:Ljava/util/Map;

    const-string v3, "JSON_PORT_NUMBER"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/zebra/sdk/comm/MultichannelTcpConnection;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v3, v0, v1, v2}, Lcom/zebra/sdk/comm/MultichannelTcpConnection;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/zebra/sdk/comm/TcpConnection;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v3, v0, v1}, Lcom/zebra/sdk/comm/TcpConnection;-><init>(Ljava/lang/String;I)V

    :goto_0
    return-object v3
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;->discoSettings:Ljava/util/Map;

    const-string v1, "SERIAL_NUMBER"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "UNKNOWN"

    :cond_1
    new-instance v1, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    const/16 v2, 0x2f

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>(II)V

    iget-object v2, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterNetwork;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method
