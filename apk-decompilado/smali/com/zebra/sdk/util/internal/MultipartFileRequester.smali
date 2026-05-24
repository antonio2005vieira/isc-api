.class public Lcom/zebra/sdk/util/internal/MultipartFileRequester;
.super Ljava/lang/Object;


# instance fields
.field private connection:Lcom/zebra/sdk/comm/Connection;

.field private fullFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/MultipartFileRequester;->connection:Lcom/zebra/sdk/comm/Connection;

    iput-object p2, p0, Lcom/zebra/sdk/util/internal/MultipartFileRequester;->fullFilePath:Ljava/lang/String;

    return-void
.end method

.method private generateBoundary()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\-|\\{|\\}"

    const-string v2, "Z"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private send()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/MultipartFileRequester;->fullFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zebra/sdk/util/internal/MultipartFileRequester;->sendToPrinter()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No file name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static send(Lcom/zebra/sdk/comm/Connection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/util/internal/MultipartFileRequester;

    invoke-direct {v0, p0, p1}, Lcom/zebra/sdk/util/internal/MultipartFileRequester;-><init>(Lcom/zebra/sdk/comm/Connection;Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/zebra/sdk/util/internal/MultipartFileRequester;->send()V

    return-void
.end method

.method private sendToPrinter()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/util/internal/MultipartFileRequester;->generateBoundary()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v2, p0, Lcom/zebra/sdk/util/internal/MultipartFileRequester;->fullFilePath:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v0, "{}--%s\r\nContent-Disposition: filename=\"%s\"; action=\"retrieve\"\r\nContent-Type: application/octet-stream\r\nContent-Transfer-Encoding: binary\r\n\r\n\r\n--%s--\r\n\r\n"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/util/internal/MultipartFileRequester;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    return-void
.end method
