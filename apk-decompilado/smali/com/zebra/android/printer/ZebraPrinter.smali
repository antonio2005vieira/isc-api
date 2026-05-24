.class public interface abstract Lcom/zebra/android/printer/ZebraPrinter;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getConvertedNewPrinter()Lcom/zebra/sdk/printer/ZebraPrinter;
.end method

.method public abstract getCurrentStatus()Lcom/zebra/android/printer/PrinterStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation
.end method

.method public abstract getFileUtil()Lcom/zebra/android/printer/FileUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation
.end method

.method public abstract getFormatUtil()Lcom/zebra/android/printer/FormatUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation
.end method

.method public abstract getGraphicsUtil()Lcom/zebra/android/printer/GraphicsUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation
.end method

.method public abstract getMagCardReader()Lcom/zebra/android/printer/MagCardReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation
.end method

.method public abstract getPrinterControlLanguage()Lcom/zebra/android/printer/PrinterLanguage;
.end method

.method public abstract getSmartcardReader()Lcom/zebra/android/printer/SmartcardReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation
.end method

.method public abstract getToolsUtil()Lcom/zebra/android/printer/ToolsUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation
.end method
