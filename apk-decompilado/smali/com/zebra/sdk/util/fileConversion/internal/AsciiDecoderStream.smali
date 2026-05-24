.class public Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;
.super Ljava/io/InputStream;


# instance fields
.field private nibbleCounter:I

.field private previousRow:[I

.field private previousRowIndex:I

.field private rleRepeatChar:I

.field private rleRepeatCount:I

.field private sourceStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->rleRepeatCount:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->rleRepeatChar:I

    iput v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->nibbleCounter:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->previousRow:[I

    iput v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->previousRowIndex:I

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->sourceStream:Ljava/io/InputStream;

    const/4 p1, 0x2

    if-gez p2, :cond_0

    new-array p1, p1, [I

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p2, 0x2

    new-array p1, p2, [I

    :goto_0
    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->previousRow:[I

    array-length p1, p1

    iput p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->previousRowIndex:I

    return-void
.end method

.method private fillRemainderOfRow(IC)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->previousRow:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aput p2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getNextChar()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->previousRowIndex:I

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->previousRow:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->getPreviousRowNibbleAt(I)I

    move-result v0

    goto/16 :goto_3

    :cond_0
    iget v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->rleRepeatCount:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->rleRepeatCount:I

    iget v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->rleRepeatChar:I

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->rleRepeatCount:I

    iget v2, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->nibbleCounter:I

    array-length v1, v1

    rem-int/2addr v2, v1

    :cond_2
    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_3

    const/16 v1, 0x30

    invoke-direct {p0, v2, v1}, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->fillRemainderOfRow(IC)V

    :goto_0
    invoke-direct {p0, v2}, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->getPreviousRowNibbleAt(I)I

    move-result v1

    goto :goto_2

    :cond_3
    const/16 v3, 0x21

    const/16 v4, 0x46

    if-ne v1, v3, :cond_4

    invoke-direct {p0, v2, v4}, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->fillRemainderOfRow(IC)V

    goto :goto_0

    :cond_4
    const/16 v3, 0x3a

    if-ne v1, v3, :cond_5

    invoke-direct {p0, v0}, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->getPreviousRowNibbleAt(I)I

    move-result v1

    goto :goto_2

    :cond_5
    if-le v1, v4, :cond_6

    const/16 v3, 0x5a

    if-ge v1, v3, :cond_6

    iget v3, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->rleRepeatCount:I

    add-int/lit8 v4, v1, -0x46

    :goto_1
    add-int/2addr v3, v4

    iput v3, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->rleRepeatCount:I

    goto :goto_2

    :cond_6
    const/16 v3, 0x66

    if-le v1, v3, :cond_7

    const/16 v3, 0x7b

    if-ge v1, v3, :cond_7

    iget v3, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->rleRepeatCount:I

    add-int/lit8 v4, v1, -0x66

    mul-int/lit8 v4, v4, 0x14

    goto :goto_1

    :cond_7
    iget v3, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->rleRepeatCount:I

    if-lez v3, :cond_8

    iput v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->rleRepeatChar:I

    :cond_8
    :goto_2
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    invoke-direct {p0, v1}, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->isAsciiHex(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_9
    move v0, v1

    :goto_3
    return v0
.end method

.method private getPreviousRowNibbleAt(I)I
    .locals 2

    iput p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->previousRowIndex:I

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->previousRow:[I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->previousRowIndex:I

    aget p1, v0, p1

    return p1
.end method

.method private static hexToInt(I)I
    .locals 2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v1, 0x66

    if-gt p0, v1, :cond_0

    :goto_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v1, 0x46

    if-gt p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v1, 0x39

    if-gt p0, v1, :cond_2

    sub-int/2addr p0, v0

    return p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private isAsciiHex(I)Z
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->hexToInt(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private saveCurrentNibble(I)V
    .locals 3

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->previousRow:[I

    iget v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->nibbleCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->nibbleCounter:I

    array-length v2, v0

    rem-int/2addr v1, v2

    aput p1, v0, v1

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->getNextChar()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->saveCurrentNibble(I)V

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->getNextChar()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->saveCurrentNibble(I)V

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->hexToInt(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    invoke-static {v1}, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;->hexToInt(I)I

    move-result v1

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0

    :cond_1
    :goto_0
    return v2
.end method
