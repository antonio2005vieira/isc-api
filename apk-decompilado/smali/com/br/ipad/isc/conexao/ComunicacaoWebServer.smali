.class public Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;
.super Ljava/lang/Object;
.source "ComunicacaoWebServer.java"


# static fields
.field private static idsImoveisGerados:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static instancia:Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;

.field public static tempoRestanteFormatado:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->idsImoveisGerados:Ljava/util/ArrayList;

    const-string v0, ""

    .line 42
    sput-object v0, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->tempoRestanteFormatado:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized comunicaImovelOnline(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    const-class v0, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;

    monitor-enter v0

    .line 243
    :try_start_0
    new-instance v1, Lcom/br/ipad/isc/io/ArquivoRetorno;

    invoke-direct {v1}, Lcom/br/ipad/isc/io/ArquivoRetorno;-><init>()V

    .line 244
    invoke-virtual {v1, p0}, Lcom/br/ipad/isc/io/ArquivoRetorno;->gerarArquivoRetornoOnLine(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 250
    :try_start_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->getInstancia()Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1, p1}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->enviarImovel([BLandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object p1

    .line 257
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object p0

    check-cast p0, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 258
    sget-object p1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelEnviado(Ljava/lang/Integer;)V

    .line 260
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "ISC"

    .line 267
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    :cond_0
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static enviaCalculado(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelCalculado()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-static {p0, p1}, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->enviarImovelOnLine(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static enviarImovelOnLine(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ImovelConta;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "ISC"

    .line 200
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 202
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 203
    invoke-static {}, Lcom/br/ipad/isc/io/ArquivoRetorno;->getInstancia()Lcom/br/ipad/isc/io/ArquivoRetorno;

    move-result-object v4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v4, v5}, Lcom/br/ipad/isc/io/ArquivoRetorno;->gerarArquivoRetornoOnLine(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->getInstancia()Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1, p1}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->enviarImovel([BLandroid/content/Context;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 214
    :goto_1
    invoke-static {}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->getInstancia()Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->isRequestOK()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 218
    :try_start_1
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->getInstance()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->atualizarIndicadorImovelEnviado(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 221
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    .line 227
    :cond_1
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 228
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/fachada/Fachada;->enviarFotosOnline(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    goto :goto_3

    :cond_2
    return-void
.end method

.method public static enviarImovelOnLine(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorTransmissaoOffline()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {p0, p1}, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->comunicaImovelOnline(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getIdsImoveisGerados()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->idsImoveisGerados:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstancia()Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;
    .locals 1

    .line 60
    sget-object v0, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->instancia:Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;

    invoke-direct {v0}, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->instancia:Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;

    .line 64
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->instancia:Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;

    return-object v0
.end method

.method public static setIdsImoveisGerados(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 49
    sput-object p0, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->idsImoveisGerados:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public comunicacao(SLcom/br/ipad/isc/io/ArquivoRetorno;IZ)[Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p2, p1, p3, p4}, Lcom/br/ipad/isc/io/ArquivoRetorno;->gerarArquivoRetorno(SIZ)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 75
    aget-object p2, p1, p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_0

    .line 77
    sget-object p3, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->idsImoveisGerados:Ljava/util/ArrayList;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public enviarDados(Ljava/lang/String;SLandroid/content/Context;Ljava/lang/StringBuilder;)I
    .locals 11

    .line 91
    invoke-static {}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->getInstancia()Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->setContext(Landroid/content/Context;)V

    .line 92
    invoke-static {}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->getInstancia()Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->serverOnline()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/16 v0, 0x64

    const/4 v2, 0x1

    if-eq p2, v2, :cond_4

    .line 98
    :try_start_0
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->lerArquivoRetorno(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    .line 100
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_6

    const/4 v3, 0x0

    .line 104
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 105
    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    .line 109
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    const-string v4, "\n"

    .line 114
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    if-eqz p2, :cond_2

    const/4 v3, 0x3

    if-ne p2, v3, :cond_6

    .line 121
    :cond_2
    invoke-static {p3}, Lcom/br/ipad/isc/util/SettingsHelper;->getHorarioUltimaRequisicao(Landroid/content/Context;)J

    move-result-wide v3

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v7, v5, v3

    const-wide/16 v9, 0x0

    cmp-long p2, v3, v9

    if-eqz p2, :cond_3

    const-wide/32 v3, 0x493e0

    cmp-long p2, v7, v3

    if-gez p2, :cond_3

    sub-long/2addr v3, v7

    const-wide/32 p2, 0xea60

    .line 126
    div-long v5, v3, p2

    .line 127
    rem-long/2addr v3, p2

    const-wide/16 p2, 0x3e8

    div-long/2addr v3, p2

    .line 128
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string p3, "%02dm%02ds"

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p1, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p1, v2

    invoke-static {p2, p3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->tempoRestanteFormatado:Ljava/lang/String;

    const-string p1, "HorarioRequisicao"

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "tempo restante requisicao enviar dados: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->tempoRestanteFormatado:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x63

    return p1

    .line 132
    :cond_3
    invoke-static {p3, v5, v6}, Lcom/br/ipad/isc/util/SettingsHelper;->setHorarioUltimaRequisicao(Landroid/content/Context;J)V

    .line 133
    invoke-static {}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->getInstancia()Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->finalizarLeitura([BLandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_2
    const/16 v1, 0x64

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_4
    if-eqz p4, :cond_6

    .line 144
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_6

    .line 145
    invoke-static {}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->getInstancia()Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->enviarImovel([BLandroid/content/Context;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_6

    goto :goto_2

    .line 152
    :goto_3
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ISC"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_5
    const/4 v1, 0x4

    :cond_6
    :goto_4
    return v1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-static {}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->getInstancia()Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->setContext(Landroid/content/Context;)V

    return-void
.end method
