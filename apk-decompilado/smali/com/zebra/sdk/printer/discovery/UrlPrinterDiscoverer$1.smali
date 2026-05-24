.class final Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer;->findPrinters(Ljava/lang/String;Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$discoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

.field final synthetic val$networkAddressList:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer$1;->val$networkAddressList:Ljava/util/List;

    iput-object p2, p0, Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer$1;->val$discoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public discoveryError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer$1;->val$discoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;->discoveryError(Ljava/lang/String;)V

    return-void
.end method

.method public discoveryFinished()V
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer$1;->val$discoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

    invoke-interface {v0}, Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;->discoveryFinished()V

    return-void
.end method

.method public foundPrinter(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;)V
    .locals 4

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer$1;->val$networkAddressList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;->getDiscoveryDataMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "HARDWARE_ADDRESS"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer$1;->val$discoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;->foundPrinter(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;)V

    :cond_0
    return-void
.end method
