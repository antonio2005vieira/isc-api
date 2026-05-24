.class public Lcom/zebra/sdk/util/internal/ZipUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;
    }
.end annotation


# instance fields
.field private bis:Ljava/io/BufferedInputStream;

.field private fis:Ljava/io/FileInputStream;

.field private final pathToZipFile:Ljava/lang/String;

.field private zin:Ljava/util/zip/ZipInputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->fis:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->zin:Ljava/util/zip/ZipInputStream;

    iput-object v0, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->bis:Ljava/io/BufferedInputStream;

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->pathToZipFile:Ljava/lang/String;

    return-void
.end method

.method private openStreams()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/util/internal/ZipUtil;->closeStreams()V

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->pathToZipFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->fis:Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->fis:Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->bis:Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/util/zip/ZipInputStream;

    iget-object v1, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->bis:Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->zin:Ljava/util/zip/ZipInputStream;

    return-void
.end method

.method private readEntries()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/util/internal/ZipUtil;->getEntryNames()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    new-instance v3, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;

    invoke-virtual {p0, v2}, Lcom/zebra/sdk/util/internal/ZipUtil;->extractEntry(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, p0, v2, v4}, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;-><init>(Lcom/zebra/sdk/util/internal/ZipUtil;Ljava/lang/String;[B)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private writeEntries(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->pathToZipFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;

    new-instance v3, Ljava/util/zip/ZipEntry;

    iget-object v4, v2, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->name:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->extraData:[B

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->extraData:[B

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    iget-object v3, v2, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->srcData:[B

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->srcData:[B

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->write([B)V

    goto :goto_2

    :cond_1
    iget-object v3, v2, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->srcFile:Ljava/io/File;

    if-eqz v3, :cond_3

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v2, v2, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->srcFile:Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x4000

    new-array v2, v2, [B

    :goto_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method


# virtual methods
.method public addEntry(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zebra/sdk/util/internal/ZipUtil;->addEntry(Ljava/lang/String;Ljava/io/File;[B)V

    return-void
.end method

.method public addEntry(Ljava/lang/String;Ljava/io/File;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->pathToZipFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/util/internal/ZipUtil;->removeEntry(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zebra/sdk/util/internal/ZipUtil;->readEntries()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;-><init>(Lcom/zebra/sdk/util/internal/ZipUtil;Ljava/lang/String;Ljava/io/File;[B)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/zebra/sdk/util/internal/ZipUtil;->writeEntries(Ljava/util/Set;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public addEntry(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zebra/sdk/util/internal/ZipUtil;->addEntry(Ljava/lang/String;[B[B)V

    return-void
.end method

.method public addEntry(Ljava/lang/String;[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->pathToZipFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/util/internal/ZipUtil;->removeEntry(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zebra/sdk/util/internal/ZipUtil;->readEntries()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;-><init>(Lcom/zebra/sdk/util/internal/ZipUtil;Ljava/lang/String;[B[B)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/zebra/sdk/util/internal/ZipUtil;->writeEntries(Ljava/util/Set;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public closeStreams()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->zin:Ljava/util/zip/ZipInputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    iput-object v1, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->zin:Ljava/util/zip/ZipInputStream;

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->bis:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    iput-object v1, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->bis:Ljava/io/BufferedInputStream;

    :cond_1
    iget-object v0, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->fis:Ljava/io/FileInputStream;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    iput-object v1, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->fis:Ljava/io/FileInputStream;

    :cond_2
    return-void
.end method

.method public containsEntry(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/zebra/sdk/util/internal/ZipUtil;->openStreams()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->zin:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zebra/sdk/util/internal/ZipUtil;->closeStreams()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public extractEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/util/internal/ZipUtil;->openStreams()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->zin:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x4000

    new-array v1, v1, [B

    :goto_1
    iget-object v2, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->zin:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/zebra/sdk/util/internal/ZipUtil;->closeStreams()V

    return-void
.end method

.method public extractEntry(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/util/internal/ZipUtil;->getInputStreamToEntry(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x4000

    new-array v1, v1, [B

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/zebra/sdk/util/internal/ZipUtil;->closeStreams()V

    return-object p1
.end method

.method public extractExtraFromEntry(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/util/internal/ZipUtil;->openStreams()V

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->zin:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/zebra/sdk/util/internal/ZipUtil;->closeStreams()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getEntryContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/util/internal/ZipUtil;->extractEntry(Ljava/lang/String;)[B

    move-result-object p1

    const-string v1, "utf8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getEntryExtraContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/util/internal/ZipUtil;->extractExtraFromEntry(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getEntryNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-direct {p0}, Lcom/zebra/sdk/util/internal/ZipUtil;->openStreams()V

    :goto_0
    iget-object v1, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->zin:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zebra/sdk/util/internal/ZipUtil;->closeStreams()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getInputStreamToEntry(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/util/internal/ZipUtil;->openStreams()V

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->zin:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->zin:Ljava/util/zip/ZipInputStream;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/zebra/sdk/util/internal/ZipUtil;->closeStreams()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public removeEntry(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/ZipUtil;->pathToZipFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zebra/sdk/util/internal/ZipUtil;->readEntries()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;

    invoke-direct {v1, p0, p1}, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;-><init>(Lcom/zebra/sdk/util/internal/ZipUtil;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/zebra/sdk/util/internal/ZipUtil;->writeEntries(Ljava/util/Set;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
