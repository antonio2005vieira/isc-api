.class public Lcom/zebra/sdk/settings/internal/PrinterlessConnection;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/comm/ConnectionWithWriteLogging;


# instance fields
.field baos:Ljava/io/ByteArrayOutputStream;

.field private dataToReturnOnEveryRead:[B

.field private myWriteLogStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->baos:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->dataToReturnOnEveryRead:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->baos:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->dataToReturnOnEveryRead:[B

    iput-object p1, p0, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->dataToReturnOnEveryRead:[B

    return-void
.end method

.method private writeToLogStream([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/LogStreamException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->myWriteLogStream:Ljava/io/OutputStream;

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


# virtual methods
.method public addWriteLogStream(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->myWriteLogStream:Ljava/io/OutputStream;

    return-void
.end method

.method public bytesAvailable()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->dataToReturnOnEveryRead:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    return-void
.end method

.method public getConnectionReestablisher(J)Lcom/zebra/sdk/comm/ConnectionReestablisher;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaxTimeoutForRead()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getSimpleConnectionName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStuffWrittenOnConnection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeToWaitForMoreData()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public isConnected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    return-void
.end method

.method public read(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    return-void
.end method

.method public read()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->dataToReturnOnEveryRead:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->dataToReturnOnEveryRead:[B

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public readChar()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public sendAndWaitForResponse(Ljava/io/OutputStream;Ljava/io/InputStream;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->write(Ljava/io/InputStream;)V

    return-void
.end method

.method public sendAndWaitForResponse([BIILjava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    array-length p2, p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->write([BII)V

    invoke-virtual {p0}, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->read()[B

    move-result-object p1

    return-object p1
.end method

.method public sendAndWaitForValidResponse(Ljava/io/OutputStream;Ljava/io/InputStream;IILcom/zebra/sdk/comm/ResponseValidator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    return-void
.end method

.method public sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    array-length p2, p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->write([BII)V

    invoke-virtual {p0}, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->read()[B

    move-result-object p1

    return-object p1
.end method

.method public setMaxTimeoutForRead(I)V
    .locals 0

    return-void
.end method

.method public setTimeToWaitForMoreData(I)V
    .locals 0

    return-void
.end method

.method public waitForData(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    return-void
.end method

.method public write(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    return-void
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

    invoke-virtual {p0, p1, v1, v0}, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->write([BII)V

    array-length v0, p1

    invoke-direct {p0, p1, v1, v0}, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->writeToLogStream([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-direct {p0, p1, p2, p3}, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->writeToLogStream([BII)V

    return-void
.end method
