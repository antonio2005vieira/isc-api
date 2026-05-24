.class public Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;
.super Lcom/zebra/sdk/util/fileConversion/internal/StreamDecoratorBase;


# instance fields
.field private crc16:C

.field headerBuffer:Ljava/io/ByteArrayOutputStream;

.field private numberOfBytes:J

.field private sourceStream:Ljava/io/InputStream;

.field private sum:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/StreamDecoratorBase;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->numberOfBytes:J

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->headerBuffer:Ljava/io/ByteArrayOutputStream;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->sourceStream:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput-char p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->crc16:C

    iput-char p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->sum:C

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Input stream is null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkForHeader(I)V
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->headerBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->headerBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->headerBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1
    return-void
.end method

.method private extractFWVersionFromDCHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/zebra/sdk/printer/internal/FirmwareUtil;->extractFirmwareVersion(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTypeToUnwrap(Ljava/lang/String;)Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;
    .locals 3

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->UNSUPPORTED:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_COMMAND_PREFIX:Ljava/lang/String;

    const-string v2, "~"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "~DG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->DG:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    goto :goto_1

    :cond_0
    const-string v1, "~DY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->DY:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    goto :goto_1

    :cond_1
    const-string v1, "~DZ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->DZ:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    goto :goto_1

    :cond_2
    const-string v1, "! CISDFCRC16"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->CISDF:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    goto :goto_1

    :cond_3
    const-string v1, "! CISDFRCRC16"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const-string v1, "~DC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->DC:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    goto :goto_1

    :cond_5
    const-string v1, "<ZEBRA-OBJECT>"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->HZO:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    goto :goto_1

    :cond_6
    const-string v1, "--"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "CONTENT-DISPOSITION:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->MPF:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    :cond_7
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getPrinterFileMetadata()Lcom/zebra/sdk/util/internal/PrinterFileMetadata;
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-char v2, p0, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->crc16:C

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%04X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v0, [Ljava/lang/Object;

    iget-char v5, p0, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->sum:C

    const v6, 0xffff

    xor-int/2addr v5, v6

    add-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    iget-wide v5, p0, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->numberOfBytes:J

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->headerBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->getTypeToUnwrap(Ljava/lang/String;)Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;->setPrinterWrappingType(Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;)V

    invoke-virtual {v4}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;->getPrinterWrappingType()Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    move-result-object v2

    sget-object v5, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->DC:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->extractFWVersionFromDCHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;->setFileName(Ljava/lang/String;)V

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->FIRMWARE:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    invoke-virtual {v4, v0}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;->setPrinterFileType(Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;)V

    :cond_1
    return-object v4
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->checkForHeader(I)V

    iget-wide v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->numberOfBytes:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->numberOfBytes:J

    iget-char v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->sum:C

    add-int/2addr v1, v0

    int-to-char v1, v1

    iput-char v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->sum:C

    iget-char v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->crc16:C

    invoke-static {v1, v0}, Lcom/zebra/sdk/util/internal/ZCRC16;->addCrc16Byte_cpcl(CI)C

    move-result v1

    iput-char v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;->crc16:C

    :cond_0
    return v0
.end method
