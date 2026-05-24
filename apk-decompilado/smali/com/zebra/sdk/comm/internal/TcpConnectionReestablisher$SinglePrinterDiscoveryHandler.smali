.class final Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SinglePrinterDiscoveryHandler"
.end annotation


# instance fields
.field public isFinished:Z

.field public printer:Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;

.field final synthetic this$0:Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;


# direct methods
.method private constructor <init>(Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;->this$0:Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;->isFinished:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;-><init>(Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;)V

    return-void
.end method


# virtual methods
.method public discoveryError(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;->isFinished:Z

    return-void
.end method

.method public discoveryFinished()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;->isFinished:Z

    return-void
.end method

.method public foundPrinter(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;->printer:Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;->isFinished:Z

    return-void
.end method
