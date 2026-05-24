.class public Lcom/zebra/sdk/comm/internal/MultichannelTcpConnectionReestablisher;
.super Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;

# interfaces
.implements Lcom/zebra/sdk/comm/ConnectionReestablisher;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/MultichannelConnection;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;-><init>(Lcom/zebra/sdk/comm/Connection;J)V

    return-void
.end method


# virtual methods
.method protected getNewConnection(Ljava/lang/String;)Lcom/zebra/sdk/comm/Connection;
    .locals 3

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/MultichannelTcpConnectionReestablisher;->zebraPrinterConnection:Lcom/zebra/sdk/comm/Connection;

    check-cast v0, Lcom/zebra/sdk/comm/MultichannelConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/MultichannelConnection;->getPrintingChannel()Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    check-cast v1, Lcom/zebra/sdk/comm/TcpConnection;

    invoke-virtual {v1}, Lcom/zebra/sdk/comm/TcpConnection;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/MultichannelConnection;->getStatusChannel()Lcom/zebra/sdk/comm/StatusConnection;

    move-result-object v0

    check-cast v0, Lcom/zebra/sdk/comm/TcpStatusConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/TcpStatusConnection;->getPortNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Lcom/zebra/sdk/comm/MultichannelTcpConnection;

    invoke-direct {v2, p1, v1, v0}, Lcom/zebra/sdk/comm/MultichannelTcpConnection;-><init>(Ljava/lang/String;II)V

    return-object v2
.end method
