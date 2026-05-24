.class public Lcom/zebra/sdk/comm/MultichannelTcpConnection;
.super Lcom/zebra/sdk/comm/MultichannelConnection;


# static fields
.field public static final DEFAULT_MULTICHANNEL_PRINTING_PORT:I = 0x238c

.field public static final DEFAULT_MULTICHANNEL_STATUS_PORT:I = 0x23f0


# direct methods
.method protected constructor <init>(Lcom/zebra/sdk/comm/internal/ConnectionInfo;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/internal/NotMyConnectionDataException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/comm/MultichannelConnection;-><init>()V

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/internal/ConnectionInfo;->getMyData()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^\\s*((?i)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/MultichannelTcpConnection;->getConnectionBuilderPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":)?([\\d]{1,3}.[\\d]{1,3}.[\\d]{1,3}.[\\d]{1,3})(:([\\d]{1,5}))?(:([\\d]{1,5}))?\\s*$"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zebra/sdk/util/internal/RegexUtil;->getMatches(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "zebra.com/apps/r/nfc?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mB="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/zebra/sdk/comm/internal/NotMyConnectionDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TCP Connection doesn\'t understand "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/comm/internal/NotMyConnectionDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/MultichannelTcpConnection;->getConnectionBuilderPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":)?([^:]+)(:([\\d]{1,5}))?(:([\\d]{1,5}))?\\s*$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zebra/sdk/util/internal/RegexUtil;->getMatches(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_1
    const/4 p1, 0x2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    const/16 p1, 0x238c

    const/4 v1, 0x4

    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, p1

    goto :goto_2

    :catch_0
    const/16 v3, 0x238c

    :goto_2
    const/16 p1, 0x23f0

    const/4 v1, 0x6

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v4, p1

    goto :goto_3

    :catch_1
    const/16 v4, 0x23f0

    :goto_3
    const/16 v5, 0x1388

    const/16 v6, 0x1f4

    const/16 v7, 0x1388

    const/16 v8, 0x1f4

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/zebra/sdk/comm/MultichannelTcpConnection;->init(Ljava/lang/String;IIIIII)V

    return-void

    :cond_3
    new-instance v0, Lcom/zebra/sdk/comm/internal/NotMyConnectionDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/MultichannelTcpConnection;->getConnectionBuilderPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Connection doesn\'t understand "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/comm/internal/NotMyConnectionDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;)V
    .locals 2

    const/16 v0, 0x1388

    const/16 v1, 0x1f4

    invoke-direct {p0, p1, v0, v1}, Lcom/zebra/sdk/comm/MultichannelTcpConnection;-><init>(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;II)V

    return-void
.end method

.method public constructor <init>(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;II)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/zebra/sdk/comm/MultichannelTcpConnection;-><init>(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;IIII)V
    .locals 10

    invoke-direct {p0}, Lcom/zebra/sdk/comm/MultichannelConnection;-><init>()V

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;->getDiscoveryDataMap()Ljava/util/Map;

    move-result-object p1

    const-string v0, "The DiscoveredPrinter argument does not appear to be a Link-OS printer"

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "ADDRESS"

    invoke-static {p1, v1}, Lcom/zebra/sdk/util/internal/StringUtilities;->getStringValueForKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "PORT_NUMBER"

    invoke-static {p1, v1}, Lcom/zebra/sdk/util/internal/StringUtilities;->getIntValueForKey(Ljava/util/Map;Ljava/lang/String;)I

    move-result v4

    const-string v1, "JSON_PORT_NUMBER"

    invoke-static {p1, v1}, Lcom/zebra/sdk/util/internal/StringUtilities;->getIntValueForKey(Ljava/util/Map;Ljava/lang/String;)I

    move-result v5

    move-object v2, p0

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/zebra/sdk/comm/MultichannelTcpConnection;->init(Ljava/lang/String;IIIIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6

    const/16 v4, 0x1388

    const/16 v5, 0x1f4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/zebra/sdk/comm/MultichannelTcpConnection;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/zebra/sdk/comm/MultichannelTcpConnection;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0

    invoke-direct {p0}, Lcom/zebra/sdk/comm/MultichannelConnection;-><init>()V

    invoke-virtual/range {p0 .. p7}, Lcom/zebra/sdk/comm/MultichannelTcpConnection;->init(Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method protected getConnectionBuilderPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "TCP_MULTI"

    return-object v0
.end method

.method public getConnectionReestablisher(J)Lcom/zebra/sdk/comm/ConnectionReestablisher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/comm/internal/MultichannelTcpConnectionReestablisher;

    invoke-direct {v0, p0, p1, p2}, Lcom/zebra/sdk/comm/internal/MultichannelTcpConnectionReestablisher;-><init>(Lcom/zebra/sdk/comm/MultichannelConnection;J)V

    return-object v0
.end method

.method public getSimpleConnectionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelTcpConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    check-cast v0, Lcom/zebra/sdk/comm/TcpConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/TcpConnection;->getSimpleConnectionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init(Ljava/lang/String;IIIIII)V
    .locals 1

    new-instance v0, Lcom/zebra/sdk/comm/TcpConnection;

    invoke-direct {v0, p1, p2, p4, p5}, Lcom/zebra/sdk/comm/TcpConnection;-><init>(Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/zebra/sdk/comm/MultichannelTcpConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    new-instance p2, Lcom/zebra/sdk/comm/TcpStatusConnection;

    invoke-direct {p2, p1, p3, p6, p7}, Lcom/zebra/sdk/comm/TcpStatusConnection;-><init>(Ljava/lang/String;III)V

    iput-object p2, p0, Lcom/zebra/sdk/comm/MultichannelTcpConnection;->settings:Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/MultichannelTcpConnection;->getConnectionBuilderPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zebra/sdk/comm/MultichannelTcpConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    check-cast v2, Lcom/zebra/sdk/comm/TcpConnection;

    invoke-virtual {v2}, Lcom/zebra/sdk/comm/TcpConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zebra/sdk/comm/MultichannelTcpConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    check-cast v2, Lcom/zebra/sdk/comm/TcpConnection;

    invoke-virtual {v2}, Lcom/zebra/sdk/comm/TcpConnection;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zebra/sdk/comm/MultichannelTcpConnection;->settings:Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;

    check-cast v1, Lcom/zebra/sdk/comm/TcpStatusConnection;

    invoke-virtual {v1}, Lcom/zebra/sdk/comm/TcpStatusConnection;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
