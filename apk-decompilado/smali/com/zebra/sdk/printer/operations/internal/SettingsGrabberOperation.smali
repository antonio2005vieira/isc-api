.class public Lcom/zebra/sdk/printer/operations/internal/SettingsGrabberOperation;
.super Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/zebra/sdk/settings/Setting;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7c92eb74b6f4046L


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    return-void
.end method

.method private isOkToProceed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/SettingsGrabberOperation;->isPrintingChannelInLineMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Cannot retrieve settings from printer over printing channel when in line mode"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/SettingsGrabberOperation;->execute()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public execute()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zebra/sdk/settings/Setting;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/SettingsGrabberOperation;->selectStatusChannelIfOpen()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/SettingsGrabberOperation;->isOkToProceed()V

    new-instance v0, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/SettingsGrabberOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->getAllSettings()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/settings/SettingsException;

    const-string v1, "Error Retrieving Settings or No Printer Connection"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/zebra/sdk/settings/SettingsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {v0}, Lcom/zebra/sdk/settings/SettingsException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
