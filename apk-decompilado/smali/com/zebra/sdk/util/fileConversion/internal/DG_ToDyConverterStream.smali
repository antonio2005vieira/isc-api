.class public Lcom/zebra/sdk/util/fileConversion/internal/DG_ToDyConverterStream;
.super Ljava/io/InputStream;


# instance fields
.field fakeDyHeader:Ljava/lang/String;

.field readCounter:I

.field private sourceStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DG_ToDyConverterStream;->fakeDyHeader:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DG_ToDyConverterStream;->readCounter:I

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DG_ToDyConverterStream;->sourceStream:Ljava/io/InputStream;

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    new-array v2, p1, [Ljava/lang/String;

    aput-object v0, v2, v1

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v4, 0x2

    aput-object v0, v2, v4

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    if-eq v0, p1, :cond_2

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/zebra/sdk/util/fileConversion/internal/DG_ToDyConverterStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_1

    const/16 v6, 0x1f

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-ne v0, p1, :cond_3

    aget-object p1, v2, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_COMMAND_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "DG"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "~DY"

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    aget-object p1, v2, v1

    const-string v0, "~DG"

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",A,G,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v2, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v4

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DG_ToDyConverterStream;->fakeDyHeader:Ljava/lang/String;

    invoke-static {p1}, Lcom/zebra/sdk/util/internal/ZPLUtilities;->replaceAllWithInternalCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DG_ToDyConverterStream;->fakeDyHeader:Ljava/lang/String;

    return-void

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid ~DG Header"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "input stream is null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DG_ToDyConverterStream;->readCounter:I

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DG_ToDyConverterStream;->fakeDyHeader:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DG_ToDyConverterStream;->fakeDyHeader:Ljava/lang/String;

    iget v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/DG_ToDyConverterStream;->readCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zebra/sdk/util/fileConversion/internal/DG_ToDyConverterStream;->readCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/DG_ToDyConverterStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method
