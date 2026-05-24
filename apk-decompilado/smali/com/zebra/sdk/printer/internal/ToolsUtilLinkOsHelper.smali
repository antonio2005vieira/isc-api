.class public Lcom/zebra/sdk/printer/internal/ToolsUtilLinkOsHelper;
.super Ljava/lang/Object;


# instance fields
.field connection:Lcom/zebra/sdk/comm/Connection;

.field printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ToolsUtilLinkOsHelper;->connection:Lcom/zebra/sdk/comm/Connection;

    iput-object p2, p0, Lcom/zebra/sdk/printer/internal/ToolsUtilLinkOsHelper;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    return-void
.end method


# virtual methods
.method public printDirectoryLabel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ToolsUtilLinkOsHelper;->connection:Lcom/zebra/sdk/comm/Connection;

    sget-object v1, Lcom/zebra/sdk/util/internal/ZPLUtilities;->PRINTER_DIRECTORY_LABEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    return-void
.end method

.method public printNetworkConfigurationLabel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ToolsUtilLinkOsHelper;->connection:Lcom/zebra/sdk/comm/Connection;

    sget-object v1, Lcom/zebra/sdk/util/internal/ZPLUtilities;->PRINTER_NETWORK_CONFIG_LABEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    return-void
.end method

.method public setClock(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;

    iget-object v1, p0, Lcom/zebra/sdk/printer/internal/ToolsUtilLinkOsHelper;->connection:Lcom/zebra/sdk/comm/Connection;

    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/ToolsUtilLinkOsHelper;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-direct {v0, p1, v1, v2}, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;-><init>(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->execute()Ljava/lang/Void;

    return-void
.end method
