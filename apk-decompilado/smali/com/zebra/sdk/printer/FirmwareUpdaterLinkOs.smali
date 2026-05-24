.class public interface abstract Lcom/zebra/sdk/printer/FirmwareUpdaterLinkOs;
.super Ljava/lang/Object;


# virtual methods
.method public abstract updateFirmware(Ljava/lang/String;JLcom/zebra/sdk/printer/FirmwareUpdateHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract updateFirmware(Ljava/lang/String;Lcom/zebra/sdk/printer/FirmwareUpdateHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract updateFirmwareUnconditionally(Ljava/lang/String;JLcom/zebra/sdk/printer/FirmwareUpdateHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract updateFirmwareUnconditionally(Ljava/lang/String;Lcom/zebra/sdk/printer/FirmwareUpdateHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method
