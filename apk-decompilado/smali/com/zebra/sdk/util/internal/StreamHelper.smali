.class public Lcom/zebra/sdk/util/internal/StreamHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyAndCloseSourceStream(Lcom/zebra/sdk/comm/Connection;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/util/internal/HasWrite;

    invoke-direct {v0, p0}, Lcom/zebra/sdk/util/internal/HasWrite;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lcom/zebra/sdk/util/internal/StreamHelper;->copyAndCloseSourceStream(Lcom/zebra/sdk/util/internal/HasWrite;Ljava/io/InputStream;)V

    return-void
.end method

.method private static copyAndCloseSourceStream(Lcom/zebra/sdk/util/internal/HasWrite;Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4000

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/zebra/sdk/util/internal/HasWrite;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public static copyAndCloseSourceStream(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/util/internal/HasWrite;

    invoke-direct {v0, p0}, Lcom/zebra/sdk/util/internal/HasWrite;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lcom/zebra/sdk/util/internal/StreamHelper;->copyAndCloseSourceStream(Lcom/zebra/sdk/util/internal/HasWrite;Ljava/io/InputStream;)V

    return-void
.end method
