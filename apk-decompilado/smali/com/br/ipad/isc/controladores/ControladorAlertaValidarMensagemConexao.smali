.class public Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;
.super Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;
.source "ControladorAlertaValidarMensagemConexao.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorAlertaValidarMensagemConexao;


# instance fields
.field private caminhoErro:B

.field private caminhoSucesso:B

.field private enviou:Z

.field private imovel:Lcom/br/ipad/isc/bean/ImovelConta;

.field private msgErro:Ljava/lang/String;

.field private nomeArquivo:Ljava/lang/String;

.field private posicao:I

.field private progresso:I

.field private tipoFinalizacao:I


# direct methods
.method public constructor <init>(BBZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    .line 93
    iput-byte p2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->caminhoErro:B

    .line 94
    iput-byte p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->caminhoSucesso:B

    .line 95
    iput-boolean p3, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->enviou:Z

    .line 96
    iput-object p5, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->nomeArquivo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-void
.end method

.method public constructor <init>(Lcom/br/ipad/isc/bean/ImovelConta;BBZI)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    .line 55
    iput-byte p3, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->caminhoErro:B

    .line 56
    iput-byte p2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->caminhoSucesso:B

    .line 57
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 58
    iput-boolean p4, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->enviou:Z

    .line 59
    iput p5, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->tipoFinalizacao:I

    return-void
.end method

.method public constructor <init>(Lcom/br/ipad/isc/bean/ImovelConta;BBZILjava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    .line 45
    iput-byte p3, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->caminhoErro:B

    .line 46
    iput-byte p2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->caminhoSucesso:B

    .line 47
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 48
    iput-boolean p4, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->enviou:Z

    .line 49
    iput p5, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->tipoFinalizacao:I

    .line 50
    iput-object p6, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->nomeArquivo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/br/ipad/isc/bean/ImovelConta;BBZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    .line 66
    iput-byte p3, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->caminhoErro:B

    .line 67
    iput-byte p2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->caminhoSucesso:B

    .line 68
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 69
    iput-boolean p4, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->enviou:Z

    .line 70
    iput p5, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->tipoFinalizacao:I

    .line 71
    iput-object p6, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->nomeArquivo:Ljava/lang/String;

    .line 72
    iput-object p7, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->msgErro:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/String;BBZIIS)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    .line 78
    iput p8, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->tipoFinalizacao:I

    .line 79
    iput-object p2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->nomeArquivo:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 81
    iput p7, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->posicao:I

    .line 82
    iput-byte p4, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->caminhoErro:B

    .line 83
    iput-byte p3, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->caminhoSucesso:B

    .line 84
    iput-boolean p5, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->enviou:Z

    .line 85
    iput p6, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->progresso:I

    return-void
.end method

.method private deletarArquivo(Ljava/io/File;)V
    .locals 1

    .line 290
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private finalizaAplicacao()V
    .locals 1

    .line 284
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorBasico;->apagarBanco()V

    return-void
.end method

.method private gravaDadosBackup()V
    .locals 4

    .line 274
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 275
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 277
    new-instance v1, Lcom/br/ipad/isc/io/ExportBancoDados;

    invoke-direct {v1}, Lcom/br/ipad/isc/io/ExportBancoDados;-><init>()V

    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->nomeArquivo:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/br/ipad/isc/io/ExportBancoDados;->exportarBancoNovoNome(Ljava/lang/Long;Ljava/lang/String;)V

    .line 278
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_RETORNO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->nomeArquivo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-static {v1, v0}, Lcom/br/ipad/isc/controladores/ControladorBasico;->copiaArquivoBkp(Ljava/io/File;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public alertaMensagem()V
    .locals 9

    .line 169
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    .line 171
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->gravaDadosBackup()V

    .line 174
    iget-boolean v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->enviou:Z

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    .line 176
    iget v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->tipoFinalizacao:I

    if-eq v1, v3, :cond_1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 182
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->getIdsImoveisGerados()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 183
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x0

    .line 185
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 188
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v6

    .line 189
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    new-instance v8, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v8}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    invoke-virtual {v6, v7, v8}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v6

    check-cast v6, Lcom/br/ipad/isc/bean/ImovelConta;
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    sget-object v7, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelEnviado(Ljava/lang/Integer;)V

    .line 196
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/br/ipad/isc/fachada/Fachada;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISC"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->finalizaAplicacao()V

    .line 201
    :cond_2
    iget-byte v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->caminhoSucesso:B

    if-ne v1, v2, :cond_3

    .line 203
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v2

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIdImovelSelecionado()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelContaPosicao(Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0

    const-string v2, "imovel"

    .line 205
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 206
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_3
    if-ne v1, v4, :cond_4

    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_4
    if-ne v1, v3, :cond_b

    .line 215
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->sairAplicacao(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 221
    :cond_5
    iget-byte v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->caminhoErro:B

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->tipoFinalizacao:I

    if-ne v0, v4, :cond_6

    goto/16 :goto_2

    .line 225
    :cond_6
    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->tipoFinalizacao:I

    if-ne v0, v4, :cond_7

    .line 226
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 231
    :cond_7
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->msgErro:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0b0072

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 233
    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->tipoFinalizacao:I

    if-nez v0, :cond_8

    .line 234
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_RETORNO:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->nomeArquivo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-direct {p0, v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->deletarArquivo(Ljava/io/File;)V

    .line 237
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0b0083

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "3"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 242
    :cond_8
    iget v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->tipoFinalizacao:I

    if-ne v2, v0, :cond_b

    .line 244
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->sairAplicacao(Landroid/content/Context;)V

    goto :goto_2

    .line 248
    :cond_9
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->msgErro:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0066

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 251
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->apagarArquivoRetorno()V

    .line 254
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 258
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 268
    :cond_b
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->setIdsImoveisGerados(Ljava/util/ArrayList;)V

    return-void
.end method

.method public alertaPerguntaNao()V
    .locals 5

    .line 148
    iget-byte v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->caminhoErro:B

    if-nez v0, :cond_0

    iget-byte v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->caminhoSucesso:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 150
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->context:Landroid/content/Context;

    const-class v2, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 154
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0082

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->progresso:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->posicao:I

    add-int/lit8 v1, v1, 0x1

    const-string v2, "posicao"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0083

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->tipoFinalizacao:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public alertaPerguntaSim()V
    .locals 5

    .line 106
    iget-byte v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->caminhoErro:B

    if-nez v0, :cond_2

    iget-byte v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->caminhoSucesso:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 109
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_RETORNO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->nomeArquivo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->montaArquivo:Ljava/lang/StringBuilder;

    .line 119
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "imovel"

    if-eqz v0, :cond_1

    .line 121
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    .line 122
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->context:Landroid/content/Context;

    const-class v4, Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    iget-object v3, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 124
    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->startActivity(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {v0}, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;->finish()V

    goto :goto_0

    .line 127
    :cond_1
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->context:Landroid/content/Context;

    const-class v3, Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    .line 128
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 129
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 131
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method
