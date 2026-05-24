.class public Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;
.super Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase<",
        "Lcom/zebra/sdk/printer/PrinterStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1dc299962a736ceeL


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/zebra/sdk/printer/PrinterStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;->selectStatusChannelIfOpen()V

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;->isPrintingChannelInLineMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation$1;

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {v0, p0, v1}, Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation$1;-><init>(Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;Lcom/zebra/sdk/comm/Connection;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/printer/internal/PrinterStatusLinkOs;

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/printer/internal/PrinterStatusLinkOs;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;->execute()Lcom/zebra/sdk/printer/PrinterStatus;

    move-result-object v0

    return-object v0
.end method
