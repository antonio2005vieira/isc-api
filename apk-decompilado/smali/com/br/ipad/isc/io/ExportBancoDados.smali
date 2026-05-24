.class public Lcom/br/ipad/isc/io/ExportBancoDados;
.super Ljava/lang/Object;
.source "ExportBancoDados.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x0

    .line 54
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 56
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    move-object v2, p1

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 63
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_1
    if-eqz v0, :cond_3

    .line 64
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 65
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p1, v0

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 59
    :goto_0
    :try_start_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 63
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2
    if-eqz p1, :cond_3

    .line 64
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 65
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_3
    :goto_1
    return-void

    :catchall_2
    move-exception p2

    :goto_2
    if-eqz v0, :cond_4

    .line 62
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_4
    if-eqz p1, :cond_5

    .line 64
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    .line 66
    :cond_5
    throw p2
.end method


# virtual methods
.method public exportarBancoNovoNome(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 3

    .line 24
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_BANCO:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 28
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_BANCO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "isc_banco"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p2, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance p1, Ljava/io/File;

    const-string p2, "data/data/com.br.ipad.isc/databases/isc_banco"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/br/ipad/isc/io/ExportBancoDados;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public importarBanco()V
    .locals 3

    .line 38
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_BANCO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isc_banco"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_restore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v1, Ljava/io/File;

    const-string v2, "data/data/com.br.ipad.isc/databases/isc_banco"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/br/ipad/isc/io/ExportBancoDados;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 42
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
