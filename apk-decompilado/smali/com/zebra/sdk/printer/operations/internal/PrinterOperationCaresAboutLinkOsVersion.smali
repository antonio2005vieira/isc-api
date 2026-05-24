.class public abstract Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion;
.super Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected linkOsInformation:Lcom/zebra/sdk/printer/LinkOsInformation;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    iput-object p3, p0, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion;->linkOsInformation:Lcom/zebra/sdk/printer/LinkOsInformation;

    return-void
.end method


# virtual methods
.method protected isLinkOs2_5_OrHigher()Z
    .locals 4

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion;->linkOsInformation:Lcom/zebra/sdk/printer/LinkOsInformation;

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/LinkOsInformation;->getMajor()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion;->linkOsInformation:Lcom/zebra/sdk/printer/LinkOsInformation;

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/LinkOsInformation;->getMinor()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion;->linkOsInformation:Lcom/zebra/sdk/printer/LinkOsInformation;

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/LinkOsInformation;->getMajor()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method protected selectProperChannel()V
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion;->connection:Lcom/zebra/sdk/comm/Connection;

    instance-of v0, v0, Lcom/zebra/sdk/comm/MultichannelConnection;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion;->isLinkOs2_5_OrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion;->selectStatusChannelIfOpen()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion;->connection:Lcom/zebra/sdk/comm/Connection;

    check-cast v0, Lcom/zebra/sdk/comm/MultichannelConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/MultichannelConnection;->getPrintingChannel()Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion;->connection:Lcom/zebra/sdk/comm/Connection;

    :cond_1
    :goto_0
    return-void
.end method
