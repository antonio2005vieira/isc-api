.class public Lcom/zebra/sdk/printer/discovery/DiscoveryHandlerLinkOsOnly;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;


# instance fields
.field myDiscoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/discovery/DiscoveryHandlerLinkOsOnly;->myDiscoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

    return-void
.end method


# virtual methods
.method public discoveryError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/DiscoveryHandlerLinkOsOnly;->myDiscoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;->discoveryError(Ljava/lang/String;)V

    return-void
.end method

.method public discoveryFinished()V
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/DiscoveryHandlerLinkOsOnly;->myDiscoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

    invoke-interface {v0}, Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;->discoveryFinished()V

    return-void
.end method

.method public foundPrinter(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;)V
    .locals 1

    invoke-static {p1}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterNetworkFactory;->isLinkOsPrinter(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/DiscoveryHandlerLinkOsOnly;->myDiscoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;->foundPrinter(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;)V

    :cond_0
    return-void
.end method
