.class public Lcom/zebra/sdk/comm/TcpConnection;
.super Lcom/zebra/sdk/comm/ConnectionA;

# interfaces
.implements Lcom/zebra/sdk/comm/IpAddressable;
.implements Lcom/zebra/sdk/comm/internal/ConnectionI;


# static fields
.field public static final DEFAULT_CPCL_TCP_PORT:I = 0x17d5

.field public static final DEFAULT_ZPL_TCP_PORT:I = 0x238c


# direct methods
.method protected constructor <init>(Lcom/zebra/sdk/comm/internal/ConnectionInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/internal/NotMyConnectionDataException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/comm/ConnectionA;-><init>()V

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/internal/ConnectionInfo;->getMyData()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^\\s*((?i)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/TcpConnection;->getConnectionBuilderPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":)?([\\d]{1,3}.[\\d]{1,3}.[\\d]{1,3}.[\\d]{1,3})(:([\\d]{1,5}))?\\s*$"

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

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/TcpConnection;->getConnectionBuilderPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":)?([^:]+)(:([\\d]{1,5}))?\\s*$"

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

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/TcpConnection;->getDefaultPort()I

    move-result v1

    const/4 v2, 0x4

    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Lcom/zebra/sdk/comm/TcpZebraConnectorImpl;

    invoke-direct {v0, p1, v1}, Lcom/zebra/sdk/comm/TcpZebraConnectorImpl;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/zebra/sdk/comm/TcpConnection;->zebraConnector:Lcom/zebra/sdk/comm/internal/ZebraConnector;

    const/16 p1, 0x1388

    iput p1, p0, Lcom/zebra/sdk/comm/TcpConnection;->maxTimeoutForRead:I

    const/16 p1, 0x1f4

    iput p1, p0, Lcom/zebra/sdk/comm/TcpConnection;->timeToWaitForMoreData:I

    return-void

    :cond_3
    new-instance v0, Lcom/zebra/sdk/comm/internal/NotMyConnectionDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/TcpConnection;->getConnectionBuilderPrefix()Ljava/lang/String;

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

.method private constructor <init>(Lcom/zebra/sdk/comm/internal/ZebraConnector;II)V
    .locals 0

    invoke-direct {p0}, Lcom/zebra/sdk/comm/ConnectionA;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/comm/TcpConnection;->zebraConnector:Lcom/zebra/sdk/comm/internal/ZebraConnector;

    iput p2, p0, Lcom/zebra/sdk/comm/TcpConnection;->maxTimeoutForRead:I

    iput p3, p0, Lcom/zebra/sdk/comm/TcpConnection;->timeToWaitForMoreData:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/16 v0, 0x1388

    const/16 v1, 0x1f4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/zebra/sdk/comm/TcpConnection;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    new-instance v0, Lcom/zebra/sdk/comm/TcpZebraConnectorImpl;

    invoke-direct {v0, p1, p2}, Lcom/zebra/sdk/comm/TcpZebraConnectorImpl;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p3, p4}, Lcom/zebra/sdk/comm/TcpConnection;-><init>(Lcom/zebra/sdk/comm/internal/ZebraConnector;II)V

    return-void
.end method

.method private isCardPrinter()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/TcpConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zebra/sdk/util/internal/NetworkUtil;->getIEEE1284DeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "card printer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/TcpConnection;->zebraConnector:Lcom/zebra/sdk/comm/internal/ZebraConnector;

    check-cast v0, Lcom/zebra/sdk/comm/TcpZebraConnectorImpl;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/TcpZebraConnectorImpl;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getConnectionBuilderPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "TCP"

    return-object v0
.end method

.method public getConnectionReestablisher(J)Lcom/zebra/sdk/comm/ConnectionReestablisher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/comm/TcpConnection;->isCardPrinter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/zebra/sdk/util/internal/ReflectionUtil;->loadTcpCardConnectionReestablisher(Lcom/zebra/sdk/comm/Connection;J)Lcom/zebra/sdk/comm/ConnectionReestablisher;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;

    invoke-direct {v0, p0, p1, p2}, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;-><init>(Lcom/zebra/sdk/comm/Connection;J)V

    return-object v0
.end method

.method protected getDefaultPort()I
    .locals 1

    const/16 v0, 0x238c

    return v0
.end method

.method public getPortNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/TcpConnection;->zebraConnector:Lcom/zebra/sdk/comm/internal/ZebraConnector;

    check-cast v0, Lcom/zebra/sdk/comm/TcpZebraConnectorImpl;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/TcpZebraConnectorImpl;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleConnectionName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/TcpConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TCP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/TcpConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/TcpConnection;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
