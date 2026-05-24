.class public abstract Lcom/zebra/sdk/util/fileConversion/internal/ZplUnwrapperStreamBase;
.super Lcom/zebra/sdk/util/fileConversion/internal/StreamDecoratorBase;


# instance fields
.field crc16:C

.field dataUnwrapperStream:Ljava/io/InputStream;

.field fileNameOnPrinter:Ljava/lang/String;

.field sum:C

.field unmimedFileSize:J

.field unwrappedType:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/StreamDecoratorBase;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZplUnwrapperStreamBase;->unmimedFileSize:J

    const/4 v0, 0x0

    iput-char v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZplUnwrapperStreamBase;->crc16:C

    iput-char v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZplUnwrapperStreamBase;->sum:C

    return-void
.end method


# virtual methods
.method public getPrinterFileMetadata()Lcom/zebra/sdk/util/internal/PrinterFileMetadata;
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-char v2, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZplUnwrapperStreamBase;->crc16:C

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%04X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v1, v0, [Ljava/lang/Object;

    iget-char v4, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZplUnwrapperStreamBase;->sum:C

    const v5, 0xffff

    xor-int/2addr v4, v5

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    iget-wide v5, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZplUnwrapperStreamBase;->unmimedFileSize:J

    iget-object v9, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZplUnwrapperStreamBase;->fileNameOnPrinter:Ljava/lang/String;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZplUnwrapperStreamBase;->unwrappedType:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;->setPrinterFileType(Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;)V

    invoke-virtual {p0}, Lcom/zebra/sdk/util/fileConversion/internal/ZplUnwrapperStreamBase;->getTypeToUnwrap()Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;->setPrinterWrappingType(Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;)V

    return-object v0
.end method

.method protected abstract getTypeToUnwrap()Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZplUnwrapperStreamBase;->dataUnwrapperStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZplUnwrapperStreamBase;->unmimedFileSize:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZplUnwrapperStreamBase;->unmimedFileSize:J

    iget-char v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZplUnwrapperStreamBase;->sum:C

    add-int/2addr v1, v0

    int-to-char v1, v1

    iput-char v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZplUnwrapperStreamBase;->sum:C

    iget-char v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZplUnwrapperStreamBase;->crc16:C

    invoke-static {v1, v0}, Lcom/zebra/sdk/util/internal/ZCRC16;->addCrc16Byte_cpcl(CI)C

    move-result v1

    iput-char v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/ZplUnwrapperStreamBase;->crc16:C

    :cond_0
    return v0
.end method
