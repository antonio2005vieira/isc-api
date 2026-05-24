.class final Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$FullSubnetDiscoveryHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FullSubnetDiscoveryHandler"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public isFinished:Z

.field private macAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$FullSubnetDiscoveryHandler;->this$0:Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$FullSubnetDiscoveryHandler;->isFinished:Z

    iput-object p2, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$FullSubnetDiscoveryHandler;->macAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public discoveryError(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$FullSubnetDiscoveryHandler;->isFinished:Z

    return-void
.end method

.method public discoveryFinished()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$FullSubnetDiscoveryHandler;->isFinished:Z

    return-void
.end method

.method public foundPrinter(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;)V
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$FullSubnetDiscoveryHandler;->macAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;->getDiscoveryDataMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "HARDWARE_ADDRESS"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$FullSubnetDiscoveryHandler;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;->address:Ljava/lang/String;

    iput-object p1, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$FullSubnetDiscoveryHandler;->address:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$FullSubnetDiscoveryHandler;->isFinished:Z

    :cond_0
    return-void
.end method
