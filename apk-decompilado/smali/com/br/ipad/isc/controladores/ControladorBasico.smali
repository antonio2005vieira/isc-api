.class public Lcom/br/ipad/isc/controladores/ControladorBasico;
.super Ljava/lang/Object;
.source "ControladorBasico.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorBasico;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorBasico;


# instance fields
.field private controladorAlertaValidarConexaoImpressora:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

.field private controladorAlertaValidarImpressao:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;

.field private controladorAlertaValidarLeitura:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;

.field private controladorCategoriaSubcategoria:Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

.field private controladorConsumoAnormalidade:Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;

.field private controladorConsumoAnormalidadeAcao:Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;

.field private controladorConsumoAnteriores:Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;

.field private controladorConsumoHistorico:Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

.field private controladorConsumoTarifaCategoria:Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

.field private controladorConsumoTarifaFaixa:Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;

.field private controladorConta:Lcom/br/ipad/isc/controladores/ControladorConta;

.field private controladorContaCategoria:Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

.field private controladorContaCategoriaConsumoFaixa:Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;

.field private controladorContaImposto:Lcom/br/ipad/isc/controladores/ControladorContaImposto;

.field private controladorCreditoRealizado:Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;

.field private controladorDebitoCobrado:Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;

.field private controladorFoto:Lcom/br/ipad/isc/controladores/ControladorFoto;

.field private controladorHidrometroInstalado:Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

.field private controladorImovel:Lcom/br/ipad/isc/controladores/ControladorImovel;

.field private controladorImovelConta:Lcom/br/ipad/isc/controladores/ControladorImovelConta;

.field private controladorImovelRevisitar:Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;

.field private controladorImpressao:Lcom/br/ipad/isc/controladores/ControladorImpressao;

.field private controladorLeituraAnormalidade:Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;

.field private controladorSequencialRotaMarcacao:Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;

.field private controladorSistemaParametros:Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;

.field private repositorioBasico:Lcom/br/ipad/isc/repositorios/RepositorioBasico;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copiaArquivoBkp(Ljava/io/File;Ljava/lang/Long;)V
    .locals 9

    .line 402
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 403
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_ISC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/backupRetorno"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 410
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_BACKUP_RETORNO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 414
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 416
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const-wide/16 v3, 0x0

    .line 417
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, p1

    goto :goto_5

    :catch_2
    move-exception v0

    move-object p0, p1

    .line 424
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_3

    :catch_3
    move-exception v0

    move-object p0, p1

    .line 421
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :goto_3
    if-eqz p0, :cond_1

    .line 428
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 433
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    if-eqz p1, :cond_4

    .line 435
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 437
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_8

    :catch_5
    move-exception p0

    .line 440
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catchall_2
    move-exception v0

    :goto_5
    if-eqz p1, :cond_2

    .line 428
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    :try_start_5
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_6

    :catch_6
    move-exception p1

    .line 433
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_6
    if-eqz p0, :cond_3

    .line 435
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 437
    :try_start_6
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_7

    :catch_7
    move-exception p0

    .line 440
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 443
    :cond_3
    :goto_7
    throw v0

    :cond_4
    :goto_8
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 34
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorBasico;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;
    .locals 1

    .line 79
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorBasico;->instance:Lcom/br/ipad/isc/controladores/ControladorBasico;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorBasico;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorBasico;->instance:Lcom/br/ipad/isc/controladores/ControladorBasico;

    .line 82
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorBasico;->instance:Lcom/br/ipad/isc/controladores/ControladorBasico;

    return-object v0
.end method


# virtual methods
.method public apagarBanco()V
    .locals 2

    .line 392
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->apagarBanco()V

    .line 395
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_ISC:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->deletarPastas(Ljava/io/File;)V

    return-void
.end method

