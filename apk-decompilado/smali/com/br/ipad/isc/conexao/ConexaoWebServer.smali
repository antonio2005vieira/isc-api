.class public Lcom/br/ipad/isc/conexao/ConexaoWebServer;
.super Ljava/lang/Object;
.source "ConexaoWebServer.java"


# static fields
.field public static final ABORTADO:I = 0x7

.field public static final ERRO_ABORTAR:I = 0x2

.field public static final ERRO_GENERICO:I = 0x0

.field public static final ERRO_GERACAO_ARQUIVO:I = 0x3

.field public static final ERRO_SINAL_FINALIZACAO:I = 0x5

.field private static final PACOTE_ATUALIZAR_MOVIMENTO:B = 0x1t

.field private static final PACOTE_FINALIZAR_LEITURA:B = 0x2t

.field public static instancia:Lcom/br/ipad/isc/conexao/ConexaoWebServer; = null

.field private static mensagemError:Ljava/lang/String; = null

.field private static respostaServidor:Ljava/lang/String; = "#"


# instance fields
.field buffer:Ljava/lang/StringBuffer;

.field bufferValorParametro:Ljava/lang/StringBuffer;

.field private conn:Ljava/net/HttpURLConnection;

.field private context:Landroid/content/Context;

.field private fileLength:I

