.class public interface abstract Lcom/zebra/sdk/comm/ConnectionReestablisher;
.super Ljava/lang/Object;


# virtual methods
.method public abstract reestablishConnection(Lcom/zebra/sdk/printer/PrinterReconnectionHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;,
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;
        }
    .end annotation
.end method
