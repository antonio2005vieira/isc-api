.class public Lcom/zebra/sdk/printer/internal/PrinterStatusCpcl;
.super Lcom/zebra/sdk/printer/PrinterStatus;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/PrinterStatus;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    return-void
.end method


# virtual methods
.method protected updateStatus()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;

    sget-object v1, Lcom/zebra/sdk/util/internal/CPCLUtilities;->PRINTER_STATUS:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusCpcl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v0, v1}, Lcom/zebra/sdk/comm/internal/PrinterCommand;->sendAndWaitForResponse(Lcom/zebra/sdk/comm/Connection;)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusCpcl;->labelsRemainingInBatch:I

    iput v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusCpcl;->numberOfFormatsInReceiveBuffer:I

    iput-boolean v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusCpcl;->isPartialFormatInProgress:Z

    iput-boolean v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusCpcl;->isHeadCold:Z

    aget-byte v3, v0, v1

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusCpcl;->isHeadOpen:Z

    iput-boolean v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusCpcl;->isHeadTooHot:Z

    aget-byte v0, v0, v1

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusCpcl;->isPaperOut:Z

    iput-boolean v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusCpcl;->isRibbonOut:Z

    iput-boolean v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusCpcl;->isReceiveBufferFull:Z

    iput-boolean v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusCpcl;->isPaused:Z

    iput v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusCpcl;->labelLengthInDots:I

    sget-object v0, Lcom/zebra/sdk/printer/ZplPrintMode;->UNKNOWN:Lcom/zebra/sdk/printer/ZplPrintMode;

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusCpcl;->printMode:Lcom/zebra/sdk/printer/ZplPrintMode;

    return-void

    :cond_2
    new-instance v1, Lcom/zebra/sdk/comm/ConnectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed status response - unable to determine printer status (received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
