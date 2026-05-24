.class public abstract Lcom/zebra/android/printer/PrinterStatus;
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

.field public printMode:Lcom/zebra/android/printer/ZplPrintMode;


# direct methods
.method public constructor <init>(Lcom/zebra/android/comm/ZebraPrinterConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/zebra/android/printer/PrinterStatus;->numberOfFormatsInReceiveBuffer:I

    iput p1, p0, Lcom/zebra/android/printer/PrinterStatus;->labelsRemainingInBatch:I

    iput-boolean p1, p0, Lcom/zebra/android/printer/PrinterStatus;->isPartialFormatInProgress:Z

    iput-boolean p1, p0, Lcom/zebra/android/printer/PrinterStatus;->isHeadCold:Z

    sget-object v0, Lcom/zebra/android/printer/ZplPrintMode;->UNKNOWN:Lcom/zebra/android/printer/ZplPrintMode;

    iput-object v0, p0, Lcom/zebra/android/printer/PrinterStatus;->printMode:Lcom/zebra/android/printer/ZplPrintMode;

    iput p1, p0, Lcom/zebra/android/printer/PrinterStatus;->labelLengthInDots:I

    return-void
.end method

.method private convertToOldPrintMode(Lcom/zebra/sdk/printer/ZplPrintMode;)Lcom/zebra/android/printer/ZplPrintMode;
    .locals 1

    sget-object v0, Lcom/zebra/android/printer/ZplPrintMode;->UNKNOWN:Lcom/zebra/android/printer/ZplPrintMode;

    sget-object v0, Lcom/zebra/android/printer/PrinterStatus$1;->$SwitchMap$com$zebra$sdk$printer$ZplPrintMode:[I

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/ZplPrintMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/zebra/android/printer/ZplPrintMode;->UNKNOWN:Lcom/zebra/android/printer/ZplPrintMode;

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/zebra/android/printer/ZplPrintMode;->KIOSK:Lcom/zebra/android/printer/ZplPrintMode;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/zebra/android/printer/ZplPrintMode;->RFID:Lcom/zebra/android/printer/ZplPrintMode;

    goto :goto_0

    :pswitch_2
    sget-object p1, Lcom/zebra/android/printer/ZplPrintMode;->PARTIAL_CUTTER:Lcom/zebra/android/printer/ZplPrintMode;

    goto :goto_0

    :pswitch_3
    sget-object p1, Lcom/zebra/android/printer/ZplPrintMode;->LINERLESS_REWIND:Lcom/zebra/android/printer/ZplPrintMode;

    goto :goto_0

    :pswitch_4
    sget-object p1, Lcom/zebra/android/printer/ZplPrintMode;->LINERLESS_PEEL:Lcom/zebra/android/printer/ZplPrintMode;

    goto :goto_0

    :pswitch_5
    sget-object p1, Lcom/zebra/android/printer/ZplPrintMode;->DELAYED_CUT:Lcom/zebra/android/printer/ZplPrintMode;

    goto :goto_0

    :pswitch_6
    sget-object p1, Lcom/zebra/android/printer/ZplPrintMode;->APPLICATOR:Lcom/zebra/android/printer/ZplPrintMode;

    goto :goto_0

    :pswitch_7
    sget-object p1, Lcom/zebra/android/printer/ZplPrintMode;->CUTTER:Lcom/zebra/android/printer/ZplPrintMode;

    goto :goto_0

    :pswitch_8
    sget-object p1, Lcom/zebra/android/printer/ZplPrintMode;->TEAR_OFF:Lcom/zebra/android/printer/ZplPrintMode;

    goto :goto_0

    :pswitch_9
    sget-object p1, Lcom/zebra/android/printer/ZplPrintMode;->PEEL_OFF:Lcom/zebra/android/printer/ZplPrintMode;

    goto :goto_0

    :pswitch_a
    sget-object p1, Lcom/zebra/android/printer/ZplPrintMode;->REWIND:Lcom/zebra/android/printer/ZplPrintMode;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected convertStatuses(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/android/printer/PrinterStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lcom/zebra/sdk/printer/ZebraPrinter;->getCurrentStatus()Lcom/zebra/sdk/printer/PrinterStatus;

    move-result-object p1

    iget-object v0, p1, Lcom/zebra/sdk/printer/PrinterStatus;->printMode:Lcom/zebra/sdk/printer/ZplPrintMode;

    invoke-direct {p0, v0}, Lcom/zebra/android/printer/PrinterStatus;->convertToOldPrintMode(Lcom/zebra/sdk/printer/ZplPrintMode;)Lcom/zebra/android/printer/ZplPrintMode;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/android/printer/PrinterStatus;->printMode:Lcom/zebra/android/printer/ZplPrintMode;

    iget v0, p1, Lcom/zebra/sdk/printer/PrinterStatus;->labelLengthInDots:I

    iput v0, p0, Lcom/zebra/android/printer/PrinterStatus;->labelLengthInDots:I

    iget v0, p1, Lcom/zebra/sdk/printer/PrinterStatus;->numberOfFormatsInReceiveBuffer:I

    iput v0, p0, Lcom/zebra/android/printer/PrinterStatus;->numberOfFormatsInReceiveBuffer:I

    iget v0, p1, Lcom/zebra/sdk/printer/PrinterStatus;->labelsRemainingInBatch:I

    iput v0, p0, Lcom/zebra/android/printer/PrinterStatus;->labelsRemainingInBatch:I

    iget-boolean v0, p1, Lcom/zebra/sdk/printer/PrinterStatus;->isPartialFormatInProgress:Z

    iput-boolean v0, p0, Lcom/zebra/android/printer/PrinterStatus;->isPartialFormatInProgress:Z

    iget-boolean v0, p1, Lcom/zebra/sdk/printer/PrinterStatus;->isHeadCold:Z

    iput-boolean v0, p0, Lcom/zebra/android/printer/PrinterStatus;->isHeadCold:Z

    iget-boolean v0, p1, Lcom/zebra/sdk/printer/PrinterStatus;->isHeadOpen:Z

    iput-boolean v0, p0, Lcom/zebra/android/printer/PrinterStatus;->isHeadOpen:Z

    iget-boolean v0, p1, Lcom/zebra/sdk/printer/PrinterStatus;->isHeadTooHot:Z

    iput-boolean v0, p0, Lcom/zebra/android/printer/PrinterStatus;->isHeadTooHot:Z

    iget-boolean v0, p1, Lcom/zebra/sdk/printer/PrinterStatus;->isPaperOut:Z

    iput-boolean v0, p0, Lcom/zebra/android/printer/PrinterStatus;->isPaperOut:Z

    iget-boolean v0, p1, Lcom/zebra/sdk/printer/PrinterStatus;->isRibbonOut:Z

    iput-boolean v0, p0, Lcom/zebra/android/printer/PrinterStatus;->isRibbonOut:Z

    iget-boolean v0, p1, Lcom/zebra/sdk/printer/PrinterStatus;->isReceiveBufferFull:Z

    iput-boolean v0, p0, Lcom/zebra/android/printer/PrinterStatus;->isReceiveBufferFull:Z

    iget-boolean v0, p1, Lcom/zebra/sdk/printer/PrinterStatus;->isPaused:Z

    iput-boolean v0, p0, Lcom/zebra/android/printer/PrinterStatus;->isPaused:Z

    iget-boolean p1, p1, Lcom/zebra/sdk/printer/PrinterStatus;->isReadyToPrint:Z

    iput-boolean p1, p0, Lcom/zebra/android/printer/PrinterStatus;->isReadyToPrint:Z
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/android/comm/ZebraPrinterConnectionException;

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
