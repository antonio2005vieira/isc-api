.class public Lcom/zebra/android/printer/internal/MagCardReaderLegacy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/android/printer/MagCardReader;


# instance fields
.field private newTypeMagCardReader:Lcom/zebra/sdk/device/MagCardReader;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/printer/ZebraPrinter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/zebra/sdk/printer/ZebraPrinter;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v0

    sget-object v1, Lcom/zebra/sdk/printer/PrinterLanguage;->CPCL:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/zebra/sdk/printer/internal/MagCardReaderImpl;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/internal/MagCardReaderImpl;-><init>(Lcom/zebra/sdk/printer/ZebraPrinter;)V

    iput-object v0, p0, Lcom/zebra/android/printer/internal/MagCardReaderLegacy;->newTypeMagCardReader:Lcom/zebra/sdk/device/MagCardReader;

    :cond_0
    return-void
.end method


# virtual methods
.method public read(I)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/android/printer/internal/MagCardReaderLegacy;->newTypeMagCardReader:Lcom/zebra/sdk/device/MagCardReader;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/device/MagCardReader;->read(I)[Ljava/lang/String;

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
