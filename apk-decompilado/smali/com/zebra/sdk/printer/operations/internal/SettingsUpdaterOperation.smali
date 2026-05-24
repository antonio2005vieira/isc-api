.class public Lcom/zebra/sdk/printer/operations/internal/SettingsUpdaterOperation;
.super Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7c92eb74b6f4046L


# instance fields
.field private settingsToSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;Ljava/util/Map;Lcom/zebra/sdk/printer/PrinterLanguage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zebra/sdk/comm/Connection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zebra/sdk/printer/PrinterLanguage;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    iput-object p2, p0, Lcom/zebra/sdk/printer/operations/internal/SettingsUpdaterOperation;->settingsToSet:Ljava/util/Map;

    return-void
.end method

.method private isOkToProceed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/SettingsUpdaterOperation;->isPrintingChannelInLineMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Cannot update settings over printing channel when in line mode"

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

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/SettingsUpdaterOperation;->execute()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public execute()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/SettingsUpdaterOperation;->selectStatusChannelIfOpen()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/SettingsUpdaterOperation;->isOkToProceed()V

    :try_start_0
    new-instance v0, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/SettingsUpdaterOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/SettingsUpdaterOperation;->settingsToSet:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->setSettings(Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/zebra/sdk/settings/SettingsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {v0}, Lcom/zebra/sdk/settings/SettingsException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public process()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/SettingsUpdaterOperation;->selectStatusChannelIfOpen()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/SettingsUpdaterOperation;->isOkToProceed()V

    :try_start_0
    new-instance v0, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/SettingsUpdaterOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/SettingsUpdaterOperation;->settingsToSet:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromConnection;->processSettingsViaMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Lcom/zebra/sdk/settings/SettingsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {v0}, Lcom/zebra/sdk/settings/SettingsException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
