.class public Lcom/zebra/sdk/util/internal/FontConverterHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateStreamSize(Ljava/io/InputStream;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static getFontHeader(JLjava/lang/String;C)Ljava/io/InputStream;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string p1, "DY"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 p1, 0x1f

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string p2, "b"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getFontHeader(Ljava/io/InputStream;Ljava/lang/String;C)Ljava/io/InputStream;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/util/internal/FontConverterHelper;->calculateStreamSize(Ljava/io/InputStream;)J

    move-result-wide v0

    long-to-int p0, v0

    int-to-long v0, p0

    invoke-static {v0, v1, p1, p2}, Lcom/zebra/sdk/util/internal/FontConverterHelper;->getFontHeader(JLjava/lang/String;C)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static saveFontAsPrinterFont(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "0000"

    :try_start_0
    invoke-static {p2, p3}, Lcom/zebra/sdk/util/internal/FileUtilities;->changeExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    instance-of p3, p0, Ljava/io/FileInputStream;

    if-eqz p3, :cond_0

    move-object p3, p0

    check-cast p3, Ljava/io/FileInputStream;

    invoke-virtual {p3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p3

    new-instance v1, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0, v0}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;

    invoke-direct {v0, p0, p2, v1}, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;-><init>(Ljava/io/InputStream;Ljava/lang/String;Lcom/zebra/sdk/util/internal/PrinterFileMetadata;)V

    invoke-static {v0}, Lcom/zebra/sdk/util/internal/FileWrapper;->createCisdfHeader(Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-static {p1, p0}, Lcom/zebra/sdk/util/internal/StreamHelper;->copyAndCloseSourceStream(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    invoke-static {}, Lcom/zebra/sdk/util/internal/FileWrapper;->getCisdfTrailer()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->close()V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0x7fffffff

    invoke-virtual {p0, p3}, Ljava/io/InputStream;->mark(I)V

    new-instance p3, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    invoke-direct {p3, p0}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    new-instance v0, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;

    invoke-direct {v0, p0, p2, p3}, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;-><init>(Ljava/io/InputStream;Ljava/lang/String;Lcom/zebra/sdk/util/internal/PrinterFileMetadata;)V

    invoke-static {v0}, Lcom/zebra/sdk/util/internal/FileWrapper;->createCisdfHeader(Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-static {p1, p0}, Lcom/zebra/sdk/util/internal/StreamHelper;->copyAndCloseSourceStream(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    invoke-static {}, Lcom/zebra/sdk/util/internal/FileWrapper;->getCisdfTrailer()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_1
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, p2, p0}, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;-><init>(Ljava/io/InputStream;Ljava/lang/String;Lcom/zebra/sdk/util/internal/PrinterFileMetadata;)V

    invoke-static {v0}, Lcom/zebra/sdk/util/internal/FileWrapper;->createCisdfHeader(Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p1, p0}, Lcom/zebra/sdk/util/internal/StreamHelper;->copyAndCloseSourceStream(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    invoke-static {}, Lcom/zebra/sdk/util/internal/FileWrapper;->getCisdfTrailer()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
