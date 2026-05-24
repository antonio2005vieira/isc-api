.class public Lcom/zebra/sdk/util/fileConversion/internal/HzoToDzConverterStream;
.super Ljava/io/InputStream;


# instance fields
.field fakeDyHeader:Ljava/lang/String;

.field private preambleSkipped:Z

.field readCounter:I

.field private sourceStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/HzoToDzConverterStream;->fakeDyHeader:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/HzoToDzConverterStream;->readCounter:I

    iput-boolean v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/HzoToDzConverterStream;->preambleSkipped:Z

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/HzoToDzConverterStream;->sourceStream:Ljava/io/InputStream;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "input stream is null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private skipPreamble()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/HzoToDzConverterStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    :goto_0
    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const-string v1, "%c"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "<![CDATA["

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/zebra/sdk/util/fileConversion/internal/HzoToDzConverterStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v3, p0, Lcom/zebra/sdk/util/fileConversion/internal/HzoToDzConverterStream;->preambleSkipped:Z

    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/HzoToDzConverterStream;->preambleSkipped:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zebra/sdk/util/fileConversion/internal/HzoToDzConverterStream;->skipPreamble()V

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/HzoToDzConverterStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_1

    :goto_0
    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/HzoToDzConverterStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_1
    return v0
.end method
