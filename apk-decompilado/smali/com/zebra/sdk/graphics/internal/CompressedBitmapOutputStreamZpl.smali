.class public Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;
.super Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamA;


# static fields
.field private static final charMap:[I

.field private static final charVal:[C


# instance fields
.field private previousByteWritten:B

.field private previousByteWrittenRepeatCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x26

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->charMap:[I

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->charVal:[C

    return-void

    nop

    :array_0
    .array-data 4
        0x17c
        0x168
        0x154
        0x140
        0x12c
        0x118
        0x104
        0xf0
        0xdc
        0xc8
        0xb4
        0xa0
        0x8c
        0x78
        0x64
        0x50
        0x3c
        0x28
        0x14
        0x13
        0x12
        0x11
        0x10
        0xf
        0xe
        0xd
        0xc
        0xb
        0xa
        0x9
        0x8
        0x7
        0x6
        0x5
        0x4
        0x3
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 2
        0x79s
        0x78s
        0x77s
        0x76s
        0x75s
        0x74s
        0x73s
        0x72s
        0x71s
        0x70s
        0x6fs
        0x6es
        0x6ds
        0x6cs
        0x6bs
        0x6as
        0x69s
        0x68s
        0x67s
        0x59s
        0x58s
        0x57s
        0x56s
        0x55s
        0x54s
        0x53s
        0x52s
        0x51s
        0x50s
        0x4fs
        0x4es
        0x4ds
        0x4cs
        0x4bs
        0x4as
        0x49s
        0x48s
        0x47s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamA;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->previousByteWritten:B

    iput v0, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->previousByteWrittenRepeatCount:I

    iput-object p1, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->outputStream:Ljava/io/OutputStream;

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->internalEncodedBuffer:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method private computeAndOutput()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget v0, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->previousByteWrittenRepeatCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    div-int/lit16 v2, v0, 0x190

    rem-int/lit16 v0, v0, 0x190

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    const/16 v4, 0x7a

    invoke-virtual {p0, v4}, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->bufferAndWrite(C)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->charMap:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget v3, v3, v2

    if-lt v0, v3, :cond_1

    sget-object v3, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->charVal:[C

    aget-char v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->bufferAndWrite(C)V

    sget-object v3, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->charMap:[I

    aget v3, v3, v2

    sub-int/2addr v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-byte v0, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->previousByteWritten:B

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->bufferAndWrite(C)V

    return-void
.end method

.method private extractNibblesFromByte(B)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    xor-int/lit8 p1, p1, -0x1

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit8 p1, p1, 0xf

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    return-object v0
.end method

.method private sendBufferedDataToPrinter()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->computeAndOutput()V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeNibbleToStream(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->previousByteWrittenRepeatCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-byte p1, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->previousByteWritten:B

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->previousByteWrittenRepeatCount:I

    goto :goto_1

    :cond_0
    iget-byte v2, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->previousByteWritten:B

    if-ne v2, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->sendBufferedDataToPrinter()V

    iput-byte p1, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->previousByteWritten:B

    iput v1, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->previousByteWrittenRepeatCount:I

    :goto_1
    return-void
.end method

.method private writeNibblesToStream([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->writeNibbleToStream(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->previousByteWrittenRepeatCount:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->sendBufferedDataToPrinter()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->previousByteWrittenRepeatCount:I

    :cond_0
    invoke-super {p0}, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamA;->flush()V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->extractNibblesFromByte(B)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamZpl;->writeNibblesToStream([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
