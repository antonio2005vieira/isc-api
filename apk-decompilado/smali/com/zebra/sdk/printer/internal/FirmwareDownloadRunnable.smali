.class public Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private exceptionCaughtDuringRun:Ljava/lang/Exception;

.field private firmwareFilePath:Ljava/lang/String;

.field private handler:Lcom/zebra/sdk/printer/FirmwareUpdateHandlerBase;

.field private zebraPrinterConnection:Lcom/zebra/sdk/comm/Connection;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;Ljava/lang/String;Lcom/zebra/sdk/printer/FirmwareUpdateHandlerBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;->exceptionCaughtDuringRun:Ljava/lang/Exception;

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;->zebraPrinterConnection:Lcom/zebra/sdk/comm/Connection;

    iput-object p2, p0, Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;->firmwareFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;->handler:Lcom/zebra/sdk/printer/FirmwareUpdateHandlerBase;

    return-void
.end method

.method static synthetic access$000(Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;)Lcom/zebra/sdk/printer/FirmwareUpdateHandlerBase;
    .locals 0

    iget-object p0, p0, Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;->handler:Lcom/zebra/sdk/printer/FirmwareUpdateHandlerBase;

    return-object p0
.end method


# virtual methods
.method public exceptionOccured()Z
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;->exceptionCaughtDuringRun:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getExceptionMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;->exceptionCaughtDuringRun:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;->zebraPrinterConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-static {v0}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->getInstance(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;->firmwareFilePath:Ljava/lang/String;

    new-instance v2, Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable$1;

    invoke-direct {v2, p0}, Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable$1;-><init>(Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;)V

    invoke-interface {v0, v1, v2}, Lcom/zebra/sdk/printer/ZebraPrinter;->sendFileContents(Ljava/lang/String;Lcom/zebra/sdk/device/ProgressMonitor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;->exceptionCaughtDuringRun:Ljava/lang/Exception;

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;->zebraPrinterConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;->zebraPrinterConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->close()V
    :try_end_1
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method
