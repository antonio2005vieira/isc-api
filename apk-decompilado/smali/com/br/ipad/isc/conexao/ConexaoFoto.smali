.class public Lcom/br/ipad/isc/conexao/ConexaoFoto;
.super Ljava/lang/Object;
.source "ConexaoFoto.java"


# static fields
.field private static final SEND_PHOTOS:B = 0x8t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized doFileUpload(Ljava/io/File;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Z
    .locals 8

    const-class v0, Lcom/br/ipad/isc/conexao/ConexaoFoto;

    monitor-enter v0

    const/high16 v1, 0x100000

    .line 35
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    .line 42
    :try_start_1
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p7

    check-cast p7, Ljava/net/HttpURLConnection;

    const/4 v5, 0x1

    .line 46
    invoke-virtual {p7, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 47
    invoke-virtual {p7, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 48
    invoke-virtual {p7, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v6, "POST"

    .line 49
    invoke-virtual {p7, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v6, "Connection"

    const-string v7, "Keep-Alive"

    .line 50
    invoke-virtual {p7, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Content-Type"

    const-string v7, "multipart/form-data"

    .line 51
    invoke-virtual {p7, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {p7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x8

    .line 55
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 56
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 57
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 58
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 59
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 60
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 62
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v6, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 65
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 66
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result p0

    .line 67
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 68
    new-array p2, p0, [B

    .line 71
    invoke-virtual {p1, p2, v4, p0}, Ljava/io/FileInputStream;->read([BII)I

    move-result p3

    :goto_0
    if-lez p3, :cond_0

    .line 74
    invoke-virtual {v6, p2, v4, p0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 77
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result p0

    .line 78
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 79
    invoke-virtual {p1, p2, v4, p0}, Ljava/io/FileInputStream;->read([BII)I

    move-result p3

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v6, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 84
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 85
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 86
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    invoke-virtual {p7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 102
    invoke-static {p0}, Lcom/br/ipad/isc/util/Util;->getValorRespostaInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "*"

    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    .line 106
    monitor-exit v0

    return v5

    .line 108
    :cond_1
    monitor-exit v0

    return v4

    :catch_0
    move-exception p0

    .line 115
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "ISC"

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Upload file failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    monitor-exit v0

    return v4

    :catch_1
    move-exception p0

    .line 111
    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "ISC"

    .line 112
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Upload file failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    monitor-exit v0

    return v4

    :catch_2
    move-exception p0

    .line 93
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "ISC"

    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot upload file: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 95
    monitor-exit v0

    return v4

    :catch_3
    move-exception p0

    .line 89
    :try_start_6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "ISC"

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot upload file: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 91
    monitor-exit v0

    return v4

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method
