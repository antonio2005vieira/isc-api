.class public interface abstract Lcom/zebra/sdk/comm/Connection;
.super Ljava/lang/Object;


# virtual methods
.method public abstract bytesAvailable()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract getConnectionReestablisher(J)Lcom/zebra/sdk/comm/ConnectionReestablisher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract getMaxTimeoutForRead()I
.end method

.method public abstract getSimpleConnectionName()Ljava/lang/String;
.end method

.method public abstract getTimeToWaitForMoreData()I
.end method

.method public abstract isConnected()Z
.end method

.method public abstract open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract read(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract read()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract readChar()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract sendAndWaitForResponse(Ljava/io/OutputStream;Ljava/io/InputStream;IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract sendAndWaitForResponse([BIILjava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract sendAndWaitForValidResponse(Ljava/io/OutputStream;Ljava/io/InputStream;IILcom/zebra/sdk/comm/ResponseValidator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract setMaxTimeoutForRead(I)V
.end method

.method public abstract setTimeToWaitForMoreData(I)V
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract waitForData(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract write(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract write([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract write([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method
