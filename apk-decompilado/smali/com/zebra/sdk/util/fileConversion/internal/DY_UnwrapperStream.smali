.class public Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;
.super Lcom/zebra/sdk/util/fileConversion/internal/ZplUnwrapperStreamBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream$DY_SourceDataType;
    }
.end annotation


# instance fields
.field dy_SourceDataType:Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream$DY_SourceDataType;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/ZplUnwrapperStreamBase;-><init>()V

    if-eqz p1, :cond_1

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "~DY_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->getFileExtensionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->getUnwrappedType(Ljava/lang/String;)Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;->unwrappedType:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    invoke-virtual {v0}, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->getFormatDownloadedInDataField()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream$DY_SourceDataType;->getSourceType(Ljava/lang/String;)Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream$DY_SourceDataType;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;->dy_SourceDataType:Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream$DY_SourceDataType;

    invoke-direct {p0, v0}, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;->getDataDecodingStream(Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;->dataUnwrapperStream:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;->shouldPrependZebraImageHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->getBytesPerRow()I

    move-result v1

    invoke-virtual {v0}, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->getTotalBytesInData()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;->getImageStream(Ljava/io/InputStream;II)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;->dataUnwrapperStream:Ljava/io/InputStream;

    :cond_0
    invoke-virtual {v0}, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->getFilenameOnPrinter()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;->fileNameOnPrinter:Ljava/lang/String;

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "input stream is null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDataDecodingStream(Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->getDataFormatSpecifier()Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    move-result-object v0

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->MIME_UNCOMPRESSED:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/zebra/sdk/util/internal/Base64$InputStream;

    new-instance v1, Lcom/zebra/sdk/util/fileConversion/internal/ColonSignifiesEndStream;

    invoke-direct {v1, p1}, Lcom/zebra/sdk/util/fileConversion/internal/ColonSignifiesEndStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/util/internal/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->getDataFormatSpecifier()Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    move-result-object v0

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->MIME_COMPRESSED:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/zebra/sdk/util/internal/CustomGZIPInputStream;

    new-instance v1, Lcom/zebra/sdk/util/internal/Base64$InputStream;

    new-instance v3, Lcom/zebra/sdk/util/fileConversion/internal/ColonSignifiesEndStream;

    invoke-direct {v3, p1}, Lcom/zebra/sdk/util/fileConversion/internal/ColonSignifiesEndStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3, v2}, Lcom/zebra/sdk/util/internal/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v0, v1}, Lcom/zebra/sdk/util/internal/CustomGZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->getDataFormatSpecifier()Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    move-result-object v0

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->ASCII_HEX:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;

    invoke-virtual {p1}, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->getBytesPerRow()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/zebra/sdk/util/fileConversion/internal/AsciiDecoderStream;-><init>(Ljava/io/InputStream;I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private getImageStream(Ljava/io/InputStream;II)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;

    invoke-direct {v0, p1, p2, p3}, Lcom/zebra/sdk/util/fileConversion/internal/ZebraImageHeaderPrependerStream;-><init>(Ljava/io/InputStream;II)V

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;->shouldConvertFromGrfToPng()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/zebra/sdk/util/fileConversion/internal/GrfToPrinterPngConverterStream;

    invoke-direct {p1, v0}, Lcom/zebra/sdk/util/fileConversion/internal/GrfToPrinterPngConverterStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;->shouldConvertFromPngToGrf()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/zebra/sdk/util/fileConversion/internal/PrinterPngToGrfConverterStream;

    invoke-direct {p1, v0}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterPngToGrfConverterStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private shouldConvertFromGrfToPng()Z
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;->dy_SourceDataType:Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream$DY_SourceDataType;

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream$DY_SourceDataType;->UNCOMPRESSED:Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream$DY_SourceDataType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;->unwrappedType:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->PRINTER_PNG:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldConvertFromPngToGrf()Z
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;->dy_SourceDataType:Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream$DY_SourceDataType;

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream$DY_SourceDataType;->PNG:Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream$DY_SourceDataType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;->unwrappedType:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->PRINTER_GRF:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldPrependZebraImageHeader()Z
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;->unwrappedType:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->PRINTER_GRF:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;->unwrappedType:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->PRINTER_PNG:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method protected getTypeToUnwrap()Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->DY:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    return-object v0
.end method
