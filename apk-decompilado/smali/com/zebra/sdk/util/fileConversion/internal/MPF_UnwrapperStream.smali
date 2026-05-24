.class public Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;
.super Lcom/zebra/sdk/util/fileConversion/internal/StreamDecoratorBase;


# instance fields
.field private boundary:Ljava/lang/String;

.field private crc16:C

.field private fileName:Ljava/lang/String;

.field private readAheadBuffer:Ljava/lang/StringBuffer;

.field private readingDataBody:Z

.field private sourceStream:Ljava/io/InputStream;

.field private sum:C

.field private unwrappedFileSize:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/StreamDecoratorBase;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->readAheadBuffer:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->readingDataBody:Z

    const-string v1, "UNKNOWN.GRF"

    iput-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->fileName:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->unwrappedFileSize:J

    iput-char v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->crc16:C

    iput-char v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->sum:C

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->sourceStream:Ljava/io/InputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "input stream is null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private extractBoundary()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->readAheadBuffer:Ljava/lang/StringBuffer;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "^[\\s]*--([^\\s|^-]+)\\r\\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->readAheadBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string v0, "\r\n--%s--\r\n"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->boundary:Ljava/lang/String;

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->readAheadBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_1
    return-void
.end method

.method private extractFileNameFromHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->readAheadBuffer:Ljava/lang/StringBuffer;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->readAheadBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\\s+filename\\s*=\\s*\"([^\"]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->readAheadBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->fileName:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private getFileType()Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->UNSUPPORTED:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/zebra/sdk/util/internal/FileUtilities;->parseDriveAndExtension(Ljava/lang/String;)Lcom/zebra/sdk/util/internal/PrinterFilePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zebra/sdk/util/internal/PrinterFilePath;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->getUnwrappedType(Ljava/lang/String;)Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    move-result-object v0
    :try_end_0
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->UNSUPPORTED:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    :goto_0
    return-object v0
.end method

.method private getNextCharacter()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->readAheadBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->readAheadBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->readAheadBuffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    iget-object v3, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->readAheadBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v3, v1, :cond_2

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->readAheadBuffer:Ljava/lang/StringBuffer;

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->readAheadBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->boundary:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->readAheadBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed Multipart Form Data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return v1
.end method

.method private preloadReadAheadBuffer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->boundary:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->readAheadBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->readAheadBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->boundary:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->readAheadBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getPrinterFileMetadata()Lcom/zebra/sdk/util/internal/PrinterFileMetadata;
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-char v2, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->crc16:C

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%04X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v1, v0, [Ljava/lang/Object;

    iget-char v4, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->sum:C

    const v5, 0xffff

    xor-int/2addr v4, v5

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    iget-wide v5, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->unwrappedFileSize:J

    iget-object v9, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->fileName:Ljava/lang/String;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->getFileType()Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;->setPrinterFileType(Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;)V

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->MPF:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;->setPrinterWrappingType(Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;)V

    return-object v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->readingDataBody:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->extractBoundary()V

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->extractFileNameFromHeader()V

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->preloadReadAheadBuffer()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->readingDataBody:Z

    :cond_0
    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->getNextCharacter()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-wide v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->unwrappedFileSize:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->unwrappedFileSize:J

    iget-char v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->sum:C

    add-int/2addr v1, v0

    int-to-char v1, v1

    iput-char v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->sum:C

    iget-char v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->crc16:C

    invoke-static {v1, v0}, Lcom/zebra/sdk/util/internal/ZCRC16;->addCrc16Byte_cpcl(CI)C

    move-result v1

    iput-char v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;->crc16:C

    :cond_1
    return v0
.end method
