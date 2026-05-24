.class public Lcom/zebra/sdk/comm/internal/FTP;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "1234"

.field private static final DEFAULT_USER:Ljava/lang/String; = "user"


# instance fields
.field client:Lorg/apache/commons/net/ftp/FTPClient;

.field password:Ljava/lang/String;

.field server:Ljava/lang/String;

.field user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/comm/internal/FTP;->server:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, "user"

    :cond_0
    iput-object p2, p0, Lcom/zebra/sdk/comm/internal/FTP;->user:Ljava/lang/String;

    if-nez p3, :cond_1

    const-string p3, "1234"

    :cond_1
    iput-object p3, p0, Lcom/zebra/sdk/comm/internal/FTP;->password:Ljava/lang/String;

    new-instance p1, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {p1}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    return-void
.end method

.method private deleteFile(Lorg/apache/commons/net/ftp/FTPFile;Lorg/apache/commons/net/ftp/FTPClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-virtual {p2}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-direct {p0, v3, p2}, Lcom/zebra/sdk/comm/internal/FTP;->deleteFile(Lorg/apache/commons/net/ftp/FTPFile;Lorg/apache/commons/net/ftp/FTPClient;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, ".."

    invoke-virtual {p2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->removeDirectory(Ljava/lang/String;)Z

    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/commons/net/ftp/FTPClient;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public deleteAllFilesAndSubDirectories(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const-string v0, "/"

    :try_start_0
    iget-object v1, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    iget-object v2, p0, Lcom/zebra/sdk/comm/internal/FTP;->server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    iget-object v2, p0, Lcom/zebra/sdk/comm/internal/FTP;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/zebra/sdk/comm/internal/FTP;->password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {p0, v4, v5}, Lcom/zebra/sdk/comm/internal/FTP;->deleteFile(Lorg/apache/commons/net/ftp/FTPFile;Lorg/apache/commons/net/ftp/FTPClient;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    const-string v2, ".."

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_3

    :try_start_1
    iget-object p1, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_2
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_3
    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_4
    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public getFile(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    iget-object v1, p0, Lcom/zebra/sdk/comm/internal/FTP;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    iget-object v1, p0, Lcom/zebra/sdk/comm/internal/FTP;->user:Ljava/lang/String;

    iget-object v2, p0, Lcom/zebra/sdk/comm/internal/FTP;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0, p2, p1}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFile(Ljava/lang/String;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    new-instance p1, Lcom/zebra/sdk/comm/ConnectionException;

    const-string p2, "Could not connect to printer over FTP, make sure FTP is enabled"

    invoke-direct {p1, p2}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_3
    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object p2, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p2}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_2

    :try_start_4
    iget-object p2, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_2
    throw p1
.end method

.method public putFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/zebra/sdk/comm/internal/FtpFileHolder;

    new-instance v1, Lcom/zebra/sdk/comm/internal/FtpFileHolder;

    invoke-direct {v1, p1, p2, p3}, Lcom/zebra/sdk/comm/internal/FtpFileHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/comm/internal/FTP;->putFiles(Ljava/util/List;)V

    return-void
.end method

.method public putFile(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/zebra/sdk/comm/internal/FTP;->putFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method public putFiles(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/comm/internal/FtpFileHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const-string v0, "/"

    :try_start_0
    iget-object v1, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    iget-object v2, p0, Lcom/zebra/sdk/comm/internal/FTP;->server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    iget-object v2, p0, Lcom/zebra/sdk/comm/internal/FTP;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/zebra/sdk/comm/internal/FTP;->password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zebra/sdk/comm/internal/FtpFileHolder;

    iget-object v2, v1, Lcom/zebra/sdk/comm/internal/FtpFileHolder;->pathOnServer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/zebra/sdk/comm/internal/FtpFileHolder;->pathOnServer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zebra/sdk/comm/internal/FtpFileHolder;->pathOnServer:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    iget-object v3, v1, Lcom/zebra/sdk/comm/internal/FtpFileHolder;->pathOnServer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->makeDirectory(Ljava/lang/String;)Z

    iget-object v2, v1, Lcom/zebra/sdk/comm/internal/FtpFileHolder;->fileName:Ljava/lang/String;

    const-string v3, ":"

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/zebra/sdk/comm/internal/FtpFileHolder;->pathOnServer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/zebra/sdk/comm/internal/FtpFileHolder;->fileStream:Ljava/io/InputStream;

    invoke-virtual {v3, v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->storeFile(Ljava/lang/String;Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    :try_start_1
    iget-object p1, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_2
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/FTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_3
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
