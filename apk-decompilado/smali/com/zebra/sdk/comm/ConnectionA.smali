.class public abstract Lcom/zebra/sdk/comm/ConnectionA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;


# static fields
.field protected static final DEFAULT_MAX_TIMEOUT_FOR_READ:I = 0x1388

.field protected static final DEFAULT_TIME_TO_WAIT_FOR_MORE_DATA:I = 0x1f4

.field private static SIZE_OF_STREAM_BUFFERS:I = 0x4000


# instance fields
.field private MAX_DATA_TO_WRITE_TO_STREAM_AT_ONCE:I

.field protected commLink:Lcom/zebra/sdk/comm/internal/ZebraSocket;

.field protected inputStream:Ljava/io/InputStream;

.field protected isConnected:Z

.field protected maxTimeoutForRead:I

.field protected myWriteLogStream:Ljava/io/OutputStream;

.field protected outputStream:Ljava/io/OutputStream;

.field protected timeToWaitForMoreData:I

.field protected zebraConnector:Lcom/zebra/sdk/comm/internal/ZebraConnector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->MAX_DATA_TO_WRITE_TO_STREAM_AT_ONCE:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->maxTimeoutForRead:I

    iput v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->timeToWaitForMoreData:I

    iput-boolean v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->isConnected:Z

    return-void
.end method

