.class public Lcom/zebra/sdk/device/internal/ProfileDisassembler;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disassemble(Ljava/io/InputStream;Lcom/zebra/sdk/device/internal/ProfileComponentHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/util/zip/ZipInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "settings.json"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, p1}, Lcom/zebra/sdk/device/internal/ProfileComponentHandler;->settingsHandler(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    const-string v2, "alerts.json"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2, p1}, Lcom/zebra/sdk/device/internal/ProfileComponentHandler;->alertsHandler(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    const-string v2, "profileSupplement.txt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, p1}, Lcom/zebra/sdk/device/internal/ProfileComponentHandler;->supplementHandler(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_2
    const-string v2, "firmwareFile.txt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2, p1}, Lcom/zebra/sdk/device/internal/ProfileComponentHandler;->firmwareHandler(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_3
    const-string v2, "firmwareFileUserSpecifiedName.txt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2, p1}, Lcom/zebra/sdk/device/internal/ProfileComponentHandler;->firmwareDisplayNameHandler(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_4
    invoke-interface {p2, v1, p1}, Lcom/zebra/sdk/device/internal/ProfileComponentHandler;->fileHandler(Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    return-void
.end method
