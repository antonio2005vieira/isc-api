.class public Lcom/zebra/sdk/printer/internal/RleEncodedImage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;
    }
.end annotation


# instance fields
.field private outputImageByteStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/RleEncodedImage;->outputImageByteStream:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method private bothUpperBitsAreSet(B)Z
    .locals 1

    const/16 v0, 0xc0

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private createRun(IB)[B
    .locals 2

    int-to-byte p1, p1

    or-int/lit16 p1, p1, 0xc0

    int-to-byte p1, p1

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    aput-byte p2, v0, p1

    return-object v0
.end method

.method private encodeRun(BLcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;)[B
    .locals 2

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2}, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;->access$000(Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p2}, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;->access$100(Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;)B

    move-result v1

    if-ne p1, v1, :cond_0

    const/16 v1, 0x3f

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;->getByte()B

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/zebra/sdk/printer/internal/RleEncodedImage;->createRun(IB)[B

    move-result-object p1

    return-object p1
.end method

.method private getNextElement(Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;)[B
    .locals 2

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;->getByte()B

    move-result v0

    invoke-static {p1}, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;->access$000(Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p1}, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;->access$100(Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;)B

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/zebra/sdk/printer/internal/RleEncodedImage;->encodeRun(BLcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/internal/RleEncodedImage;->bothUpperBitsAreSet(B)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/zebra/sdk/printer/internal/RleEncodedImage;->createRun(IB)[B

    move-result-object p1

    goto :goto_0

    :cond_1
    new-array p1, v1, [B

    const/4 v1, 0x0

    aput-byte v0, p1, v1

    :goto_0
    return-object p1
.end method

.method private outputElement([B)V
    .locals 3

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/RleEncodedImage;->outputImageByteStream:Ljava/io/ByteArrayOutputStream;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method private rleEncoding(Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/RleEncodedImage;->getNextElement(Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/internal/RleEncodedImage;->outputElement([B)V

    invoke-static {p1}, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;->access$000(Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/RleEncodedImage;->rleEncoding(Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public rleEncoding([BI)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    rem-int/lit8 v0, p2, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_4

    array-length v3, p1

    sub-int/2addr v3, v2

    if-ge v3, p2, :cond_1

    goto :goto_2

    :cond_1
    move v3, p2

    :goto_2
    if-eqz v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [B

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_2

    add-int v6, v2, v5

    aget-byte v6, p1, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    aput-byte v1, v4, v3

    goto :goto_4

    :cond_3
    new-array v4, v3, [B

    invoke-static {p1, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    new-instance v3, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;

    invoke-direct {v3, p0, v4}, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;-><init>(Lcom/zebra/sdk/printer/internal/RleEncodedImage;[B)V

    invoke-direct {p0, v3}, Lcom/zebra/sdk/printer/internal/RleEncodedImage;->rleEncoding(Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;)V

    add-int/2addr v2, p2

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/RleEncodedImage;->outputImageByteStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object p2, p0, Lcom/zebra/sdk/printer/internal/RleEncodedImage;->outputImageByteStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p1
.end method
