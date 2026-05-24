.class public Lcom/zebra/sdk/device/internal/ProfileAssembler;
.super Ljava/lang/Object;


# instance fields
.field private bos:Ljava/io/OutputStream;

.field private zos:Ljava/util/zip/ZipOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/device/internal/ProfileAssembler;->zos:Ljava/util/zip/ZipOutputStream;

    iput-object v0, p0, Lcom/zebra/sdk/device/internal/ProfileAssembler;->bos:Ljava/io/OutputStream;

    return-void
.end method

.method private addEntry(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/device/internal/ProfileAssembler;->zos:Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 p1, 0x4000

    new-array p1, p1, [B

    :goto_0
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iget-object v1, p0, Lcom/zebra/sdk/device/internal/ProfileAssembler;->zos:Ljava/util/zip/ZipOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zebra/sdk/device/internal/ProfileAssembler;->zos:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void
.end method


# virtual methods
.method public addAlerts(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "alerts.json"

    invoke-direct {p0, v0, p1}, Lcom/zebra/sdk/device/internal/ProfileAssembler;->addEntry(Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method public addFiles(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    invoke-direct {p0, v1, v2}, Lcom/zebra/sdk/device/internal/ProfileAssembler;->addEntry(Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addFirmware(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p1, "firmwareFileUserSpecifiedName.txt"

    invoke-direct {p0, p1, v0}, Lcom/zebra/sdk/device/internal/ProfileAssembler;->addEntry(Ljava/lang/String;Ljava/io/InputStream;)V

    const-string p1, "firmwareFile.txt"

    invoke-direct {p0, p1, p2}, Lcom/zebra/sdk/device/internal/ProfileAssembler;->addEntry(Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method public addSettings(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "settings.json"

    invoke-direct {p0, v0, p1}, Lcom/zebra/sdk/device/internal/ProfileAssembler;->addEntry(Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method public addSupplement(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "profileSupplement.txt"

    invoke-direct {p0, v0, p1}, Lcom/zebra/sdk/device/internal/ProfileAssembler;->addEntry(Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method public begin(Ljava/io/OutputStream;)V
    .locals 1

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/zebra/sdk/device/internal/ProfileAssembler;->bos:Ljava/io/OutputStream;

    new-instance p1, Ljava/util/zip/ZipOutputStream;

    iget-object v0, p0, Lcom/zebra/sdk/device/internal/ProfileAssembler;->bos:Ljava/io/OutputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/zebra/sdk/device/internal/ProfileAssembler;->zos:Ljava/util/zip/ZipOutputStream;

    return-void
.end method

.method public end()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/device/internal/ProfileAssembler;->zos:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    iget-object v0, p0, Lcom/zebra/sdk/device/internal/ProfileAssembler;->bos:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method
