.class Lcom/zebra/sdk/comm/TcpZebraConnectorImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/comm/internal/ZebraConnector;


# instance fields
.field private address:Ljava/lang/String;

.field private port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/comm/TcpZebraConnectorImpl;->address:Ljava/lang/String;

    iput p2, p0, Lcom/zebra/sdk/comm/TcpZebraConnectorImpl;->port:I

    return-void
.end method


# virtual methods
.method getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/TcpZebraConnectorImpl;->address:Ljava/lang/String;

    return-object v0
.end method

.method getPort()I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/comm/TcpZebraConnectorImpl;->port:I

    return v0
.end method

.method public open()Lcom/zebra/sdk/comm/internal/ZebraSocket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/zebra/sdk/comm/internal/ZebraNetworkSocket;

    iget-object v1, p0, Lcom/zebra/sdk/comm/TcpZebraConnectorImpl;->address:Ljava/lang/String;

    iget v2, p0, Lcom/zebra/sdk/comm/TcpZebraConnectorImpl;->port:I

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/comm/internal/ZebraNetworkSocket;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0}, Lcom/zebra/sdk/comm/internal/ZebraSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
