.class public Lcom/zebra/sdk/util/internal/Base64$OutputStream;
.super Ljava/io/FilterOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zebra/sdk/util/internal/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStream"
.end annotation


# instance fields
.field private b4:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private encode:Z

.field private lineLength:I

.field private position:I

.field private suspendEncoding:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/zebra/sdk/util/internal/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 3

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    and-int/lit8 p1, p2, 0x8

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->breakLines:Z

    and-int/lit8 p1, p2, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->encode:Z

    const/4 p1, 0x4

    if-eqz v1, :cond_2

    const/4 p2, 0x3

    goto :goto_2

    :cond_2
    const/4 p2, 0x4

    :goto_2
    iput p2, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->bufferLength:I

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->buffer:[B

    iput v2, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->position:I

    iput v2, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->lineLength:I

    iput-boolean v2, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->suspendEncoding:Z

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->b4:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->flushBase64()V

    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->buffer:[B

    iput-object v0, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public flushBase64()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->position:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->encode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->b4:[B

    iget-object v2, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->buffer:[B

    iget v3, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->position:I

    invoke-static {v1, v2, v3}, Lcom/zebra/sdk/util/internal/Base64;->access$300([B[BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->position:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public resumeEncoding()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->suspendEncoding:Z

    return-void
.end method

.method public suspendEncoding()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->flushBase64()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->suspendEncoding:Z

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->suspendEncoding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->encode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->position:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    iget p1, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->bufferLength:I

    if-lt v3, p1, :cond_4

    iget-object p1, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->b4:[B

    iget-object v2, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->buffer:[B

    iget v3, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->bufferLength:I

    invoke-static {v0, v2, v3}, Lcom/zebra/sdk/util/internal/Base64;->access$300([B[BI)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget p1, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->lineLength:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->lineLength:I

    iget-boolean v0, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->breakLines:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4c

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->out:Ljava/io/OutputStream;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iput v1, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->lineLength:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/zebra/sdk/util/internal/Base64;->access$100()[B

    move-result-object v0

    and-int/lit8 v2, p1, 0x7f

    aget-byte v0, v0, v2

    const/4 v3, -0x5

    if-le v0, v3, :cond_3

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->position:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    iget p1, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->bufferLength:I

    if-lt v3, p1, :cond_4

    iget-object p1, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->b4:[B

    invoke-static {v0, v1, p1, v1}, Lcom/zebra/sdk/util/internal/Base64;->access$200([BI[BI)I

    move-result p1

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->b4:[B

    invoke-virtual {v0, v2, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    :cond_2
    :goto_0
    iput v1, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->position:I

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/zebra/sdk/util/internal/Base64;->access$100()[B

    move-result-object p1

    aget-byte p1, p1, v2

    if-ne p1, v3, :cond_5

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid character in Base64 data."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->suspendEncoding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
