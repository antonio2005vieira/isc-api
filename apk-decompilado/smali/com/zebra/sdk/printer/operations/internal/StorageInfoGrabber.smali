.class public Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;
.super Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion<",
        "Ljava/util/List<",
        "Lcom/zebra/sdk/printer/StorageInfo;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V

    return-void
.end method

.method private getStorageInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/StorageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/internal/FileUtilZpl;

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;->isLinkOs2_5_OrHigher()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;->isPrintingChannelInLineMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->getStorageInfoViaSgd()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->getStorageInfoViaJsonChannel()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->getStorageInfo()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private isOkToProceed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;->isLinkOs2_5_OrHigher()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;->connection:Lcom/zebra/sdk/comm/Connection;

    instance-of v0, v0, Lcom/zebra/sdk/comm/StatusConnection;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    sget-object v1, Lcom/zebra/sdk/printer/PrinterLanguage;->LINE_PRINT:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Cannot retrieve storage info when there is no valid connection"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Cannot retrieve storage info when in line print mode on this version of firmware"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Cannot retrieve storage info over the status channel on this version of firmware"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
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

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/StorageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;->selectProperChannel()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;->isOkToProceed()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;->getStorageInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected selectProperChannel()V
    .locals 1

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;->isLinkOs2_5_OrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;->selectStatusChannelIfOpen()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;->connection:Lcom/zebra/sdk/comm/Connection;

    instance-of v0, v0, Lcom/zebra/sdk/comm/MultichannelConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;->connection:Lcom/zebra/sdk/comm/Connection;

    check-cast v0, Lcom/zebra/sdk/comm/MultichannelConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/MultichannelConnection;->getPrintingChannel()Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;->connection:Lcom/zebra/sdk/comm/Connection;

    :cond_1
    :goto_0
    return-void
.end method