.method public atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->repositorioBasico:Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 301
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 302
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorBasico;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public carregaLinhaParaBD(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 382
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/repositorios/CarregaBD;->getInstance()Lcom/br/ipad/isc/repositorios/CarregaBD;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/CarregaBD;->carregaLinhaParaBD(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 384
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 385
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorBasico;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getControladorAlertaValidarConexaoImpressora(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;
    .locals 1

    .line 114
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;)V

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorAlertaValidarConexaoImpressora:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

    return-object v0
.end method

.method public getControladorAlertaValidarImpressao(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;
    .locals 1

    .line 107
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;)V

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorAlertaValidarImpressao:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;

    return-object v0
.end method

.method public getControladorAlertaValidarLeitura(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;
    .locals 7

    .line 100
    new-instance v6, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;-><init>(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)V

    iput-object v6, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorAlertaValidarLeitura:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;

    return-object v6
.end method

.method public getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorCategoriaSubcategoria:Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->getInstance()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorCategoriaSubcategoria:Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorCategoriaSubcategoria:Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    return-object v0
.end method

.method public getControladorConsumoAnormalidade()Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConsumoAnormalidade:Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;

    if-nez v0, :cond_0

    .line 198
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;->getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConsumoAnormalidade:Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConsumoAnormalidade:Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;

    return-object v0
.end method

.method public getControladorConsumoAnormalidadeAcao()Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConsumoAnormalidadeAcao:Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;

    if-nez v0, :cond_0

    .line 191
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConsumoAnormalidadeAcao:Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConsumoAnormalidadeAcao:Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;

    return-object v0
.end method

.method public getControladorConsumoAnteriores()Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConsumoAnteriores:Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;

    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConsumoAnteriores:Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConsumoAnteriores:Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;

    return-object v0
.end method

.method public getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConsumoHistorico:Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    if-nez v0, :cond_0

    .line 177
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConsumoHistorico:Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConsumoHistorico:Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    return-object v0
.end method

.method public getControladorConsumoTarifaCategoria()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConsumoTarifaCategoria:Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

    if-nez v0, :cond_0

    .line 205
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConsumoTarifaCategoria:Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConsumoTarifaCategoria:Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

    return-object v0
.end method

.method public getControladorConsumoTarifaFaixa()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConsumoTarifaFaixa:Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;

    if-nez v0, :cond_0

    .line 212
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;->getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConsumoTarifaFaixa:Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConsumoTarifaFaixa:Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;

    return-object v0
.end method

.method public getControladorConta()Lcom/br/ipad/isc/controladores/ControladorConta;
    .locals 2

    .line 233
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v0

    const-string v1, "18"

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorContaOracle;->getInstance()Lcom/br/ipad/isc/controladores/ControladorContaOracle;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConta:Lcom/br/ipad/isc/controladores/ControladorConta;

    goto :goto_0

    .line 237
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorContaPostgres;->getInstance()Lcom/br/ipad/isc/controladores/ControladorContaPostgres;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConta:Lcom/br/ipad/isc/controladores/ControladorConta;

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorConta:Lcom/br/ipad/isc/controladores/ControladorConta;

    return-object v0
.end method

.method public getControladorContaCategoria()Lcom/br/ipad/isc/controladores/ControladorContaCategoria;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorContaCategoria:Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->getInstance()Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorContaCategoria:Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorContaCategoria:Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    return-object v0
.end method

.method public getControladorContaCategoriaConsumoFaixa()Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorContaCategoriaConsumoFaixa:Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;

    if-nez v0, :cond_0

    .line 219
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;->getInstance()Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorContaCategoriaConsumoFaixa:Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorContaCategoriaConsumoFaixa:Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;

    return-object v0
.end method

.method public getControladorContaImposto()Lcom/br/ipad/isc/controladores/ControladorContaImposto;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorContaImposto:Lcom/br/ipad/isc/controladores/ControladorContaImposto;

    if-nez v0, :cond_0

    .line 226
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorContaImposto;->getInstance()Lcom/br/ipad/isc/controladores/ControladorContaImposto;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorContaImposto:Lcom/br/ipad/isc/controladores/ControladorContaImposto;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorContaImposto:Lcom/br/ipad/isc/controladores/ControladorContaImposto;

    return-object v0
.end method

.method public getControladorCreditoRealizado()Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorCreditoRealizado:Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;

    if-nez v0, :cond_0

    .line 184
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->getInstance()Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorCreditoRealizado:Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorCreditoRealizado:Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;

    return-object v0
.end method

.method public getControladorDebitoCobrado()Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorDebitoCobrado:Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;->getInstance()Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorDebitoCobrado:Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorDebitoCobrado:Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;

    return-object v0
.end method

.method public getControladorFoto()Lcom/br/ipad/isc/controladores/ControladorFoto;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorFoto:Lcom/br/ipad/isc/controladores/ControladorFoto;

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorFoto;->getInstance()Lcom/br/ipad/isc/controladores/ControladorFoto;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorFoto:Lcom/br/ipad/isc/controladores/ControladorFoto;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorFoto:Lcom/br/ipad/isc/controladores/ControladorFoto;

    return-object v0
.end method

.method public getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorHidrometroInstalado:Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getInstance()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorHidrometroInstalado:Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorHidrometroInstalado:Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    return-object v0
.end method

.method public getControladorImovel()Lcom/br/ipad/isc/controladores/ControladorImovel;
    .locals 2

    .line 245
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v0

    const-string v1, "18"

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImovelOracle;->getInstance()Lcom/br/ipad/isc/controladores/ControladorImovelOracle;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorImovel:Lcom/br/ipad/isc/controladores/ControladorImovel;

    goto :goto_0

    .line 249
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImovelPostgres;->getInstance()Lcom/br/ipad/isc/controladores/ControladorImovelPostgres;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorImovel:Lcom/br/ipad/isc/controladores/ControladorImovel;

    .line 252
    :goto_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorImovel:Lcom/br/ipad/isc/controladores/ControladorImovel;

    return-object v0
.end method

.method public getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorImovelConta:Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    if-nez v0, :cond_0

    .line 149
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->getInstance()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorImovelConta:Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorImovelConta:Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    return-object v0
.end method

.method public getControladorImovelRevisitar()Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorImovelRevisitar:Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;

    if-nez v0, :cond_0

    .line 286
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;->getInstance()Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorImovelRevisitar:Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorImovelRevisitar:Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;

    return-object v0
.end method

.method public getControladorImpressao()Lcom/br/ipad/isc/controladores/ControladorImpressao;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorImpressao:Lcom/br/ipad/isc/controladores/ControladorImpressao;

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getInstance()Lcom/br/ipad/isc/controladores/ControladorImpressao;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorImpressao:Lcom/br/ipad/isc/controladores/ControladorImpressao;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorImpressao:Lcom/br/ipad/isc/controladores/ControladorImpressao;

    return-object v0
.end method

.method public getControladorLeituraAnormalidade()Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorLeituraAnormalidade:Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;

    if-nez v0, :cond_0

    .line 271
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;->getInstance()Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorLeituraAnormalidade:Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorLeituraAnormalidade:Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;

    return-object v0
.end method

.method public getControladorSequencialRotaMarcacao()Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorSequencialRotaMarcacao:Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;

    if-nez v0, :cond_0

    .line 278
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;->getInstance()Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorSequencialRotaMarcacao:Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorSequencialRotaMarcacao:Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;

    return-object v0
.end method

.method public getControladorSistemaParametros()Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorSistemaParametros:Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;

    if-nez v0, :cond_0

    .line 163
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->getInstance()Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorSistemaParametros:Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->controladorSistemaParametros:Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;

    return-object v0
.end method

.method public inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->repositorioBasico:Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    move-result-wide v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 333
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 334
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorBasico;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pesquisar(Lcom/br/ipad/isc/bean/ObjetoBasico;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/br/ipad/isc/bean/ObjetoBasico;",
            ">(TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->repositorioBasico:Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->pesquisar(Lcom/br/ipad/isc/bean/ObjetoBasico;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 369
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 370
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorBasico;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/br/ipad/isc/bean/ObjetoBasico;",
            ">(",
            "Ljava/lang/Integer;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->repositorioBasico:Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 351
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 352
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorBasico;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remover(Lcom/br/ipad/isc/bean/ObjetoBasico;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->repositorioBasico:Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->remover(Lcom/br/ipad/isc/bean/ObjetoBasico;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 317
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 318
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorBasico;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorBasico;->instance:Lcom/br/ipad/isc/controladores/ControladorBasico;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 86
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorBasico;->context:Landroid/content/Context;

    .line 87
    invoke-static {p1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->setContext(Landroid/content/Context;)V

    .line 88
    sget-object p1, Lcom/br/ipad/isc/controladores/ControladorBasico;->instance:Lcom/br/ipad/isc/controladores/ControladorBasico;

    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    move-result-object v0

    iput-object v0, p1, Lcom/br/ipad/isc/controladores/ControladorBasico;->repositorioBasico:Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    return-void
.end method

.method public verificarExistenciaBancoDeDados()Z
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorBasico;->repositorioBasico:Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->verificarExistenciaBancoDeDados()Z

    move-result v0

    return v0
.end method
