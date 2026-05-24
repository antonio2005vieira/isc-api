.class public Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;
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

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v4, 0x2

    aput-object v3, v1, v4

    const/4 v4, 0x3

    aput-object v3, v1, v4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    iput-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->headerParts:[Ljava/lang/String;

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->preReaderDataHeader:[I

    iput v2, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->preReaderDataHeaderIndex:I

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->OTHER:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    iput-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->dataFormatSpecifier:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->sourceStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    if-eq v1, v0, :cond_2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->sourceStream:Ljava/io/InputStream;

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

    iget-object v6, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->headerParts:[Ljava/lang/String;

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

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->headerParts:[Ljava/lang/String;

    aget-object v1, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_COMMAND_PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "DY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->headerParts:[Ljava/lang/String;

    aget-object v1, v0, v2

    const-string v4, "~DY"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->checkAndAdjustFileNameAndExtensionCode()V

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->adjustDataFormatSpecifier()V

    :goto_2
    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->preReaderDataHeader:[I

    array-length v1, v0

    if-ge v2, v1, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->setDataFormatSpecifier()V

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->isDataMimed()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->ignorePrereadData()V

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid ~DY Header"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private adjustDataFormatSpecifier()V
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "B"

    aput-object v2, v0, v1

    const-string v1, "E"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "T"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v5, "NRD"

    aput-object v5, v0, v1

    const/4 v1, 0x4

    const-string v5, "PAC"

    aput-object v5, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->headerParts:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->headerParts:[Ljava/lang/String;

    aput-object v2, v0, v3

    :cond_0
    return-void
.end method

.method private checkAndAdjustFileNameAndExtensionCode()V
    .locals 12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "BMP"

    const-string v2, "B"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TTE"

    const-string v3, "E"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GRF"

    const-string v4, "G"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PNG"

    const-string v5, "P"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TTF"

    const-string v6, "T"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PCX"

    const-string v7, "X"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NRD"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "PAC"

    invoke-interface {v0, v8, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v2, 0x1

    aput-object v3, v9, v2

    const/4 v3, 0x2

    aput-object v4, v9, v3

    const/4 v11, 0x3

    aput-object v5, v9, v11

    const/4 v5, 0x4

    aput-object v6, v9, v5

    const/4 v5, 0x5

    aput-object v7, v9, v5

    const/4 v5, 0x6

    aput-object v1, v9, v5

    const/4 v1, 0x7

    aput-object v8, v9, v1

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v5, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->headerParts:[Ljava/lang/String;

    aget-object v5, v5, v10

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->headerParts:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->headerParts:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    array-length v1, v5

    if-ne v3, v1, :cond_1

    aget-object v1, v5, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    aget-object v1, v5, v2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, v5, v2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->headerParts:[Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->headerParts:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v5, v10

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v10

    goto :goto_1

    :cond_3
    return-void
.end method

.method private ignorePrereadData()V
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->preReaderDataHeader:[I

    array-length v0, v0

    iput v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->preReaderDataHeaderIndex:I

    return-void
.end method

.method private isDataMimed()Z
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->dataFormatSpecifier:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->MIME_COMPRESSED:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->dataFormatSpecifier:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

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

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->preReaderDataHeader:[I

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

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->preReaderDataHeader:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([III)V

    const-string v1, ":B64:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setDataFormatSpecifier()V
    .locals 2

    invoke-virtual {p0}, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->getFormatDownloadedInDataField()Ljava/lang/String;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->RAW_BINARY:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    :goto_0
    iput-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->dataFormatSpecifier:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->isMimeUncompressed()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->MIME_UNCOMPRESSED:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->isMimeCompressed()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->MIME_COMPRESSED:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->ASCII_HEX:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public getBytesPerRow()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->headerParts:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->headerParts:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-ltz v2, :cond_1

    return v2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid ~DY Header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDataFormatSpecifier()Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->dataFormatSpecifier:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    return-object v0
.end method

.method public getFileExtensionCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->headerParts:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getFilenameOnPrinter()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->headerParts:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getFormatDownloadedInDataField()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->headerParts:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSourceStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->sourceStream:Ljava/io/InputStream;

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
    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->headerParts:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->headerParts:[Ljava/lang/String;

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

    const-string v1, "Invalid ~DY Header"

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

    iget v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->preReaderDataHeaderIndex:I

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->preReaderDataHeader:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->preReaderDataHeaderIndex:I

    aget v0, v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DYDataProviderStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    return v0
.end method
