.class public abstract Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/operations/internal/PrinterOperation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/zebra/sdk/printer/operations/internal/PrinterOperation<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected connection:Lcom/zebra/sdk/comm/Connection;

.field protected printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;->connection:Lcom/zebra/sdk/comm/Connection;

    iput-object p2, p0, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    return-void
.end method


# virtual methods
.method protected isPrintingChannelInLineMode()Z
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;->connection:Lcom/zebra/sdk/comm/Connection;

    instance-of v0, v0, Lcom/zebra/sdk/comm/StatusConnection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    sget-object v1, Lcom/zebra/sdk/printer/PrinterLanguage;->LINE_PRINT:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected selectStatusChannelIfOpen()V
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;->connection:Lcom/zebra/sdk/comm/Connection;

    instance-of v1, v0, Lcom/zebra/sdk/comm/MultichannelConnection;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/zebra/sdk/comm/MultichannelConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/MultichannelConnection;->getStatusChannel()Lcom/zebra/sdk/comm/StatusConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/zebra/sdk/comm/StatusConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/MultichannelConnection;->getStatusChannel()Lcom/zebra/sdk/comm/StatusConnection;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/zebra/sdk/comm/MultichannelConnection;->getPrintingChannel()Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;->connection:Lcom/zebra/sdk/comm/Connection;

    :cond_1
    return-void
.end method
