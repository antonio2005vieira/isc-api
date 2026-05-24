.class public Lcom/zebra/sdk/printer/internal/ToolsUtilZpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/ToolsUtil;


# instance fields
.field protected connection:Lcom/zebra/sdk/comm/Connection;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ToolsUtilZpl;->connection:Lcom/zebra/sdk/comm/Connection;

    return-void
.end method


# virtual methods
.method public calibrate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ToolsUtilZpl;->connection:Lcom/zebra/sdk/comm/Connection;

    sget-object v1, Lcom/zebra/sdk/util/internal/ZPLUtilities;->PRINTER_CALIBRATE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    return-void
.end method

.method public printConfigurationLabel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ToolsUtilZpl;->connection:Lcom/zebra/sdk/comm/Connection;

    sget-object v1, Lcom/zebra/sdk/util/internal/ZPLUtilities;->PRINTER_CONFIG_LABEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    return-void
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ToolsUtilZpl;->connection:Lcom/zebra/sdk/comm/Connection;

    sget-object v1, Lcom/zebra/sdk/util/internal/ZPLUtilities;->PRINTER_RESET:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    return-void
.end method

.method public restoreDefaults()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ToolsUtilZpl;->connection:Lcom/zebra/sdk/comm/Connection;

    sget-object v1, Lcom/zebra/sdk/util/internal/ZPLUtilities;->PRINTER_RESTORE_DEFAULTS:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    return-void
.end method

.method public sendCommand(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ToolsUtilZpl;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    :cond_0
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

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ToolsUtilZpl;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    :cond_0
    return-void
.end method
