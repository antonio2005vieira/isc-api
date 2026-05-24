.class public Lcom/zebra/sdk/printer/operations/internal/NetworkConfigurationLabelPrinter;
.super Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x33b060d3c8da15fL


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V

    return-void
.end method

.method private isOkToProceed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/NetworkConfigurationLabelPrinter;->isLinkOs2_5_OrHigher()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/NetworkConfigurationLabelPrinter;->connection:Lcom/zebra/sdk/comm/Connection;

    instance-of v0, v0, Lcom/zebra/sdk/comm/StatusConnection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/NetworkConfigurationLabelPrinter;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Cannot print network config label over status channel on this version of firmware"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private printNetworkConfigLabel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/NetworkConfigurationLabelPrinter;->isLinkOs2_5_OrHigher()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/NetworkConfigurationLabelPrinter;->isPrintingChannelInLineMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/NetworkConfigurationLabelPrinter;->connection:Lcom/zebra/sdk/comm/Connection;

    const-string v1, "! U1 setvar \"device.print_out_report\" \"network\"\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;

    const-string v1, "{}{\"device.print_out_report\":\"network\"}"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/NetworkConfigurationLabelPrinter;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;->sendAndWaitForValidJsonResponse(Lcom/zebra/sdk/comm/Connection;)[B

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/zebra/sdk/printer/internal/ToolsUtilLinkOsHelper;

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/NetworkConfigurationLabelPrinter;->connection:Lcom/zebra/sdk/comm/Connection;

    iget-object v2, p0, Lcom/zebra/sdk/printer/operations/internal/NetworkConfigurationLabelPrinter;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/printer/internal/ToolsUtilLinkOsHelper;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/internal/ToolsUtilLinkOsHelper;->printNetworkConfigurationLabel()V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/NetworkConfigurationLabelPrinter;->execute()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public execute()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/NetworkConfigurationLabelPrinter;->selectProperChannel()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/NetworkConfigurationLabelPrinter;->isOkToProceed()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/NetworkConfigurationLabelPrinter;->printNetworkConfigLabel()V

    const/4 v0, 0x0

    return-object v0
.end method
