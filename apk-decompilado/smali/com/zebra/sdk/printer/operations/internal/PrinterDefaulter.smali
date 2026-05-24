.class public Lcom/zebra/sdk/printer/operations/internal/PrinterDefaulter;
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
.field private static final serialVersionUID:J = -0x16ea04e7dd8e20daL


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    return-void
.end method

.method private defaultPrinter()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/PrinterDefaulter;->isPrintingChannelInLineMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/PrinterDefaulter;->connection:Lcom/zebra/sdk/comm/Connection;

    const-string v1, "ezpl.restore_defaults"

    const-string v2, "reload printer"

    invoke-static {v1, v2, v0}, Lcom/zebra/sdk/printer/SGD;->SET(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;

    const-string v1, "{}{\"ezpl.restore_defaults\":\"reload printer\"}"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/PrinterDefaulter;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;->sendAndWaitForValidJsonResponse(Lcom/zebra/sdk/comm/Connection;)[B

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

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/PrinterDefaulter;->execute()Ljava/lang/Void;

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

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/PrinterDefaulter;->selectStatusChannelIfOpen()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/PrinterDefaulter;->defaultPrinter()V

    const/4 v0, 0x0

    return-object v0
.end method
