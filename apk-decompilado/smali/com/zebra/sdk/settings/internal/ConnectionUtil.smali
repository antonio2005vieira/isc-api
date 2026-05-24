.class public Lcom/zebra/sdk/settings/internal/ConnectionUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static selectConnection(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/comm/Connection;
    .locals 2

    instance-of v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    check-cast p0, Lcom/zebra/sdk/comm/MultichannelConnection;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/MultichannelConnection;->getStatusChannel()Lcom/zebra/sdk/comm/StatusConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/zebra/sdk/comm/StatusConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/MultichannelConnection;->getStatusChannel()Lcom/zebra/sdk/comm/StatusConnection;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/MultichannelConnection;->getPrintingChannel()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method
