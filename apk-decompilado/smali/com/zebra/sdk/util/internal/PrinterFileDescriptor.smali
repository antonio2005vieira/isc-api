.class public Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;
.super Ljava/lang/Object;


# instance fields
.field private metaData:Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

.field private name:Ljava/lang/String;

.field private sourceStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Lcom/zebra/sdk/util/internal/PrinterFileMetadata;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;->sourceStream:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;->metaData:Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Source stream is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Drive letter not specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "File name not provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCheckSum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;->metaData:Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    invoke-virtual {v0}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;->getCheckSum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCrc16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;->metaData:Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    invoke-virtual {v0}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;->getCrc16()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;->metaData:Lcom/zebra/sdk/util/internal/PrinterFileMetadata;

    invoke-virtual {v0}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;->sourceStream:Ljava/io/InputStream;

    return-object v0
.end method
