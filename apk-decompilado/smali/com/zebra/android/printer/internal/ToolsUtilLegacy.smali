.class public Lcom/zebra/android/printer/internal/ToolsUtilLegacy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/android/printer/ToolsUtil;


# instance fields
.field private newTypePrinter:Lcom/zebra/sdk/printer/ZebraPrinter;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/printer/ZebraPrinter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/android/printer/internal/ToolsUtilLegacy;->newTypePrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    return-void
.end method


# virtual methods
.method public calibrate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/android/printer/internal/ToolsUtilLegacy;->newTypePrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {v0}, Lcom/zebra/sdk/printer/ZebraPrinter;->calibrate()V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/android/comm/ZebraPrinterConnectionException;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public printConfigurationLabel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/android/printer/internal/ToolsUtilLegacy;->newTypePrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {v0}, Lcom/zebra/sdk/printer/ZebraPrinter;->printConfigurationLabel()V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/android/comm/ZebraPrinterConnectionException;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/android/printer/internal/ToolsUtilLegacy;->newTypePrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {v0}, Lcom/zebra/sdk/printer/ZebraPrinter;->reset()V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/android/comm/ZebraPrinterConnectionException;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public restoreDefaults()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/android/printer/internal/ToolsUtilLegacy;->newTypePrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {v0}, Lcom/zebra/sdk/printer/ZebraPrinter;->restoreDefaults()V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/android/comm/ZebraPrinterConnectionException;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendCommand(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/android/printer/internal/ToolsUtilLegacy;->newTypePrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/printer/ZebraPrinter;->sendCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/android/comm/ZebraPrinterConnectionException;

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
