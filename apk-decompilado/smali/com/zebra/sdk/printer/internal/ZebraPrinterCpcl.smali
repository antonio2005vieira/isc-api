.class public Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;
.super Lcom/zebra/sdk/printer/internal/ZebraPrinterA;


# instance fields
.field private language:Lcom/zebra/sdk/printer/PrinterLanguage;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterA;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iput-object p2, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;->language:Lcom/zebra/sdk/printer/PrinterLanguage;

    new-instance p2, Lcom/zebra/sdk/printer/internal/FileUtilCpcl;

    invoke-direct {p2, p1}, Lcom/zebra/sdk/printer/internal/FileUtilCpcl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iput-object p2, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;->fileUtil:Lcom/zebra/sdk/device/FileUtil;

    new-instance p2, Lcom/zebra/sdk/printer/internal/FormatUtilCpcl;

    invoke-direct {p2, p1}, Lcom/zebra/sdk/printer/internal/FormatUtilCpcl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iput-object p2, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;->formatUtil:Lcom/zebra/sdk/printer/FormatUtil;

    new-instance p2, Lcom/zebra/sdk/printer/internal/GraphicsUtilCpcl;

    invoke-direct {p2, p1}, Lcom/zebra/sdk/printer/internal/GraphicsUtilCpcl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iput-object p2, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;->graphicsUtil:Lcom/zebra/sdk/printer/GraphicsUtil;

    new-instance p2, Lcom/zebra/sdk/printer/internal/ToolsUtilCpcl;

    invoke-direct {p2, p1}, Lcom/zebra/sdk/printer/internal/ToolsUtilCpcl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iput-object p2, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;->toolsUtil:Lcom/zebra/sdk/printer/ToolsUtil;

    return-void
.end method


# virtual methods
.method public getCurrentStatus()Lcom/zebra/sdk/printer/PrinterStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/internal/PrinterStatusCpcl;

    iget-object v1, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/printer/internal/PrinterStatusCpcl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    return-object v0
.end method

.method public getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;->language:Lcom/zebra/sdk/printer/PrinterLanguage;

    return-object v0
.end method

.method public setConnection(Lcom/zebra/sdk/comm/Connection;)V
    .locals 1

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;->connection:Lcom/zebra/sdk/comm/Connection;

    new-instance p1, Lcom/zebra/sdk/printer/internal/FileUtilCpcl;

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {p1, v0}, Lcom/zebra/sdk/printer/internal/FileUtilCpcl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;->fileUtil:Lcom/zebra/sdk/device/FileUtil;

    new-instance p1, Lcom/zebra/sdk/printer/internal/FormatUtilCpcl;

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {p1, v0}, Lcom/zebra/sdk/printer/internal/FormatUtilCpcl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;->formatUtil:Lcom/zebra/sdk/printer/FormatUtil;

    new-instance p1, Lcom/zebra/sdk/printer/internal/GraphicsUtilCpcl;

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {p1, v0}, Lcom/zebra/sdk/printer/internal/GraphicsUtilCpcl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;->graphicsUtil:Lcom/zebra/sdk/printer/GraphicsUtil;

    new-instance p1, Lcom/zebra/sdk/printer/internal/ToolsUtilCpcl;

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {p1, v0}, Lcom/zebra/sdk/printer/internal/ToolsUtilCpcl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;->toolsUtil:Lcom/zebra/sdk/printer/ToolsUtil;

    return-void
.end method
