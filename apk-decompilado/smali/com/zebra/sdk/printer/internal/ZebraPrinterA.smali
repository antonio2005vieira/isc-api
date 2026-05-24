.class public abstract Lcom/zebra/sdk/printer/internal/ZebraPrinterA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/ZebraPrinter;


# instance fields
.field protected connection:Lcom/zebra/sdk/comm/Connection;

.field protected fileUtil:Lcom/zebra/sdk/device/FileUtil;

.field protected formatUtil:Lcom/zebra/sdk/printer/FormatUtil;

.field protected graphicsUtil:Lcom/zebra/sdk/printer/GraphicsUtil;

.field protected toolsUtil:Lcom/zebra/sdk/printer/ToolsUtil;


# direct methods
.method protected constructor <init>(Lcom/zebra/sdk/comm/Connection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->connection:Lcom/zebra/sdk/comm/Connection;

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->fileUtil:Lcom/zebra/sdk/device/FileUtil;

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->formatUtil:Lcom/zebra/sdk/printer/FormatUtil;

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->graphicsUtil:Lcom/zebra/sdk/printer/GraphicsUtil;

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->toolsUtil:Lcom/zebra/sdk/printer/ToolsUtil;

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->connection:Lcom/zebra/sdk/comm/Connection;

    return-void
.end method


# virtual methods
.method public calibrate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->toolsUtil:Lcom/zebra/sdk/printer/ToolsUtil;

    invoke-interface {v0}, Lcom/zebra/sdk/printer/ToolsUtil;->calibrate()V

    return-void
.end method

.method public getConnection()Lcom/zebra/sdk/comm/Connection;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->connection:Lcom/zebra/sdk/comm/Connection;

    return-object v0
.end method

.method public getVariableFields(Ljava/lang/String;)[Lcom/zebra/sdk/printer/FieldDescriptionData;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->formatUtil:Lcom/zebra/sdk/printer/FormatUtil;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/printer/FormatUtil;->getVariableFields(Ljava/lang/String;)[Lcom/zebra/sdk/printer/FieldDescriptionData;

    move-result-object p1

    return-object p1
.end method

.method public printConfigurationLabel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->toolsUtil:Lcom/zebra/sdk/printer/ToolsUtil;

    invoke-interface {v0}, Lcom/zebra/sdk/printer/ToolsUtil;->printConfigurationLabel()V

    return-void
.end method

.method public printImage(Lcom/zebra/sdk/graphics/ZebraImageI;IIIIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->graphicsUtil:Lcom/zebra/sdk/printer/GraphicsUtil;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/zebra/sdk/printer/GraphicsUtil;->printImage(Lcom/zebra/sdk/graphics/ZebraImageI;IIIIZ)V

    return-void
.end method

.method public printImage(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->graphicsUtil:Lcom/zebra/sdk/printer/GraphicsUtil;

    invoke-interface {v0, p1, p2, p3}, Lcom/zebra/sdk/printer/GraphicsUtil;->printImage(Ljava/lang/String;II)V

    return-void
.end method

.method public printImage(Ljava/lang/String;IIIIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->graphicsUtil:Lcom/zebra/sdk/printer/GraphicsUtil;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/zebra/sdk/printer/GraphicsUtil;->printImage(Ljava/lang/String;IIIIZ)V

    return-void
.end method

.method public printStoredFormat(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->formatUtil:Lcom/zebra/sdk/printer/FormatUtil;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/printer/FormatUtil;->printStoredFormat(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public printStoredFormat(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->formatUtil:Lcom/zebra/sdk/printer/FormatUtil;

    invoke-interface {v0, p1, p2, p3}, Lcom/zebra/sdk/printer/FormatUtil;->printStoredFormat(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public printStoredFormat(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->formatUtil:Lcom/zebra/sdk/printer/FormatUtil;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/printer/FormatUtil;->printStoredFormat(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public printStoredFormat(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->formatUtil:Lcom/zebra/sdk/printer/FormatUtil;

    invoke-interface {v0, p1, p2, p3}, Lcom/zebra/sdk/printer/FormatUtil;->printStoredFormat(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->toolsUtil:Lcom/zebra/sdk/printer/ToolsUtil;

    invoke-interface {v0}, Lcom/zebra/sdk/printer/ToolsUtil;->reset()V

    return-void
.end method

.method public restoreDefaults()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->toolsUtil:Lcom/zebra/sdk/printer/ToolsUtil;

    invoke-interface {v0}, Lcom/zebra/sdk/printer/ToolsUtil;->restoreDefaults()V

    return-void
.end method

.method public retrieveFileNames()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->fileUtil:Lcom/zebra/sdk/device/FileUtil;

    invoke-interface {v0}, Lcom/zebra/sdk/device/FileUtil;->retrieveFileNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public retrieveFileNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->fileUtil:Lcom/zebra/sdk/device/FileUtil;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/device/FileUtil;->retrieveFileNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public retrieveFormatFromPrinter(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->formatUtil:Lcom/zebra/sdk/printer/FormatUtil;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/printer/FormatUtil;->retrieveFormatFromPrinter(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public retrieveFormatFromPrinter(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->formatUtil:Lcom/zebra/sdk/printer/FormatUtil;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/printer/FormatUtil;->retrieveFormatFromPrinter(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public retrieveObjectsProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterObjectProperties;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->fileUtil:Lcom/zebra/sdk/device/FileUtil;

    invoke-interface {v0}, Lcom/zebra/sdk/device/FileUtil;->retrieveObjectsProperties()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sendCommand(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->toolsUtil:Lcom/zebra/sdk/printer/ToolsUtil;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/printer/ToolsUtil;->sendCommand(Ljava/lang/String;)V

    return-void
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->toolsUtil:Lcom/zebra/sdk/printer/ToolsUtil;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/printer/ToolsUtil;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendFileContents(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->fileUtil:Lcom/zebra/sdk/device/FileUtil;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/device/FileUtil;->sendFileContents(Ljava/lang/String;)V

    return-void
.end method

.method public sendFileContents(Ljava/lang/String;Lcom/zebra/sdk/device/ProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->fileUtil:Lcom/zebra/sdk/device/FileUtil;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/device/FileUtil;->sendFileContents(Ljava/lang/String;Lcom/zebra/sdk/device/ProgressMonitor;)V

    return-void
.end method

.method public storeImage(Ljava/lang/String;Lcom/zebra/sdk/graphics/ZebraImageI;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->graphicsUtil:Lcom/zebra/sdk/printer/GraphicsUtil;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/zebra/sdk/printer/GraphicsUtil;->storeImage(Ljava/lang/String;Lcom/zebra/sdk/graphics/ZebraImageI;II)V

    return-void
.end method

.method public storeImage(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;->graphicsUtil:Lcom/zebra/sdk/printer/GraphicsUtil;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/zebra/sdk/printer/GraphicsUtil;->storeImage(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
