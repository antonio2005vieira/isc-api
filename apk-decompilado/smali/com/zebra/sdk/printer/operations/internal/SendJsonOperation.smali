.class public Lcom/zebra/sdk/printer/operations/internal/SendJsonOperation;
.super Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x330f7a38107dfL


# instance fields
.field jsonDataToSend:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    iput-object p3, p0, Lcom/zebra/sdk/printer/operations/internal/SendJsonOperation;->jsonDataToSend:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/SendJsonOperation;->execute()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execute()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/SendJsonOperation;->jsonDataToSend:Ljava/lang/String;

    invoke-static {v0}, Lcom/zebra/sdk/settings/internal/JsonHelper;->isValidJson(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/SendJsonOperation;->selectStatusChannelIfOpen()V

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/SendJsonOperation;->isPrintingChannelInLineMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/SendJsonOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    iget-object v2, p0, Lcom/zebra/sdk/printer/operations/internal/SendJsonOperation;->jsonDataToSend:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/zebra/sdk/printer/operations/internal/SendJsonOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v3}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v3

    iget-object v4, p0, Lcom/zebra/sdk/printer/operations/internal/SendJsonOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v4}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v4

    new-instance v5, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {v5}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Cannot send JSON over raw port when printer is in line print mode."

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Invalid JSON request."

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
