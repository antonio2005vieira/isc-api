.class public Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;
.super Lcom/zebra/sdk/util/fileConversion/internal/StreamDecoratorBase;


# instance fields
.field private bytesLeftToRead:J

.field private printerFileMetadata:Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

.field private sourceStream:Ljava/io/PushbackInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/StreamDecoratorBase;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->sourceStream:Ljava/io/PushbackInputStream;

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->skipToHeaderInfo()V

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->grabNextCisdfLine()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->grabNextCisdfLine()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->grabNextCisdfLine()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->grabNextCisdfLine()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    int-to-long v8, v0

    move-object v1, v7

    move-wide v2, v8

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->printerFileMetadata:Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    invoke-direct {p0, p1}, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->getFileType(Ljava/lang/String;)Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;->setPrinterFileType(Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;)V

    iget-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->printerFileMetadata:Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->CISDF:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    invoke-virtual {p1, v0}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;->setPrinterWrappingType(Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;)V

    iput-wide v8, p0, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->bytesLeftToRead:J

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Missing CISDF Header : input stream is null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getFileType(Ljava/lang/String;)Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->UNSUPPORTED:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    :try_start_0
    invoke-static {p1}, Lcom/zebra/sdk/util/internal/FileUtilities;->parseDriveAndExtension(Ljava/lang/String;)Lcom/zebra/sdk/util/internal/PrinterFilePath;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zebra/sdk/util/internal/PrinterFilePath;->getExtension()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->getUnwrappedType(Ljava/lang/String;)Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    move-result-object p1
    :try_end_0
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->UNSUPPORTED:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    :goto_0
    return-object p1
.end method

.method private grabNextCisdfLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->sourceStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    if-eq v1, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->isEndOfLineCharacter(I)Z

    move-result v3

    if-nez v3, :cond_1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->sourceStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->sourceStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->isEndOfLineCharacter(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->sourceStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid CISDF Header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private isEndOfLineCharacter(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private skipToHeaderInfo()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->grabNextCisdfLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "! CISDFCRC16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "! CISDFRCRC16"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid CISDF Header : \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" does not start with \""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" or \""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getPrinterFileMetadata()Lcom/zebra/sdk/util/internal/PrinterFileMetadata;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->printerFileMetadata:Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    return-object v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->bytesLeftToRead:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->sourceStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget-wide v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->bytesLeftToRead:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;->bytesLeftToRead:J

    return v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Expected more data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method
