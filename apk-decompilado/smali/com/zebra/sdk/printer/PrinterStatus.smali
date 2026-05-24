.class public abstract Lcom/zebra/sdk/printer/PrinterStatus;
.super Ljava/lang/Object;


# instance fields
.field public isHeadCold:Z

.field public isHeadOpen:Z

.field public isHeadTooHot:Z

.field public isPaperOut:Z

.field public isPartialFormatInProgress:Z

.field public isPaused:Z

.field public isReadyToPrint:Z

.field public isReceiveBufferFull:Z

.field public isRibbonOut:Z

.field public labelLengthInDots:I

.field public labelsRemainingInBatch:I

.field public numberOfFormatsInReceiveBuffer:I

.field public printMode:Lcom/zebra/sdk/printer/ZplPrintMode;

.field protected printerConnection:Lcom/zebra/sdk/comm/Connection;

.field private statusHasBeenRetrievedFromPrinter:Z


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zebra/sdk/printer/PrinterStatus;->statusHasBeenRetrievedFromPrinter:Z

    iput-object p1, p0, Lcom/zebra/sdk/printer/PrinterStatus;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    iput v0, p0, Lcom/zebra/sdk/printer/PrinterStatus;->numberOfFormatsInReceiveBuffer:I

    iput v0, p0, Lcom/zebra/sdk/printer/PrinterStatus;->labelsRemainingInBatch:I

    iput-boolean v0, p0, Lcom/zebra/sdk/printer/PrinterStatus;->isPartialFormatInProgress:Z

    iput-boolean v0, p0, Lcom/zebra/sdk/printer/PrinterStatus;->isHeadCold:Z

    sget-object p1, Lcom/zebra/sdk/printer/ZplPrintMode;->UNKNOWN:Lcom/zebra/sdk/printer/ZplPrintMode;

    iput-object p1, p0, Lcom/zebra/sdk/printer/PrinterStatus;->printMode:Lcom/zebra/sdk/printer/ZplPrintMode;

    iput v0, p0, Lcom/zebra/sdk/printer/PrinterStatus;->labelLengthInDots:I

    invoke-direct {p0}, Lcom/zebra/sdk/printer/PrinterStatus;->getStatusFromPrinter()V

    return-void
.end method

.method private getStatusFromPrinter()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/zebra/sdk/printer/PrinterStatus;->statusHasBeenRetrievedFromPrinter:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/PrinterStatus;->updateStatus()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zebra/sdk/printer/PrinterStatus;->statusHasBeenRetrievedFromPrinter:Z

    iget-boolean v1, p0, Lcom/zebra/sdk/printer/PrinterStatus;->isPaperOut:Z

    xor-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/zebra/sdk/printer/PrinterStatus;->isReadyToPrint:Z

    iget-boolean v2, p0, Lcom/zebra/sdk/printer/PrinterStatus;->isPaused:Z

    xor-int/2addr v2, v0

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/zebra/sdk/printer/PrinterStatus;->isReadyToPrint:Z

    iget-boolean v2, p0, Lcom/zebra/sdk/printer/PrinterStatus;->isReceiveBufferFull:Z

    xor-int/2addr v2, v0

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/zebra/sdk/printer/PrinterStatus;->isReadyToPrint:Z

    iget-boolean v2, p0, Lcom/zebra/sdk/printer/PrinterStatus;->isHeadTooHot:Z

    xor-int/2addr v2, v0

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/zebra/sdk/printer/PrinterStatus;->isReadyToPrint:Z

    iget-boolean v2, p0, Lcom/zebra/sdk/printer/PrinterStatus;->isHeadOpen:Z

    xor-int/2addr v2, v0

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/zebra/sdk/printer/PrinterStatus;->isReadyToPrint:Z

    iget-boolean v2, p0, Lcom/zebra/sdk/printer/PrinterStatus;->isRibbonOut:Z

    xor-int/2addr v0, v2

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/zebra/sdk/printer/PrinterStatus;->isReadyToPrint:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract updateStatus()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method
