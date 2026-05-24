.class public Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;
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

.method private static getPrintModeFromHs(C)Lcom/zebra/sdk/printer/ZplPrintMode;
    .locals 1

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x4b

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/zebra/sdk/printer/ZplPrintMode;->UNKNOWN:Lcom/zebra/sdk/printer/ZplPrintMode;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/zebra/sdk/printer/ZplPrintMode;->RFID:Lcom/zebra/sdk/printer/ZplPrintMode;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/zebra/sdk/printer/ZplPrintMode;->PARTIAL_CUTTER:Lcom/zebra/sdk/printer/ZplPrintMode;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/zebra/sdk/printer/ZplPrintMode;->LINERLESS_REWIND:Lcom/zebra/sdk/printer/ZplPrintMode;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/zebra/sdk/printer/ZplPrintMode;->LINERLESS_PEEL:Lcom/zebra/sdk/printer/ZplPrintMode;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/zebra/sdk/printer/ZplPrintMode;->DELAYED_CUT:Lcom/zebra/sdk/printer/ZplPrintMode;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/zebra/sdk/printer/ZplPrintMode;->APPLICATOR:Lcom/zebra/sdk/printer/ZplPrintMode;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/zebra/sdk/printer/ZplPrintMode;->CUTTER:Lcom/zebra/sdk/printer/ZplPrintMode;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/zebra/sdk/printer/ZplPrintMode;->TEAR_OFF:Lcom/zebra/sdk/printer/ZplPrintMode;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/zebra/sdk/printer/ZplPrintMode;->PEEL_OFF:Lcom/zebra/sdk/printer/ZplPrintMode;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/zebra/sdk/printer/ZplPrintMode;->REWIND:Lcom/zebra/sdk/printer/ZplPrintMode;

    return-object p0

    :cond_0
    sget-object p0, Lcom/zebra/sdk/printer/ZplPrintMode;->KIOSK:Lcom/zebra/sdk/printer/ZplPrintMode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x30
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
.method protected findStartOfHsResponse([B)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected getLineSeparatorChar()B
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected getPrinterStatus()[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;->getStatusInfoFromPrinter()[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Malformed status response - unable to determine printer status"

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;->findStartOfHsResponse([B)I

    move-result v5

    array-length v6, v0

    if-eq v5, v6, :cond_2

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;->getLineSeparatorChar()B

    move-result v5

    :goto_0
    array-length v6, v0

    if-ge v2, v6, :cond_3

    aget-byte v6, v0, v2

    if-ne v6, v5, :cond_0

    const/16 v6, 0x2c

    aput-byte v6, v0, v2

    :cond_0
    aget-byte v6, v0, v2

    const/16 v7, 0x1f

    if-le v6, v7, :cond_1

    aget-byte v6, v0, v2

    const/16 v7, 0x7f

    if-ge v6, v7, :cond_1

    aget-byte v6, v0, v2

    int-to-char v6, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-direct {v0, v4}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/zebra/sdk/util/internal/StringUtilities;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    const/16 v1, 0x19

    if-lt v0, v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-direct {v0, v4}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return-object v3
.end method

.method protected getStatusInfoFromPrinter()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;

    sget-object v1, Lcom/zebra/sdk/util/internal/ZPLUtilities;->PRINTER_STATUS:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v0, v1}, Lcom/zebra/sdk/comm/internal/PrinterCommand;->sendAndWaitForResponse(Lcom/zebra/sdk/comm/Connection;)[B

    move-result-object v0

    return-object v0
.end method

.method protected updateStatus()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;->getPrinterStatus()[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;->labelsRemainingInBatch:I

    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;->numberOfFormatsInReceiveBuffer:I

    const/4 v1, 0x7

    aget-object v1, v0, v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;->isPartialFormatInProgress:Z

    const/16 v1, 0xa

    aget-object v1, v0, v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;->isHeadCold:Z

    const/16 v1, 0xe

    aget-object v1, v0, v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;->isHeadOpen:Z

    const/16 v1, 0xb

    aget-object v1, v0, v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;->isHeadTooHot:Z

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;->isPaperOut:Z

    const/16 v1, 0xf

    aget-object v1, v0, v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;->isRibbonOut:Z

    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;->isReceiveBufferFull:Z

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;->isPaused:Z

    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;->labelLengthInDots:I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;->getPrintModeFromHs(C)Lcom/zebra/sdk/printer/ZplPrintMode;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/PrinterStatusZpl;->printMode:Lcom/zebra/sdk/printer/ZplPrintMode;

    return-void
.end method
