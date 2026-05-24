.class public Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;
.super Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xbe200001c14f78aL


# instance fields
.field private fileSize:I

.field private firmwareInputStream:Ljava/io/InputStream;

.field private handler:Lcom/zebra/sdk/printer/FirmwareUpdateHandlerBase;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;Ljava/io/InputStream;ILcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/FirmwareUpdateHandlerBase;)V
    .locals 0

    invoke-direct {p0, p1, p4}, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    iput-object p2, p0, Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;->firmwareInputStream:Ljava/io/InputStream;

    iput p3, p0, Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;->fileSize:I

    iput-object p5, p0, Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;->handler:Lcom/zebra/sdk/printer/FirmwareUpdateHandlerBase;

    return-void
.end method

.method static synthetic access$000(Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;)Lcom/zebra/sdk/printer/FirmwareUpdateHandlerBase;
    .locals 0

    iget-object p0, p0, Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;->handler:Lcom/zebra/sdk/printer/FirmwareUpdateHandlerBase;

    return-object p0
.end method

.method private isOkToProceed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    instance-of v0, v0, Lcom/zebra/sdk/comm/StatusConnection;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "The connection is not an open printing channel"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Cannot download firmware over status channel"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateFirmwareUnconditionallyNoReconnect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation$1;

    invoke-direct {v0, p0}, Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation$1;-><init>(Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;)V

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    iget-object v2, p0, Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;->firmwareInputStream:Ljava/io/InputStream;

    iget v3, p0, Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;->fileSize:I

    invoke-static {v1, v0, v2, v3}, Lcom/zebra/sdk/util/internal/FileUtilities;->sendFileContentsInChunks(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/device/ProgressMonitor;Ljava/io/InputStream;I)V

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;->handler:Lcom/zebra/sdk/printer/FirmwareUpdateHandlerBase;

    invoke-interface {v0}, Lcom/zebra/sdk/printer/FirmwareUpdateHandlerBase;->firmwareDownloadComplete()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->close()V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;->execute()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public execute()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;->selectProperChannel()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;->isOkToProceed()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;->updateFirmwareUnconditionallyNoReconnect()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected selectProperChannel()V
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    instance-of v0, v0, Lcom/zebra/sdk/comm/MultichannelConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    check-cast v0, Lcom/zebra/sdk/comm/MultichannelConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/MultichannelConnection;->getPrintingChannel()Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/DownloadFirmwarePrinterOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    :cond_0
    return-void
.end method
