.class public Lcom/zebra/sdk/util/internal/CustomGZIPInputStream;
.super Ljava/util/zip/InflaterInputStream;


# static fields
.field public static final GZIP_MAGIC:I = 0x8b1f


# instance fields
.field private closed:Z

.field protected crc:Ljava/util/zip/CRC32;

.field protected eos:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Lcom/zebra/sdk/util/internal/CustomGZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/CustomGZIPInputStream;->crc:Ljava/util/zip/CRC32;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zebra/sdk/util/internal/CustomGZIPInputStream;->closed:Z

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/zebra/sdk/util/internal/CustomGZIPInputStream;->closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/zebra/sdk/util/internal/CustomGZIPInputStream;->closed:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zebra/sdk/util/internal/CustomGZIPInputStream;->eos:Z

    iput-boolean v0, p0, Lcom/zebra/sdk/util/internal/CustomGZIPInputStream;->closed:Z

    :cond_0
    return-void
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/util/internal/CustomGZIPInputStream;->ensureOpen()V

    iget-boolean v0, p0, Lcom/zebra/sdk/util/internal/CustomGZIPInputStream;->eos:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result p3

    if-ne p3, v1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zebra/sdk/util/internal/CustomGZIPInputStream;->eos:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zebra/sdk/util/internal/CustomGZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    :goto_0
    return p3
.end method
