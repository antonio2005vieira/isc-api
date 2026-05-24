.class public Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileUnwrapperStream;
.super Lcom/zebra/sdk/util/fileConversion/internal/StreamDecoratorBase;


# instance fields
.field private baseStream:Lcom/zebra/sdk/util/fileConversion/internal/StreamDecoratorBase;

.field private fileType:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/StreamDecoratorBase;-><init>()V

    iput-object p2, p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileUnwrapperStream;->fileType:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileUnwrapperStream$1;->$SwitchMap$com$zebra$sdk$util$fileConversion$internal$PrinterWrappingType:[I

    invoke-virtual {p2}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    new-instance p2, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;

    invoke-direct {p2, p1}, Lcom/zebra/sdk/util/fileConversion/internal/MetadataExtractorPassthruStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :pswitch_0
    new-instance p2, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;

    invoke-direct {p2, p1}, Lcom/zebra/sdk/util/fileConversion/internal/MPF_UnwrapperStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :pswitch_1
    new-instance p2, Lcom/zebra/sdk/util/fileConversion/internal/DZ_UnwrapperStream;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/HzoToDzConverterStream;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/util/fileConversion/internal/HzoToDzConverterStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v0}, Lcom/zebra/sdk/util/fileConversion/internal/DZ_UnwrapperStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :pswitch_2
    new-instance p2, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;

    invoke-direct {p2, p1}, Lcom/zebra/sdk/util/fileConversion/internal/CisdfUnwrapperStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :pswitch_3
    new-instance p2, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/DG_ToDyConverterStream;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/util/fileConversion/internal/DG_ToDyConverterStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v0}, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :pswitch_4
    new-instance p2, Lcom/zebra/sdk/util/fileConversion/internal/DZ_UnwrapperStream;

    invoke-direct {p2, p1}, Lcom/zebra/sdk/util/fileConversion/internal/DZ_UnwrapperStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :pswitch_5
    new-instance p2, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;

    invoke-direct {p2, p1}, Lcom/zebra/sdk/util/fileConversion/internal/DY_UnwrapperStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    iput-object p2, p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileUnwrapperStream;->baseStream:Lcom/zebra/sdk/util/fileConversion/internal/StreamDecoratorBase;

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Input stream is null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getPrinterFileMetadata()Lcom/zebra/sdk/util/internal/PrinterFileMetadata;
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileUnwrapperStream;->baseStream:Lcom/zebra/sdk/util/fileConversion/internal/StreamDecoratorBase;

    invoke-virtual {v0}, Lcom/zebra/sdk/util/fileConversion/internal/StreamDecoratorBase;->getPrinterFileMetadata()Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileUnwrapperStream;->fileType:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;->setPrinterWrappingType(Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;)V

    return-object v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileUnwrapperStream;->baseStream:Lcom/zebra/sdk/util/fileConversion/internal/StreamDecoratorBase;

    invoke-virtual {v0}, Lcom/zebra/sdk/util/fileConversion/internal/StreamDecoratorBase;->read()I

    move-result v0

    return v0
.end method
