.class public Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;
.super Ljava/io/InputStream;


# instance fields
.field private dataFormatSpecifier:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

.field headerParts:[Ljava/lang/String;

.field preReaderDataHeader:[I

.field preReaderDataHeaderIndex:I

.field sourceStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iput-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->headerParts:[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->preReaderDataHeader:[I

    iput v2, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->preReaderDataHeaderIndex:I

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->OTHER:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    iput-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->dataFormatSpecifier:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->sourceStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    if-eq v1, v0, :cond_2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_1

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->headerParts:[Ljava/lang/String;

    aget-object v7, v6, v1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v7, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ne v1, v0, :cond_5

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->headerParts:[Ljava/lang/String;

    aget-object v1, v0, v2

    sget-object v4, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_COMMAND_PREFIX:Ljava/lang/String;

    const-string v5, "~"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "~DZ"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    :goto_2
    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->preReaderDataHeader:[I

    array-length v1, v0

    if-ge v2, v1, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->setDataFormatSpecifier()V

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->isDataMimed()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->ignorePrereadData()V

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid ~DZ Header"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private ignorePrereadData()V
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->preReaderDataHeader:[I

    array-length v0, v0

    iput v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->preReaderDataHeaderIndex:I

    return-void
.end method

.method private isDataMimed()Z
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->dataFormatSpecifier:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->MIME_COMPRESSED:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->dataFormatSpecifier:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->MIME_UNCOMPRESSED:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

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

.method private isMimeCompressed()Z
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->preReaderDataHeader:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([III)V

    const-string v1, ":Z64:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isMimeUncompressed()Z
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->preReaderDataHeader:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([III)V

    const-string v1, ":B64:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setDataFormatSpecifier()V
    .locals 1

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->isMimeUncompressed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->MIME_UNCOMPRESSED:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    :goto_0
    iput-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->dataFormatSpecifier:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->isMimeCompressed()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->MIME_COMPRESSED:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->RAW_BINARY:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public getDataFormatSpecifier()Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->dataFormatSpecifier:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    return-object v0
.end method

.method public getFilenameOnPrinter()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->headerParts:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSourceStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->sourceStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getTotalBytesInData()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->headerParts:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->headerParts:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-ltz v0, :cond_1

    return v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid ~DZ Header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->preReaderDataHeaderIndex:I

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->preReaderDataHeader:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->preReaderDataHeaderIndex:I

    aget v0, v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DZ_DataProviderStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    return v0
.end method
