.class public abstract Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;
.super Ljava/io/InputStream;


# instance fields
.field private endStreamOnNextRead:Z

.field private lastDataReceivedTime:J

.field private maxTimeToWaitForMoreData:J

.field private printerConnection:Lcom/zebra/sdk/comm/Connection;

.field private terminationQueue:Ljava/lang/StringBuffer;

.field protected terminator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;J)V
    .locals 4

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->lastDataReceivedTime:J

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->terminationQueue:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->endStreamOnNextRead:Z

    iput-wide v1, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->maxTimeToWaitForMoreData:J

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->terminator:Ljava/lang/String;

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    iput-wide p2, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->maxTimeToWaitForMoreData:J

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->terminator:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->terminationQueue:Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->lastDataReceivedTime:J

    return-void
.end method

.method private handleTerminationOfStream(C)V
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->terminator:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->terminationQueue:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget-object v1, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->terminator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->terminationQueue:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->terminationQueue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->terminator:Ljava/lang/String;

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->terminationQueue:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->endStreamOnNextRead:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->endStreamOnNextRead:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->readChar()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->lastDataReceivedTime:J

    sub-long/2addr v2, v4

    if-eq v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->lastDataReceivedTime:J

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->setTerminatorBasedOnData(I)V

    int-to-char v4, v0

    invoke-direct {p0, v4}, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->handleTerminationOfStream(C)V

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Lcom/zebra/sdk/util/internal/Sleeper;->sleep(J)V

    :goto_0
    if-ne v0, v1, :cond_2

    iget-wide v4, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;->maxTimeToWaitForMoreData:J
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    :cond_2
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method protected abstract setTerminatorBasedOnData(I)V
.end method
