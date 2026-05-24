.class public abstract Lcom/zebra/sdk/util/fileConversion/internal/StreamDecoratorBase;
.super Ljava/io/InputStream;

# interfaces
.implements Lcom/zebra/sdk/util/fileConversion/internal/MetadataProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_4

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/zebra/sdk/util/fileConversion/internal/StreamDecoratorBase;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    int-to-byte v0, v0

    aput-byte v0, p1, p2

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p3, :cond_3

    invoke-virtual {p0}, Lcom/zebra/sdk/util/fileConversion/internal/StreamDecoratorBase;->read()I

    move-result v2

    if-ne v2, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int v3, p2, v0

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_5
    const/4 p1, 0x0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
