.class public Lcom/zebra/sdk/util/fileConversion/internal/CisdfWrapperStream;
.super Ljava/io/InputStream;


# instance fields
.field private cisdfHeader:Ljava/io/ByteArrayInputStream;

.field private sourceStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/zebra/sdk/util/internal/PrinterFileMetadata;)V
    .locals 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/CisdfWrapperStream;->sourceStream:Ljava/io/InputStream;

    new-instance p1, Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;->getCrc16()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p2}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;->getFileName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p2}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;->getFileSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p2}, Lcom/zebra/sdk/util/internal/PrinterFileMetadata;->getCheckSum()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const-string p2, "! CISDFCRC16\r\n%s\r\n%s\r\n%08X\r\n%s\r\n"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/CisdfWrapperStream;->cisdfHeader:Ljava/io/ByteArrayInputStream;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/CisdfWrapperStream;->cisdfHeader:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/CisdfWrapperStream;->cisdfHeader:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/util/fileConversion/internal/CisdfWrapperStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    return v0
.end method
