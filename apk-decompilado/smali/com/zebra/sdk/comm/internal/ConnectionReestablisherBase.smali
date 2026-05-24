.class public abstract Lcom/zebra/sdk/comm/internal/ConnectionReestablisherBase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/comm/ConnectionReestablisher;


# instance fields
.field protected startTime:J

.field protected thresholdTime:J

.field protected zebraPrinterConnection:Lcom/zebra/sdk/comm/Connection;


# direct methods
.method protected constructor <init>(Lcom/zebra/sdk/comm/Connection;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/comm/internal/ConnectionReestablisherBase;->zebraPrinterConnection:Lcom/zebra/sdk/comm/Connection;

    iput-wide p2, p0, Lcom/zebra/sdk/comm/internal/ConnectionReestablisherBase;->thresholdTime:J

    return-void
.end method


# virtual methods
.method protected timeoutCheck()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zebra/sdk/comm/internal/ConnectionReestablisherBase;->startTime:J

    iget-wide v4, p0, Lcom/zebra/sdk/comm/internal/ConnectionReestablisherBase;->thresholdTime:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task timed out waiting for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zebra/sdk/comm/internal/ConnectionReestablisherBase;->zebraPrinterConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' to come back online"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected waitForPrinterToComeOnlineViaSgdAndGetFwVer(Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zebra/sdk/comm/internal/ConnectionReestablisherBase;->startTime:J

    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/zebra/sdk/comm/Connection;->open()V

    const-string v0, "appl.name"

    invoke-static {v0, p1}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Printer is not responding"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    invoke-interface {p1}, Lcom/zebra/sdk/comm/Connection;->close()V
    :try_end_1
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-wide/16 v0, 0x9c4

    invoke-static {v0, v1}, Lcom/zebra/sdk/util/internal/Sleeper;->sleep(J)V

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/internal/ConnectionReestablisherBase;->timeoutCheck()V

    goto :goto_0
.end method
