.class Lcom/zebra/sdk/util/internal/HasWrite;
.super Ljava/lang/Object;


# instance fields
.field localWriter:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/HasWrite;->localWriter:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/HasWrite;->localWriter:Ljava/lang/Object;

    instance-of v1, v0, Lcom/zebra/sdk/comm/Connection;

    if-eqz v1, :cond_0

    :try_start_0
    check-cast v0, Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v0, p1, p2, p3}, Lcom/zebra/sdk/comm/Connection;->write([BII)V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    instance-of v1, v0, Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "OutputStream is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