.field private mensagem:[B

.field private requestOK:Z

.field private respostaOnline:Ljava/io/InputStream;

.field private serverOnline:Z

.field private tipoArquivo:C


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->context:Landroid/content/Context;

    .line 51
    iput-object v0, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->buffer:Ljava/lang/StringBuffer;

    .line 54
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->bufferValorParametro:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->serverOnline:Z

    .line 60
    iput-boolean v0, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->requestOK:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->context:Landroid/content/Context;

    .line 51
    iput-object v0, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->buffer:Ljava/lang/StringBuffer;

    .line 54
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->bufferValorParametro:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->serverOnline:Z

    .line 60
    iput-boolean v0, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->requestOK:Z

    .line 110
    iput-object p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->context:Landroid/content/Context;

    return-void
.end method

.method public static getInstancia()Lcom/br/ipad/isc/conexao/ConexaoWebServer;
    .locals 1

    .line 79
    sget-object v0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->instancia:Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    invoke-direct {v0}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->instancia:Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    .line 83
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->instancia:Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    return-object v0
.end method

.method public static getMensagemError()Ljava/lang/String;
    .locals 2

    .line 587
    sget-object v0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->mensagemError:Ljava/lang/String;

    const/4 v1, 0x0

    .line 588
    sput-object v1, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->mensagemError:Ljava/lang/String;

    return-object v0
.end method

.method public static getRespostaServidor()Ljava/lang/String;
    .locals 1

    .line 87
    sget-object v0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->respostaServidor:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public comunica(Ljava/lang/String;[B)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    .line 286
    monitor-enter v0

    .line 287
    :try_start_0
    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 288
    invoke-virtual {v1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v2

    .line 292
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ISC"

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http.downloadArquivo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ISC"

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http.downloadApk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    const-string v2, "POST"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 301
    iget-object p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Type"

    const-string v4, "application/octet-stream"

    invoke-virtual {p1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    const-string v2, "User-Agent"

    const-string v4, "Profile/MIDP-2.0 Configuration/CLDC-1.1"

    invoke-virtual {p1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Length"

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xf

    .line 305
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 306
    iget-object p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    const/16 v1, 0xbb8

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 312
    :cond_2
    iget-object p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 313
    iget-object p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 316
    iget-object p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 319
    iget-object p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 323
    iget-object p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    iput p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->fileLength:I

    const-string p1, "ISC"

    .line 326
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileSize: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->fileLength:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 330
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 331
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getValorRespostaInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "*"

    .line 334
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    .line 336
    :goto_1
    iget v4, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->fileLength:I

    if-gt v2, v4, :cond_7

    iget v4, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->fileLength:I

    if-eq v4, v1, :cond_7

    .line 344
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getCharValorRespostaInputStream(Ljava/io/InputStream;)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_4

    .line 348
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 350
    iget-object v5, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    if-ne v2, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 352
    :goto_2
    iget-object v6, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->bufferValorParametro:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2, v4, v6, v5}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->controlarParametros(Ljava/lang/StringBuffer;CLjava/lang/StringBuffer;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 354
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 355
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v4, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->bufferValorParametro:Ljava/lang/StringBuffer;

    goto :goto_3

    .line 363
    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "arquivoRoteiro="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-gt v4, v5, :cond_6

    .line 364
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "apk="

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v5, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 365
    :cond_6
    :goto_4
    iget-object p2, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p2

    add-int/2addr v2, v1

    sub-int/2addr p2, v2

    iput p2, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->fileLength:I

    :cond_7
    const-string p2, "*"

    .line 373
    sput-object p2, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->respostaServidor:Ljava/lang/String;

    .line 376
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->setRespostaOnline(Ljava/io/InputStream;)V

    goto :goto_7

    :cond_8
    const-string v2, "#"

    .line 380
    sput-object v2, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->respostaServidor:Ljava/lang/String;

    const/4 v2, 0x1

    .line 382
    :goto_5
    iget-object v4, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    if-gt v2, v4, :cond_b

    .line 392
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getCharValorRespostaInputStream(Ljava/io/InputStream;)C

    move-result v4

    .line 393
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 395
    iget-object v5, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    if-ne v2, v5, :cond_9

    const/4 v5, 0x1

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    .line 397
    :goto_6
    iget-object v6, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->bufferValorParametro:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2, v4, v6, v5}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->controlarParametros(Ljava/lang/StringBuffer;CLjava/lang/StringBuffer;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 398
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 399
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v4, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->bufferValorParametro:Ljava/lang/StringBuffer;

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 404
    :cond_b
    :goto_7
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method public comunicar(Ljava/lang/String;Ljava/util/Vector;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    .line 415
    monitor-enter v0

    .line 417
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    invoke-virtual {p2}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ISC"

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http.downloadArquivo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    invoke-virtual {p2}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ISC"

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http.downloadApk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    :cond_1
    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 424
    invoke-virtual {p2}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ISC"

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http.downloadRota: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->empacotarParametros(Ljava/util/Vector;)[B

    move-result-object p1

    .line 434
    iget-object v1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 435
    iget-object v1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    const-string v2, "User-Agent"

    const-string v3, "Profile/MIDP-2.0 Configuration/CLDC-1.1"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Length"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    const-string v2, "Accept-Encoding"

    const-string v3, "identity"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xf

    .line 440
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 441
    iget-object p2, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    const/16 v1, 0xbb8

    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 p2, 0x0

    .line 447
    :try_start_1
    iget-object v1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 448
    iget-object v1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 450
    iget-object v1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    :try_start_2
    iget-object v1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 462
    iget-object p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_4

    .line 464
    iget-object p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    iput p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->fileLength:I

    const-string p1, "ISC"

    .line 466
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileSize: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->fileLength:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 471
    :cond_4
    monitor-exit v0

    return-object p2

    :catch_0
    move-exception p1

    .line 453
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "ISC"

    .line 454
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    .line 471
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public controlarParametros(Ljava/lang/StringBuffer;CLjava/lang/StringBuffer;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 602
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mensagem="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    const-string v3, "tipoArquivo="

    const-string v4, "imoveis="

    const/4 v5, -0x1

    if-le v0, v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0x9

    if-gt v0, v6, :cond_2

    .line 606
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v5, :cond_1

    .line 607
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0x8

    if-gt v0, v6, :cond_2

    .line 610
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v5, :cond_8

    .line 611
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0xc

    if-le v0, v6, :cond_8

    :cond_2
    const/16 v0, 0x26

    if-eq p2, v0, :cond_4

    if-eqz p4, :cond_3

    goto :goto_0

    .line 639
    :cond_3
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 617
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-le p2, v5, :cond_5

    .line 618
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->mensagemError:Ljava/lang/String;

    goto :goto_1

    .line 628
    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-le p2, v5, :cond_6

    .line 631
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;->getInstance()Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;->setMatriculasRevisitar(Ljava/lang/String;)V

    goto :goto_1

    .line 633
    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-le p1, v5, :cond_7

    .line 634
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->setTipoArquivo(C)V

    :cond_7
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_8
    :goto_2
    return v2
.end method

.method public empacotarParametros(Ljava/util/Vector;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 519
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 523
    invoke-virtual {p1}, Ljava/util/Vector;->trimToSize()V

    if-eqz p1, :cond_6

    .line 527
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 529
    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 530
    instance-of v5, v4, Ljava/lang/Byte;

    if-eqz v5, :cond_0

    .line 531
    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_1

    .line 532
    :cond_0
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 533
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    .line 534
    :cond_1
    instance-of v5, v4, Ljava/lang/Short;

    if-eqz v5, :cond_2

    .line 535
    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1

    .line 536
    :cond_2
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_3

    .line 537
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_1

    .line 538
    :cond_3
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 539
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    .line 540
    :cond_4
    instance-of v5, v4, [B

    if-eqz v5, :cond_5

    .line 541
    check-cast v4, [B

    check-cast v4, [B

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 547
    :cond_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 550
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 554
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p1
.end method

.method public enviaImovel(Ljava/lang/Integer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 246
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->serverOnline()Z

    move-result v1

    iput-boolean v1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->serverOnline:Z

    if-eqz v1, :cond_0

    .line 250
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorRetorno;->getInstance()Lcom/br/ipad/isc/controladores/ControladorRetorno;

    move-result-object v1

    .line 251
    invoke-virtual {v1, p1}, Lcom/br/ipad/isc/controladores/ControladorRetorno;->geraRetornoImovel(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    .line 253
    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 254
    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v2, Ljava/lang/Long;

    iget-object v3, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/br/ipad/isc/util/Util;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v2, "UTF-8"

    .line 258
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 270
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ISC"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public enviarImovel([BLandroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 679
    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->setContext(Landroid/content/Context;)V

    .line 682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 683
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x1

    .line 684
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 685
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 686
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    const/4 p1, 0x0

    .line 688
    invoke-virtual {p0, v0, p1, p2}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->iniciarServicoRede(Ljava/util/ArrayList;ZLandroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->requestOK:Z

    return p1
.end method

.method public declared-synchronized enviarMensagem()Z
    .locals 6

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->mensagem:[B

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    :try_start_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->serverOnline()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "https://batchsanep.gruporas.com.br/gsan/processarRequisicaoDipositivoMovelImpressaoSimultaneaAndroidAction.do"

    .line 130
    iget-object v4, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->mensagem:[B

    invoke-virtual {p0, v3, v4}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->comunica(Ljava/lang/String;[B)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v3

    .line 140
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    const-string v4, "ISC"

    .line 141
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v3

    .line 136
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    const-string v4, "ISC"

    .line 137
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 146
    :goto_1
    sget-object v4, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->respostaServidor:Ljava/lang/String;

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 161
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_2

    .line 162
    iget-object v2, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v2, v1

    goto :goto_5

    :cond_2
    const-string v1, "#"

    .line 166
    :goto_3
    sput-object v1, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->respostaServidor:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :goto_4
    :try_start_4
    const-string v3, "ISC"

    .line 156
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "#"

    .line 158
    sput-object v1, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->respostaServidor:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    :try_start_5
    iget-object v1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_3

    .line 162
    iget-object v1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    :cond_3
    const-string v1, "#"

    goto :goto_3

    .line 172
    :goto_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 173
    monitor-exit p0

    return v2

    .line 161
    :goto_6
    :try_start_6
    iget-object v2, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_4

    .line 162
    iget-object v2, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_7

    :cond_4
    const-string v2, "#"

    .line 166
    sput-object v2, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->respostaServidor:Ljava/lang/String;

    .line 171
    :goto_7
    throw v1

    :catchall_1
    move-exception v1

    .line 172
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public finalizarLeitura([BLandroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 699
    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->setContext(Landroid/content/Context;)V

    .line 702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 703
    new-instance v1, Ljava/lang/Byte;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    check-cast p1, [B

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    const/4 p1, 0x1

    .line 706
    invoke-virtual {p0, v0, p1, p2}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->iniciarServicoRede(Ljava/util/ArrayList;ZLandroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->requestOK:Z

    return p1
.end method

.method public getFileLength()I
    .locals 1

    .line 574
    iget v0, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->fileLength:I

    return v0
.end method

.method public getRespostaOnline()Ljava/io/InputStream;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->respostaOnline:Ljava/io/InputStream;

    return-object v0
.end method

.method public getTipoArquivo()C
    .locals 1

    .line 582
    iget-char v0, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->tipoArquivo:C

    return v0
.end method

.method public declared-synchronized iniciarServicoRede(Ljava/util/ArrayList;ZLandroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;Z",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 661
    :try_start_0
    invoke-static {p3}, Lcom/br/ipad/isc/util/Util;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 666
    :cond_0
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->empacotarParametros(Ljava/util/ArrayList;)[B

    move-result-object p1

    .line 667
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->setMensagem([B)V

    .line 668
    invoke-virtual {p0}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->enviarMensagem()Z

    move-result p1

    iput-boolean p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->requestOK:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 670
    :try_start_1
    iput-boolean p2, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->requestOK:Z

    .line 671
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 673
    :goto_0
    iget-boolean p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->requestOK:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public isRequestOK()Z
    .locals 1

    .line 711
    iget-boolean v0, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->requestOK:Z

    return v0
.end method

.method public routeFinalizationSignal()Z
    .locals 3

    .line 187
    invoke-virtual {p0}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->serverOnline()Z

    move-result v0

    iput-boolean v0, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->serverOnline:Z

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 192
    new-instance v1, Ljava/lang/Byte;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v1, Ljava/lang/Long;

    iget-object v2, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public routeInitializationSignal()Z
    .locals 5

    const-string v0, "ISC"

    .line 209
    invoke-virtual {p0}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->serverOnline()Z

    move-result v1

    iput-boolean v1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->serverOnline:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 213
    new-instance v1, Ljava/util/Vector;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/Vector;-><init>(I)V

    .line 214
    new-instance v3, Ljava/lang/Byte;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v3, Ljava/lang/Long;

    iget-object v4, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :try_start_0
    const-string v3, "https://batchsanep.gruporas.com.br/gsan/processarRequisicaoDipositivoMovelImpressaoSimultaneaAndroidAction.do"

    .line 218
    invoke-virtual {p0, v3, v1}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->comunicar(Ljava/lang/String;Ljava/util/Vector;)Ljava/io/InputStream;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 225
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 226
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    .line 221
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 222
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2
.end method

.method public serverOnline()Z
    .locals 4

    const/4 v0, 0x0

    .line 493
    :try_start_0
    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 494
    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v2, Ljava/lang/Long;

    iget-object v3, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/br/ipad/isc/util/Util;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v2, "https://batchsanep.gruporas.com.br/gsan/processarRequisicaoDipositivoMovelImpressaoSimultaneaAndroidAction.do"

    .line 497
    invoke-virtual {p0, v2, v1}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->comunicar(Ljava/lang/String;Ljava/util/Vector;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 500
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 507
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 508
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISC"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->context:Landroid/content/Context;

    return-void
.end method

.method public setFileLength(I)V
    .locals 0

    .line 570
    iput p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->fileLength:I

    return-void
.end method

.method public setMensagem([B)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->mensagem:[B

    return-void
.end method

.method public setRespostaOnline(Ljava/io/InputStream;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->respostaOnline:Ljava/io/InputStream;

    return-void
.end method

.method public setTipoArquivo(C)V
    .locals 0

    .line 578
    iput-char p1, p0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->tipoArquivo:C

    return-void
.end method
