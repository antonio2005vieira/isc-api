.class public abstract Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamA;
.super Ljava/io/OutputStream;


# static fields
.field private static final INTERNAL_ENCODED_BUFFER_SIZE:I = 0x400


# instance fields
.field protected internalEncodedBuffer:Ljava/io/ByteArrayOutputStream;

.field protected outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method protected bufferAndWrite(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamA;->internalEncodedBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamA;->internalEncodedBuffer:Ljava/io/ByteArrayOutputStream;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_0
    iget-object p1, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamA;->internalEncodedBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamA;->outputStream:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamA;->internalEncodedBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamA;->internalEncodedBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_1
    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamA;->flush()V

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamA;->internalEncodedBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamA;->outputStream:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamA;->internalEncodedBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/zebra/sdk/graphics/internal/CompressedBitmapOutputStreamA;->internalEncodedBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/IOException;

    const-string v0, "This method is not implemented."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
