.class public Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;
.super Ljava/io/InputStream;


# instance fields
.field private dataUnwrapperStream:Ljava/io/InputStream;

.field headerCounter:I

.field headerData:[I

.field preReadCounter:I

.field preReadDataBuffer:[I

.field preReadIndex:I

.field preReadLimit:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->preReadLimit:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->preReadCounter:I

    iput v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->preReadIndex:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->preReadDataBuffer:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->headerData:[I

    iput v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->headerCounter:I

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->dataUnwrapperStream:Ljava/io/InputStream;

    :goto_0
    iget p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->preReadIndex:I

    iget v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->preReadLimit:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->preReadDataBuffer:[I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->preReadIndex:I

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->dataUnwrapperStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    aput v1, v0, p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->headerData:[I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->preReadDataBuffer:[I

    invoke-static {p1, p2, p3}, Lcom/zebra/sdk/util/fileConversion/internal/DYHelper;->calculateZebraHeader([III)[I

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->headerData:[I

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "input stream is null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->headerData:[I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->headerCounter:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->headerCounter:I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->preReadCounter:I

    iget v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->preReadIndex:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->preReadDataBuffer:[I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->preReadCounter:I

    aget v0, v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;->dataUnwrapperStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    return v0
.end method
