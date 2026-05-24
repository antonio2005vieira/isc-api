.class public Lcom/zebra/android/printer/internal/SmartcardReaderLegacy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/android/printer/SmartcardReader;


# instance fields
.field private newTypeSmartcardReader:Lcom/zebra/sdk/device/SmartcardReader;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/printer/ZebraPrinter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/zebra/sdk/printer/ZebraPrinter;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v0

    sget-object v1, Lcom/zebra/sdk/printer/PrinterLanguage;->CPCL:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/zebra/sdk/printer/internal/SmartcardReaderImpl;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/internal/SmartcardReaderImpl;-><init>(Lcom/zebra/sdk/printer/ZebraPrinter;)V

    iput-object v0, p0, Lcom/zebra/android/printer/internal/SmartcardReaderLegacy;->newTypeSmartcardReader:Lcom/zebra/sdk/device/SmartcardReader;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/android/printer/internal/SmartcardReaderLegacy;->newTypeSmartcardReader:Lcom/zebra/sdk/device/SmartcardReader;

    invoke-interface {v0}, Lcom/zebra/sdk/device/SmartcardReader;->close()V
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

.method public doCommand(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/android/printer/internal/SmartcardReaderLegacy;->newTypeSmartcardReader:Lcom/zebra/sdk/device/SmartcardReader;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/device/SmartcardReader;->doCommand(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/android/comm/ZebraPrinterConnectionException;

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getATR()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/android/printer/internal/SmartcardReaderLegacy;->newTypeSmartcardReader:Lcom/zebra/sdk/device/SmartcardReader;

    invoke-interface {v0}, Lcom/zebra/sdk/device/SmartcardReader;->getATR()[B

    move-result-object v0
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/android/comm/ZebraPrinterConnectionException;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
