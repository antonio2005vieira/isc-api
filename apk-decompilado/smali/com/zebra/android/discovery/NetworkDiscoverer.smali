.class public Lcom/zebra/android/discovery/NetworkDiscoverer;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static directedBroadcast(Lcom/zebra/android/discovery/DiscoveryHandler;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/discovery/DiscoveryException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;

    invoke-direct {v0, p0}, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;-><init>(Lcom/zebra/android/discovery/DiscoveryHandler;)V

    invoke-static {v0, p1}, Lcom/zebra/sdk/printer/discovery/NetworkDiscoverer;->directedBroadcast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/zebra/sdk/printer/discovery/DiscoveryException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/zebra/android/discovery/DiscoveryException;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zebra/android/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static directedBroadcast(Lcom/zebra/android/discovery/DiscoveryHandler;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/discovery/DiscoveryException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;

    invoke-direct {v0, p0}, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;-><init>(Lcom/zebra/android/discovery/DiscoveryHandler;)V

    invoke-static {v0, p1, p2}, Lcom/zebra/sdk/printer/discovery/NetworkDiscoverer;->directedBroadcast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/zebra/sdk/printer/discovery/DiscoveryException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/zebra/android/discovery/DiscoveryException;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zebra/android/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static findPrinters(Lcom/zebra/android/discovery/DiscoveryHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/discovery/DiscoveryException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;

    invoke-direct {v0, p0}, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;-><init>(Lcom/zebra/android/discovery/DiscoveryHandler;)V

    invoke-static {v0}, Lcom/zebra/sdk/printer/discovery/NetworkDiscoverer;->findPrinters(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V
    :try_end_0
    .catch Lcom/zebra/sdk/printer/discovery/DiscoveryException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lcom/zebra/android/discovery/DiscoveryException;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/zebra/android/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static localBroadcast(Lcom/zebra/android/discovery/DiscoveryHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/discovery/DiscoveryException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;

    invoke-direct {v0, p0}, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;-><init>(Lcom/zebra/android/discovery/DiscoveryHandler;)V

    invoke-static {v0}, Lcom/zebra/sdk/printer/discovery/NetworkDiscoverer;->localBroadcast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V
    :try_end_0
    .catch Lcom/zebra/sdk/printer/discovery/DiscoveryException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lcom/zebra/android/discovery/DiscoveryException;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/zebra/android/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static localBroadcast(Lcom/zebra/android/discovery/DiscoveryHandler;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/discovery/DiscoveryException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;

    invoke-direct {v0, p0}, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;-><init>(Lcom/zebra/android/discovery/DiscoveryHandler;)V

    invoke-static {v0, p1}, Lcom/zebra/sdk/printer/discovery/NetworkDiscoverer;->localBroadcast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;I)V
    :try_end_0
    .catch Lcom/zebra/sdk/printer/discovery/DiscoveryException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/zebra/android/discovery/DiscoveryException;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zebra/android/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static multicast(Lcom/zebra/android/discovery/DiscoveryHandler;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/discovery/DiscoveryException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;

    invoke-direct {v0, p0}, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;-><init>(Lcom/zebra/android/discovery/DiscoveryHandler;)V

    invoke-static {v0, p1}, Lcom/zebra/sdk/printer/discovery/NetworkDiscoverer;->multicast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;I)V
    :try_end_0
    .catch Lcom/zebra/sdk/printer/discovery/DiscoveryException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/zebra/android/discovery/DiscoveryException;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zebra/android/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static multicast(Lcom/zebra/android/discovery/DiscoveryHandler;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/discovery/DiscoveryException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;

    invoke-direct {v0, p0}, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;-><init>(Lcom/zebra/android/discovery/DiscoveryHandler;)V

    invoke-static {v0, p1, p2}, Lcom/zebra/sdk/printer/discovery/NetworkDiscoverer;->multicast(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;II)V
    :try_end_0
    .catch Lcom/zebra/sdk/printer/discovery/DiscoveryException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/zebra/android/discovery/DiscoveryException;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zebra/android/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static subnetSearch(Lcom/zebra/android/discovery/DiscoveryHandler;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/discovery/DiscoveryException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;

    invoke-direct {v0, p0}, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;-><init>(Lcom/zebra/android/discovery/DiscoveryHandler;)V

    invoke-static {v0, p1}, Lcom/zebra/sdk/printer/discovery/NetworkDiscoverer;->subnetSearch(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/zebra/sdk/printer/discovery/DiscoveryException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/zebra/android/discovery/DiscoveryException;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zebra/android/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static subnetSearch(Lcom/zebra/android/discovery/DiscoveryHandler;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/discovery/DiscoveryException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;

    invoke-direct {v0, p0}, Lcom/zebra/android/printer/internal/LegacyDiscoveryHandlerConverter;-><init>(Lcom/zebra/android/discovery/DiscoveryHandler;)V

    invoke-static {v0, p1, p2}, Lcom/zebra/sdk/printer/discovery/NetworkDiscoverer;->subnetSearch(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/zebra/sdk/printer/discovery/DiscoveryException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/zebra/android/discovery/DiscoveryException;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zebra/android/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
