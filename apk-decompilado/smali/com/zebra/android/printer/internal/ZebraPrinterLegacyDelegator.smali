.class public Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/android/printer/ZebraPrinter;


# instance fields
.field private fileUtilLegacy:Lcom/zebra/android/printer/FileUtil;

.field private formatUtilLegacy:Lcom/zebra/android/printer/FormatUtil;

.field private graphicsUtilLegacy:Lcom/zebra/android/printer/GraphicsUtil;

.field private magCardReader:Lcom/zebra/android/printer/MagCardReader;

.field private newPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

.field private printerControlLanguage:Lcom/zebra/android/printer/PrinterLanguage;

.field private smartcardReader:Lcom/zebra/android/printer/SmartcardReader;

.field private toolsUtil:Lcom/zebra/android/printer/ToolsUtil;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/printer/ZebraPrinter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->newPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    new-instance p1, Lcom/zebra/android/printer/internal/FileUtilLegacy;

    iget-object v0, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->newPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-direct {p1, v0}, Lcom/zebra/android/printer/internal/FileUtilLegacy;-><init>(Lcom/zebra/sdk/printer/ZebraPrinter;)V

    iput-object p1, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->fileUtilLegacy:Lcom/zebra/android/printer/FileUtil;

    new-instance p1, Lcom/zebra/android/printer/internal/FormatUtilLegacy;

    iget-object v0, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->newPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-direct {p1, v0}, Lcom/zebra/android/printer/internal/FormatUtilLegacy;-><init>(Lcom/zebra/sdk/printer/ZebraPrinter;)V

    iput-object p1, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->formatUtilLegacy:Lcom/zebra/android/printer/FormatUtil;

    new-instance p1, Lcom/zebra/android/printer/internal/GraphicsUtilLegacy;

    iget-object v0, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->newPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-direct {p1, v0}, Lcom/zebra/android/printer/internal/GraphicsUtilLegacy;-><init>(Lcom/zebra/sdk/printer/ZebraPrinter;)V

    iput-object p1, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->graphicsUtilLegacy:Lcom/zebra/android/printer/GraphicsUtil;

    new-instance p1, Lcom/zebra/android/printer/internal/ToolsUtilLegacy;

    iget-object v0, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->newPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-direct {p1, v0}, Lcom/zebra/android/printer/internal/ToolsUtilLegacy;-><init>(Lcom/zebra/sdk/printer/ZebraPrinter;)V

    iput-object p1, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->toolsUtil:Lcom/zebra/android/printer/ToolsUtil;

    iget-object p1, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->newPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-interface {p1}, Lcom/zebra/sdk/printer/ZebraPrinter;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object p1

    sget-object v0, Lcom/zebra/sdk/printer/PrinterLanguage;->ZPL:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->magCardReader:Lcom/zebra/android/printer/MagCardReader;

    iput-object p1, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->smartcardReader:Lcom/zebra/android/printer/SmartcardReader;

    sget-object p1, Lcom/zebra/android/printer/PrinterLanguage;->ZPL:Lcom/zebra/android/printer/PrinterLanguage;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/zebra/android/printer/internal/MagCardReaderLegacy;

    iget-object v0, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->newPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-direct {p1, v0}, Lcom/zebra/android/printer/internal/MagCardReaderLegacy;-><init>(Lcom/zebra/sdk/printer/ZebraPrinter;)V

    iput-object p1, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->magCardReader:Lcom/zebra/android/printer/MagCardReader;

    new-instance p1, Lcom/zebra/android/printer/internal/SmartcardReaderLegacy;

    iget-object v0, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->newPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-direct {p1, v0}, Lcom/zebra/android/printer/internal/SmartcardReaderLegacy;-><init>(Lcom/zebra/sdk/printer/ZebraPrinter;)V

    iput-object p1, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->smartcardReader:Lcom/zebra/android/printer/SmartcardReader;

    sget-object p1, Lcom/zebra/android/printer/PrinterLanguage;->CPCL:Lcom/zebra/android/printer/PrinterLanguage;

    :goto_0
    iput-object p1, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->printerControlLanguage:Lcom/zebra/android/printer/PrinterLanguage;

    return-void
.end method


# virtual methods
.method public getConvertedNewPrinter()Lcom/zebra/sdk/printer/ZebraPrinter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentStatus()Lcom/zebra/android/printer/PrinterStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/android/printer/internal/PrinterStatusLegacy;

    invoke-direct {v0}, Lcom/zebra/android/printer/internal/PrinterStatusLegacy;-><init>()V

    iget-object v1, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->newPrinter:Lcom/zebra/sdk/printer/ZebraPrinter;

    invoke-virtual {v0, v1}, Lcom/zebra/android/printer/internal/PrinterStatusLegacy;->getOldStatus(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/android/printer/PrinterStatus;

    move-result-object v0

    return-object v0
.end method

.method public getFileUtil()Lcom/zebra/android/printer/FileUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->fileUtilLegacy:Lcom/zebra/android/printer/FileUtil;

    return-object v0
.end method

.method public getFormatUtil()Lcom/zebra/android/printer/FormatUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->formatUtilLegacy:Lcom/zebra/android/printer/FormatUtil;

    return-object v0
.end method

.method public getGraphicsUtil()Lcom/zebra/android/printer/GraphicsUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->graphicsUtilLegacy:Lcom/zebra/android/printer/GraphicsUtil;

    return-object v0
.end method

.method public getMagCardReader()Lcom/zebra/android/printer/MagCardReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->magCardReader:Lcom/zebra/android/printer/MagCardReader;

    return-object v0
.end method

.method public getPrinterControlLanguage()Lcom/zebra/android/printer/PrinterLanguage;
    .locals 1

    iget-object v0, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->printerControlLanguage:Lcom/zebra/android/printer/PrinterLanguage;

    return-object v0
.end method

.method public getSmartcardReader()Lcom/zebra/android/printer/SmartcardReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->smartcardReader:Lcom/zebra/android/printer/SmartcardReader;

    return-object v0
.end method

.method public getToolsUtil()Lcom/zebra/android/printer/ToolsUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;->toolsUtil:Lcom/zebra/android/printer/ToolsUtil;

    return-object v0
.end method
