.class public abstract Lcom/zebra/sdk/comm/MultichannelConnection;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;


# instance fields
.field protected raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

.field protected settings:Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private throwIfOnlyStatusOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->settings:Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Operation cannot be performed with only the status channel open"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addWriteLogStream(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->addWriteLogStream(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->settings:Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;->addWriteLogStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public bytesAvailable()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->bytesAvailable()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->close()V

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->settings:Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;->close()V

    return-void
.end method

.method public closePrintingChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->close()V

    return-void
.end method

.method public closeStatusChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->settings:Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;->close()V

    return-void
.end method

.method public getConnectionReestablisher(J)Lcom/zebra/sdk/comm/ConnectionReestablisher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->getConnectionReestablisher(J)Lcom/zebra/sdk/comm/ConnectionReestablisher;

    move-result-object p1

    return-object p1
.end method

.method public getMaxTimeoutForRead()I
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->getMaxTimeoutForRead()I

    move-result v0

    return v0
.end method

.method public getPrintingChannel()Lcom/zebra/sdk/comm/Connection;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    return-object v0
.end method

.method public getStatusChannel()Lcom/zebra/sdk/comm/StatusConnection;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->settings:Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;

    return-object v0
.end method

.method public getTimeToWaitForMoreData()I
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->getTimeToWaitForMoreData()I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->settings:Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/MultichannelConnection;->openPrintingChannel()V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/MultichannelConnection;->openStatusChannel()V
    :try_end_1
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Could not open connection"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openPrintingChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->open()V

    return-void
.end method

.method public openStatusChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->settings:Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;->open()V

    return-void
.end method

.method public read(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->read(Ljava/io/OutputStream;)V

    return-void
.end method

.method public read()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->read()[B

    move-result-object v0

    return-object v0
.end method

.method public readChar()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->readChar()I

    move-result v0

    return v0
.end method

.method public sendAndWaitForResponse(Ljava/io/OutputStream;Ljava/io/InputStream;IILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/comm/MultichannelConnection;->throwIfOnlyStatusOpen()V

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->sendAndWaitForResponse(Ljava/io/OutputStream;Ljava/io/InputStream;IILjava/lang/String;)V

    return-void
.end method

.method public sendAndWaitForResponse([BIILjava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/comm/MultichannelConnection;->throwIfOnlyStatusOpen()V

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->sendAndWaitForResponse([BIILjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public sendAndWaitForValidResponse(Ljava/io/OutputStream;Ljava/io/InputStream;IILcom/zebra/sdk/comm/ResponseValidator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/comm/MultichannelConnection;->throwIfOnlyStatusOpen()V

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->sendAndWaitForValidResponse(Ljava/io/OutputStream;Ljava/io/InputStream;IILcom/zebra/sdk/comm/ResponseValidator;)V

    return-void
.end method

.method public sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/comm/MultichannelConnection;->throwIfOnlyStatusOpen()V

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    move-result-object p1

    return-object p1
.end method

.method public setMaxTimeoutForRead(I)V
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->setMaxTimeoutForRead(I)V

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->settings:Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;->setMaxTimeoutForRead(I)V

    return-void
.end method

.method public setTimeToWaitForMoreData(I)V
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->setTimeToWaitForMoreData(I)V

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->settings:Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;->setTimeToWaitForMoreData(I)V

    return-void
.end method

.method public waitForData(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->waitForData(I)V

    return-void
.end method

.method public write(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/comm/MultichannelConnection;->throwIfOnlyStatusOpen()V

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->write(Ljava/io/InputStream;)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/comm/MultichannelConnection;->throwIfOnlyStatusOpen()V

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/comm/MultichannelConnection;->throwIfOnlyStatusOpen()V

    iget-object v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;->raw:Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;

    invoke-interface {v0, p1, p2, p3}, Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;->write([BII)V

    return-void
.end method
