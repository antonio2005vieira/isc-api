.class public Lcom/br/ipad/isc/fachada/FachadaWebServer;
.super Ljava/lang/Object;
.source "FachadaWebServer.java"


# static fields
.field public static final CS_CONFIRMAR_RECEBIMENTO:B = 0x3t

.field public static indcConfirmacaRecebimento:Z = false

.field private static instance:Lcom/br/ipad/isc/fachada/FachadaWebServer;


# instance fields
.field private conexaoWebServer:Lcom/br/ipad/isc/conexao/ConexaoWebServer;

.field private requestOK:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/br/ipad/isc/fachada/FachadaWebServer;->requestOK:Z

    return-void
.end method

.method public static getInstancia()Lcom/br/ipad/isc/fachada/FachadaWebServer;
    .locals 1

    .line 50
    sget-object v0, Lcom/br/ipad/isc/fachada/FachadaWebServer;->instance:Lcom/br/ipad/isc/fachada/FachadaWebServer;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/br/ipad/isc/fachada/FachadaWebServer;

    invoke-direct {v0}, Lcom/br/ipad/isc/fachada/FachadaWebServer;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/fachada/FachadaWebServer;->instance:Lcom/br/ipad/isc/fachada/FachadaWebServer;

    .line 53
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/fachada/FachadaWebServer;->instance:Lcom/br/ipad/isc/fachada/FachadaWebServer;

    return-object v0
.end method

.method public static getMensagemError()Ljava/lang/String;
    .locals 1

    .line 121
    invoke-static {}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->getMensagemError()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public comunicacao(SLcom/br/ipad/isc/io/ArquivoRetorno;IZ)[Ljava/lang/Object;
    .locals 1

    .line 129
    invoke-static {}, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->getInstancia()Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;

    move-result-object v0

    .line 130
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->comunicacao(SLcom/br/ipad/isc/io/ArquivoRetorno;IZ)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public comunicar(Ljava/lang/String;Ljava/util/Vector;)Ljava/io/InputStream;
    .locals 1
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

    .line 98
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/FachadaWebServer;->conexaoWebServer:Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->comunicar(Ljava/lang/String;Ljava/util/Vector;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public enviarDados(Ljava/lang/String;SLandroid/content/Context;Ljava/lang/StringBuilder;)I
    .locals 1

    .line 134
    invoke-static {}, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->getInstancia()Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->enviarDados(Ljava/lang/String;SLandroid/content/Context;Ljava/lang/StringBuilder;)I

    move-result p1

    return p1
.end method

.method public enviarImovel([BLandroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-static {}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->getInstancia()Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->enviarImovel([BLandroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public finalizarLeitura([BLandroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->getInstancia()Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->finalizarLeitura([BLandroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/br/ipad/isc/fachada/FachadaWebServer;->requestOK:Z

    return-void
.end method

.method public getFileLength()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/FachadaWebServer;->conexaoWebServer:Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    invoke-virtual {v0}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->getFileLength()I

    move-result v0

    return v0
.end method

.method public iniciarConexaoWebServer(Landroid/content/Context;)V
    .locals 1

    .line 94
    new-instance v0, Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/FachadaWebServer;->conexaoWebServer:Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    return-void
.end method

.method public iniciarServicoRede(Ljava/util/ArrayList;ZLandroid/content/Context;)Z
    .locals 1
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

    .line 65
    invoke-static {}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->getInstancia()Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->iniciarServicoRede(Ljava/util/ArrayList;ZLandroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isRequestOK()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/br/ipad/isc/fachada/FachadaWebServer;->requestOK:Z

    return v0
.end method

.method public routeInitializationSignal()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/FachadaWebServer;->conexaoWebServer:Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    invoke-virtual {v0}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->routeInitializationSignal()Z

    move-result v0

    return v0
.end method

.method public serverOnline()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/FachadaWebServer;->conexaoWebServer:Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    invoke-virtual {v0}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->serverOnline()Z

    move-result v0

    return v0
.end method

.method public setContextComunicacaoWebServer(Landroid/content/Context;)V
    .locals 1

    .line 125
    invoke-static {}, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->getInstancia()Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->setContext(Landroid/content/Context;)V

    return-void
.end method