.method private shouldWaitForData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public addWriteLogStream(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/comm/ConnectionA;->myWriteLogStream:Ljava/io/OutputStream;

    return-void
.end method

.method public bytesAvailable()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->isConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->isConnected:Z

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->commLink:Lcom/zebra/sdk/comm/internal/ZebraSocket;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/internal/ZebraSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/comm/ConnectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not disconnect from device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getConnectionReestablisher(J)Lcom/zebra/sdk/comm/ConnectionReestablisher;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance p1, Lcom/zebra/sdk/comm/ConnectionException;

    const-string p2, "Automatic reconnection is not supported for this connection type"

    invoke-direct {p1, p2}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getMaxDataToWrite()I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->MAX_DATA_TO_WRITE_TO_STREAM_AT_ONCE:I

    return v0
.end method

.method public getMaxTimeoutForRead()I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->maxTimeoutForRead:I

    return v0
.end method

.method public getTimeToWaitForMoreData()I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->timeToWaitForMoreData:I

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->isConnected:Z

    return v0
.end method

.method public open()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->isConnected:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->zebraConnector:Lcom/zebra/sdk/comm/internal/ZebraConnector;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/internal/ZebraConnector;->open()Lcom/zebra/sdk/comm/internal/ZebraSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->commLink:Lcom/zebra/sdk/comm/internal/ZebraSocket;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/internal/ZebraSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->outputStream:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->commLink:Lcom/zebra/sdk/comm/internal/ZebraSocket;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/internal/ZebraSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->inputStream:Ljava/io/InputStream;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->isConnected:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zebra/sdk/comm/ConnectionA;->isConnected:Z

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Lcom/zebra/sdk/comm/ConnectionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not connect to device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/zebra/sdk/comm/ConnectionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
.end method

.method public read(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionA;->bytesAvailable()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x4000

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/zebra/sdk/comm/ConnectionA;->read(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public read()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/comm/ConnectionA;->read(I)[B

    move-result-object v0

    return-object v0
.end method

.method public read(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionA;->bytesAvailable()I

    move-result v0

    if-lez v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    new-array p1, v0, [B

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public read(IZ)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-array v0, p1, [B

    const/4 v1, 0x0

    move v3, p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/zebra/sdk/comm/ConnectionA;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v5, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v5, :cond_1

    add-int/2addr v4, v5

    add-int/2addr v2, v5

    sub-int/2addr v3, v5

    :cond_1
    if-eqz p2, :cond_2

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    if-lt v4, p1, :cond_0

    :goto_0
    if-lez v4, :cond_3

    new-array p1, v4, [B

    invoke-static {v0, v1, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public readChar()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendAndWaitForResponse(Ljava/io/OutputStream;Ljava/io/InputStream;IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionA;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Lcom/zebra/sdk/comm/ConnectionA;->write(Ljava/io/InputStream;)V

    invoke-virtual {p0, p3}, Lcom/zebra/sdk/comm/ConnectionA;->waitForData(I)V

    const/4 p2, 0x0

    if-eqz p5, :cond_0

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionA;->bytesAvailable()I

    move-result p3

    if-lez p3, :cond_3

    sget p3, Lcom/zebra/sdk/comm/ConnectionA;->SIZE_OF_STREAM_BUFFERS:I

    invoke-virtual {p0, p3}, Lcom/zebra/sdk/comm/ConnectionA;->read(I)[B

    move-result-object p3

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_1
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p5, :cond_2

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p5}, Lcom/zebra/sdk/comm/ConnectionA;->shouldWaitForData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    :cond_2
    invoke-virtual {p0, p4}, Lcom/zebra/sdk/comm/ConnectionA;->waitForData(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    return-void

    :cond_4
    new-instance p1, Lcom/zebra/sdk/comm/ConnectionException;

    const-string p2, "No Printer Connection"

    invoke-direct {p1, p2}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public sendAndWaitForResponse([BIILjava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionA;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/comm/ConnectionA;->write([B)V

    invoke-virtual {p0, p2}, Lcom/zebra/sdk/comm/ConnectionA;->waitForData(I)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionA;->bytesAvailable()I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionA;->read()[B

    move-result-object p2

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p4}, Lcom/zebra/sdk/comm/ConnectionA;->shouldWaitForData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/zebra/sdk/comm/ConnectionA;->waitForData(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Lcom/zebra/sdk/comm/ConnectionException;

    const-string p2, "No Printer Connection"

    invoke-direct {p1, p2}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public sendAndWaitForValidResponse(Ljava/io/OutputStream;Ljava/io/InputStream;IILcom/zebra/sdk/comm/ResponseValidator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionA;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Lcom/zebra/sdk/comm/ConnectionA;->write(Ljava/io/InputStream;)V

    invoke-virtual {p0, p3}, Lcom/zebra/sdk/comm/ConnectionA;->waitForData(I)V

    const/4 p2, 0x0

    if-eqz p5, :cond_0

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionA;->bytesAvailable()I

    move-result p3

    if-lez p3, :cond_3

    sget p3, Lcom/zebra/sdk/comm/ConnectionA;->SIZE_OF_STREAM_BUFFERS:I

    invoke-virtual {p0, p3}, Lcom/zebra/sdk/comm/ConnectionA;->read(I)[B

    move-result-object p3

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_1
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p5, :cond_2

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-interface {p5, p3}, Lcom/zebra/sdk/comm/ResponseValidator;->isResponseComplete([B)Z

    move-result p3

    if-nez p3, :cond_0

    :cond_2
    invoke-virtual {p0, p4}, Lcom/zebra/sdk/comm/ConnectionA;->waitForData(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    return-void

    :cond_4
    new-instance p1, Lcom/zebra/sdk/comm/ConnectionException;

    const-string p2, "No Printer Connection"

    invoke-direct {p1, p2}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionA;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/comm/ConnectionA;->write([B)V

    invoke-virtual {p0, p2}, Lcom/zebra/sdk/comm/ConnectionA;->waitForData(I)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionA;->bytesAvailable()I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionA;->read()[B

    move-result-object p2

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-interface {p4, p2}, Lcom/zebra/sdk/comm/ResponseValidator;->isResponseComplete([B)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/zebra/sdk/comm/ConnectionA;->waitForData(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Lcom/zebra/sdk/comm/ConnectionException;

    const-string p2, "No Printer Connection"

    invoke-direct {p1, p2}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setMaxDataToWrite(I)V
    .locals 0

    iput p1, p0, Lcom/zebra/sdk/comm/ConnectionA;->MAX_DATA_TO_WRITE_TO_STREAM_AT_ONCE:I

    return-void
.end method

.method public setMaxTimeoutForRead(I)V
    .locals 0

    iput p1, p0, Lcom/zebra/sdk/comm/ConnectionA;->maxTimeoutForRead:I

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->commLink:Lcom/zebra/sdk/comm/internal/ZebraSocket;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/zebra/sdk/comm/internal/ZebraSocket;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public setTimeToWaitForMoreData(I)V
    .locals 0

    iput p1, p0, Lcom/zebra/sdk/comm/ConnectionA;->timeToWaitForMoreData:I

    return-void
.end method

.method public waitForData(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionA;->bytesAvailable()I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Lcom/zebra/sdk/util/internal/Sleeper;->sleep(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const/16 v0, 0x4000

    new-array v0, v0, [B

    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/zebra/sdk/comm/ConnectionA;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing to connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/zebra/sdk/comm/ConnectionA;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionA;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    if-lez p3, :cond_1

    :try_start_0
    iget v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->MAX_DATA_TO_WRITE_TO_STREAM_AT_ONCE:I

    if-le p3, v0, :cond_0

    iget v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->MAX_DATA_TO_WRITE_TO_STREAM_AT_ONCE:I

    goto :goto_1

    :cond_0
    move v0, p3

    :goto_1
    iget-object v1, p0, Lcom/zebra/sdk/comm/ConnectionA;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/zebra/sdk/comm/ConnectionA;->writeToLogStream([BII)V

    iget-object v1, p0, Lcom/zebra/sdk/comm/ConnectionA;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Lcom/zebra/sdk/util/internal/Sleeper;->sleep(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error writing to connection: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lcom/zebra/sdk/comm/ConnectionException;

    const-string p2, "The connection is not open"

    invoke-direct {p1, p2}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method protected writeToLogStream([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/LogStreamException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/ConnectionA;->myWriteLogStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/LogStreamException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error writing to log: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/LogStreamException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method
