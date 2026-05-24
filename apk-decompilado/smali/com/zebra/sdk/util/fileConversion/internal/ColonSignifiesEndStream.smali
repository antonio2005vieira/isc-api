.class public Lcom/zebra/sdk/util/fileConversion/internal/ColonSignifiesEndStream;
.super Ljava/io/InputStream;


# instance fields
.field private sourceStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ColonSignifiesEndStream;->sourceStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/ColonSignifiesEndStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/ColonSignifiesEndStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method
