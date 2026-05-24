.class public Lcom/br/ipad/isc/controladores/ControladorImpressao;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorImpressao.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorImpressao;


# static fields
.field private static instance:Lcom/br/ipad/isc/controladores/ControladorImpressao;


# instance fields
.field protected final ID_MSG_ANORMALIDADE_CONSUMO_IMPRESSAO_AGUA:I

.field protected final ID_MSG_ANORMALIDADE_IMPRESSAO_AGUA:I

.field protected final ID_MSG_ANORMALIDADE_IMPRESSAO_ESGOTO:I

.field protected final ID_MSG_IMOVEL_NAO_CALCULADO:I

.field protected final ID_MSG_IMOVEL_NAO_EMITIDO:I

.field protected final ID_MSG_VALOR_MAIOR_PERMITIDO:I

.field protected final ID_MSG_VALOR_MENOR_PERMITIDO:I

.field private conta:Ljava/lang/StringBuilder;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->ID_MSG_IMOVEL_NAO_CALCULADO:I

    const/4 v0, 0x2

    .line 44
    iput v0, p0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->ID_MSG_IMOVEL_NAO_EMITIDO:I

    const/4 v0, 0x3

    .line 45
    iput v0, p0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->ID_MSG_VALOR_MENOR_PERMITIDO:I

    const/4 v0, 0x4

    .line 46
    iput v0, p0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->ID_MSG_VALOR_MAIOR_PERMITIDO:I

    const/4 v0, 0x5

    .line 47
    iput v0, p0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->ID_MSG_ANORMALIDADE_IMPRESSAO_AGUA:I

    const/4 v0, 0x6

    .line 48
    iput v0, p0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->ID_MSG_ANORMALIDADE_IMPRESSAO_ESGOTO:I

    const/4 v0, 0x7

    .line 49
    iput v0, p0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->ID_MSG_ANORMALIDADE_CONSUMO_IMPRESSAO_AGUA:I

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorImpressao;
    .locals 1

    .line 60
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->instance:Lcom/br/ipad/isc/controladores/ControladorImpressao;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorImpressao;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorImpressao;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->instance:Lcom/br/ipad/isc/controladores/ControladorImpressao;

    .line 63
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->instance:Lcom/br/ipad/isc/controladores/ControladorImpressao;

    return-object v0
.end method

.method private imprimirGuiaPagamento(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;Lcom/br/ipad/isc/impressao/ZebraImovelUtils;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 522
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdGuiaPagamentoLixo()Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 526
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    .line 530
    invoke-static {}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->getInstancia()Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;

    move-result-object p2

    .line 531
    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->imprimirGuiaPagamento(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-wide/16 v1, 0xbb8

    .line 534
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 535
    invoke-virtual {p3, p1}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->imprimir(Ljava/lang/StringBuilder;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/br/ipad/isc/excecoes/ImpressaoException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 540
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ImpressaoException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 538
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private imprimirNotificacaoDebito(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;Lcom/br/ipad/isc/impressao/ZebraImovelUtils;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 476
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p2

    .line 480
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v0

    const-string v1, "18"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-static {}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->getInstancia()Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;

    move-result-object p2

    .line 482
    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->imprimirNotificacaoDebito(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;

    move-result-object p2

    goto :goto_0

    .line 483
    :cond_0
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object p2

    const-string v0, "6"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 484
    invoke-static {}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->getInstancia()Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;

    move-result-object p2

    .line 485
    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->imprimirNotificacaoDebito(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 492
    :goto_0
    sget-boolean v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIMULADOR:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_4

    .line 500
    :try_start_0
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result p1

    if-nez p1, :cond_3

    .line 501
    invoke-virtual {p3, p2}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->imprimir(Ljava/lang/StringBuilder;)Z

    goto :goto_1

    .line 503
    :cond_3
    iput-object p2, p0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->conta:Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->enviarContaImpressora()Z
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ImpressaoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 510
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ImpressaoException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ISC"

    invoke-static {p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ImpressaoException;->getStackTrace()[Ljava/lang/StackTraceElement;

    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method public atualizaDadosImpressaoImovel(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 2

    .line 548
    :try_start_0
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getQntVezesImpressaoConta()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 549
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setQntVezesImpressaoConta(Ljava/lang/Integer;)V

    .line 550
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelImpresso(Ljava/lang/Integer;)V

    .line 553
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->verificarRateioCondominio(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelEnviado(Ljava/lang/Integer;)V

    .line 558
    :cond_1
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public atualizaDadosImpressaoImovelGuia(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 1

    .line 573
    :try_start_0
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIcImpressaoGuiaLixo(Ljava/lang/Integer;)V

    .line 575
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enviarContaComunicadoCaernImpressora(Ljava/lang/StringBuilder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ImpressaoException;
        }
    .end annotation

    .line 625
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/br/ipad/isc/impressao/ZebraUtils;->getInstance(Landroid/content/Context;)Lcom/br/ipad/isc/impressao/ZebraUtils;

    move-result-object v0

    .line 626
    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/impressao/ZebraUtils;->imprimir(Ljava/lang/StringBuilder;)Z

    move-result p1

    return p1
.end method

.method public enviarContaImpressora()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ImpressaoException;
        }
    .end annotation

    .line 466
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/br/ipad/isc/impressao/ZebraUtils;->getInstance(Landroid/content/Context;)Lcom/br/ipad/isc/impressao/ZebraUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->conta:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/impressao/ZebraUtils;->imprimir(Ljava/lang/StringBuilder;)Z

    move-result v0

    return v0
.end method

.method public imovelNaoPermiteImpressao(Lcom/br/ipad/isc/bean/ImovelConta;ZI)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 146
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConta;->getInstance()Lcom/br/ipad/isc/controladores/ControladorConta;

    move-result-object v0

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/controladores/ControladorConta;->obterValorConta(Ljava/lang/Integer;)D

    move-result-wide v0

    .line 148
    new-instance v2, Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-direct {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;-><init>()V

    .line 149
    new-instance v2, Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-direct {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;-><init>()V

    .line 151
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v2

    .line 152
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v2

    .line 155
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    .line 156
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v4

    const-string v5, "86"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_1

    const-wide v8, 0x412e848000000000L    # 1000000.0

    cmpl-double v4, v0, v8

    if-ltz v4, :cond_1

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    .line 167
    :cond_1
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v3, :cond_2

    .line 168
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide v2, 0x408f400000000000L    # 1000.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_3

    goto :goto_1

    :cond_2
    const-wide v2, 0x40c3880000000000L    # 10000.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 183
    :goto_2
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getInstance()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v3

    .line 184
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v3

    .line 186
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getInstance()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v4

    .line 187
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v4

    .line 189
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelCalculado()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelCalculado()Ljava/lang/Integer;

    move-result-object v5

    sget-object v9, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v5, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-ge p3, v7, :cond_5

    if-eqz p2, :cond_4

    .line 193
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorAlertaValidarImpressao(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;

    move-result-object v5

    .line 194
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getContext()Landroid/content/Context;

    move-result-object v6

    const v9, 0x7f0b00b3

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6, v7}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->defineAlerta(ILjava/lang/String;I)Z

    :cond_4
    const/4 v6, 0x1

    .line 198
    :cond_5
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcEmissaoConta()Ljava/lang/Integer;

    move-result-object v5

    sget-object v9, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v5, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-ge p3, v8, :cond_7

    if-eqz p2, :cond_6

    .line 203
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorAlertaValidarImpressao(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;

    move-result-object p3

    .line 204
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v7, v0, v8}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->defineAlerta(ILjava/lang/String;I)Z

    :cond_6
    :goto_3
    const/4 v6, 0x1

    goto/16 :goto_4

    .line 208
    :cond_7
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v5

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/SistemaParametros;->getValorMinimEmissaoConta()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v8

    cmpg-double v5, v0, v8

    if-gtz v5, :cond_8

    .line 210
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->getInstance()Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;

    move-result-object v0

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->obterValorCreditoTotal(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_b

    const/4 v0, 0x3

    if-ge p3, v0, :cond_b

    if-eqz p2, :cond_6

    .line 218
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorAlertaValidarImpressao(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;

    move-result-object p3

    .line 219
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v7, v1, v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->defineAlerta(ILjava/lang/String;I)Z

    goto :goto_3

    :cond_8
    if-eqz v2, :cond_9

    const/4 v0, 0x4

    if-ge p3, v0, :cond_9

    if-eqz p2, :cond_6

    .line 227
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorAlertaValidarImpressao(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;

    move-result-object p3

    .line 228
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b013e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v7, v1, v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->defineAlerta(ILjava/lang/String;I)Z

    goto :goto_3

    :cond_9
    const v0, 0x7f0b003d

    if-eqz v3, :cond_a

    .line 234
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 238
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v2

    new-instance v3, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v3}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    .line 239
    invoke-virtual {v2, v1, v3}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v1

    check-cast v1, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    if-eqz v1, :cond_b

    .line 241
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorNaoImpressaoConta()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x5

    if-ge p3, v1, :cond_b

    if-eqz p2, :cond_6

    .line 245
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorAlertaValidarImpressao(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;

    move-result-object p3

    .line 246
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v7, v0, v1}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->defineAlerta(ILjava/lang/String;I)Z

    goto/16 :goto_3

    :cond_a
    if-eqz v4, :cond_b

    .line 252
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 256
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v2

    new-instance v3, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v3}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    .line 257
    invoke-virtual {v2, v1, v3}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v1

    check-cast v1, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    if-eqz v1, :cond_b

    .line 259
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorNaoImpressaoConta()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x6

    if-ge p3, v1, :cond_b

    if-eqz p2, :cond_6

    .line 265
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorAlertaValidarImpressao(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;

    move-result-object p3

    .line 266
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v7, v0, v1}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->defineAlerta(ILjava/lang/String;I)Z

    goto/16 :goto_3

    :cond_b
    :goto_4
    if-nez v6, :cond_c

    .line 276
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object p3

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 284
    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 285
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    .line 286
    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v2

    .line 285
    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-virtual {p3, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    .line 288
    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 290
    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorImprimeConta()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 291
    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object p3

    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorImprimeConta()Ljava/lang/Integer;

    move-result-object p3

    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p3, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    if-eqz p2, :cond_d

    .line 296
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorAlertaValidarImpressao(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;

    move-result-object p2

    .line 297
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0b003b

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x7

    invoke-virtual {p2, v7, p3, v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarImpressao;->defineAlerta(ILjava/lang/String;I)Z

    goto :goto_5

    :cond_c
    move v7, v6

    :cond_d
    :goto_5
    if-nez v7, :cond_e

    .line 307
    sget-object p2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcNaoPermiteImpressao(Ljava/lang/Integer;)V

    .line 308
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    goto :goto_6

    .line 310
    :cond_e
    sget-object p2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcNaoPermiteImpressao(Ljava/lang/Integer;)V

    .line 311
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    :goto_6
    return v7
.end method

.method protected imprimirConta(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;,
            Lcom/br/ipad/isc/excecoes/ImpressaoException;
        }
    .end annotation

    const-string v0, "ISC"

    const-string v1, "Inicio Controlador Impressao ImprimirConta()"

    .line 318
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v2

    .line 323
    invoke-static {p2}, Lcom/br/ipad/isc/impressao/ZebraUtils;->getInstance(Landroid/content/Context;)Lcom/br/ipad/isc/impressao/ZebraUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/br/ipad/isc/impressao/ZebraUtils;->isCPCLPrinter()Z

    move-result v3

    .line 324
    sget-boolean v4, Lcom/br/ipad/isc/util/ConstantesSistema;->SIMULADOR:Z

    const-string v5, "4"

    const-string v6, "6"

    const/4 v7, 0x1

    const-string v8, "86"

    if-eqz v4, :cond_3

    .line 325
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object p3

    const-string v4, "18"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 326
    invoke-static {p1}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->getInstancia(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;

    move-result-object p3

    .line 327
    invoke-virtual {p3, v3}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imprimirConta(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    iput-object p3, p0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->conta:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 329
    invoke-static {p1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->getInstancia(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;

    move-result-object p3

    .line 330
    invoke-virtual {p3}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imprimirConta()Ljava/lang/StringBuilder;

    move-result-object p3

    iput-object p3, p0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->conta:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 332
    invoke-static {p1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->getInstancia(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;

    move-result-object p3

    .line 333
    invoke-virtual {p3}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imprimirConta()Ljava/lang/StringBuilder;

    move-result-object p3

    iput-object p3, p0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->conta:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 334
    :cond_2
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    :goto_0
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getQntVezesImpressaoConta()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/2addr p3, v7

    .line 342
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/br/ipad/isc/bean/ImovelConta;->setQntVezesImpressaoConta(Ljava/lang/Integer;)V

    .line 343
    sget-object p3, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, p3}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelImpresso(Ljava/lang/Integer;)V

    .line 344
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 348
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorSistemaParametros()Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;

    move-result-object p3

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->atualizarIdImovelSelecionadoSistemaParametros(Ljava/lang/Integer;)V

    .line 351
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 352
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorContaDebito;->getInstance()Lcom/br/ipad/isc/controladores/ControladorContaDebito;

    move-result-object p3

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/br/ipad/isc/controladores/ControladorContaDebito;->buscarContasDebitosPorIdImovel(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_f

    .line 355
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getInstance()Lcom/br/ipad/isc/controladores/ControladorImpressao;

    move-result-object p3

    const/4 v2, 0x0

    invoke-direct {p3, p1, p2, v2}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->imprimirNotificacaoDebito(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;Lcom/br/ipad/isc/impressao/ZebraImovelUtils;)Z

    goto/16 :goto_4

    .line 360
    :cond_3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {p2}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->getInstance(Landroid/content/Context;)Lcom/br/ipad/isc/impressao/ZebraImovelUtils;

    move-result-object v4

    .line 362
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {p2}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->open(Landroid/content/Context;)V

    .line 368
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v9, 0x0

    if-eqz v6, :cond_4

    .line 369
    invoke-static {p1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->getInstancia(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;

    move-result-object p3

    .line 370
    invoke-virtual {p3}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imprimirConta()Ljava/lang/StringBuilder;

    move-result-object p3

    iput-object p3, p0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->conta:Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 371
    :cond_4
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 372
    invoke-static {p1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->getInstancia(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;

    move-result-object p3

    .line 373
    invoke-virtual {p3}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imprimirConta()Ljava/lang/StringBuilder;

    move-result-object p3

    iput-object p3, p0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->conta:Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 374
    :cond_5
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "Inicio validarImpressaoDeContaComAnormlidade()"

    .line 376
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->validarImpressaoDeContaComAnormlidade(Ljava/lang/Integer;)Z

    move-result v5

    const-string v6, "Fim  validarImpressaoDeContaComAnormlidade()"

    .line 378
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_b

    .line 381
    invoke-static {p1}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->getInstancia(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;

    move-result-object v5

    .line 382
    invoke-virtual {v5, v3}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imprimirConta(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    iput-object v3, p0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->conta:Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "Inicio zebraImovelUtils.imprimir(conta) linha 353"

    .line 385
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v3, p0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->conta:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->imprimir(Ljava/lang/StringBuilder;)Z

    move-result v3

    const-string v5, "Fim zebraImovelUtils.imprimir(conta) linha 355"

    .line 387
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string v3, "Inicio enviarContaImpressora() linha 357"

    .line 389
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v3, p0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->conta:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->imprimir(Ljava/lang/StringBuilder;)Z

    move-result v3

    const-string v5, "Fim enviarContaImpressora() linha 359"

    .line 392
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v5, "Fim impress\u00e3o de conta"

    .line 394
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-direct {p0, p1, p2, v4}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->imprimirGuiaPagamento(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;Lcom/br/ipad/isc/impressao/ZebraImovelUtils;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 399
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->atualizaDadosImpressaoImovelGuia(Lcom/br/ipad/isc/bean/ImovelConta;)V

    :cond_7
    if-eqz v3, :cond_8

    .line 404
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->atualizaDadosImpressaoImovel(Lcom/br/ipad/isc/bean/ImovelConta;)V

    const/4 v9, 0x1

    .line 408
    :cond_8
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->validarNotificacaoDeImpedimento(Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 409
    invoke-static {p1, v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->getInstancia(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/String;)Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;

    move-result-object v2

    .line 410
    invoke-virtual {v2, p3}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imprimirConta(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 411
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v2

    if-nez v2, :cond_9

    .line 412
    invoke-virtual {v4, p3}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->imprimir(Ljava/lang/StringBuilder;)Z

    goto :goto_3

    .line 414
    :cond_9
    invoke-static {p2}, Lcom/br/ipad/isc/impressao/ZebraUtils;->getInstance(Landroid/content/Context;)Lcom/br/ipad/isc/impressao/ZebraUtils;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/br/ipad/isc/impressao/ZebraUtils;->imprimir(Ljava/lang/StringBuilder;)Z

    goto :goto_3

    :cond_a
    move v7, v9

    goto :goto_3

    .line 422
    :cond_b
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->validarImpressaoAvisoRetencaoConta(Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 424
    invoke-static {p1, v8}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->getInstancia(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/String;)Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;

    move-result-object v2

    .line 425
    invoke-virtual {v2, p3}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->imprimirConta(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 426
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v2

    if-nez v2, :cond_c

    .line 427
    invoke-virtual {v4, p3}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->imprimir(Ljava/lang/StringBuilder;)Z

    goto :goto_3

    .line 429
    :cond_c
    invoke-static {p2}, Lcom/br/ipad/isc/impressao/ZebraUtils;->getInstance(Landroid/content/Context;)Lcom/br/ipad/isc/impressao/ZebraUtils;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/br/ipad/isc/impressao/ZebraUtils;->imprimir(Ljava/lang/StringBuilder;)Z

    goto :goto_3

    :cond_d
    :goto_2
    const/4 v7, 0x0

    .line 436
    :goto_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "Inicio buscarContasDebitosPorIdImovel()"

    .line 437
    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorContaDebito;->getInstance()Lcom/br/ipad/isc/controladores/ControladorContaDebito;

    move-result-object v2

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/controladores/ControladorContaDebito;->buscarContasDebitosPorIdImovel(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v2

    .line 439
    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_e

    const-string p3, "Inicio imprimirNotificacaoDebito()"

    .line 442
    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-direct {p0, p1, p2, v4}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->imprimirNotificacaoDebito(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;Lcom/br/ipad/isc/impressao/ZebraImovelUtils;)Z

    const-string p1, "Fim imprimirNotificacaoDebito()"

    .line 444
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string p1, "Inicio zebraImovelUtils.close()"

    .line 446
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-static {}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->close()V

    const-string p1, "Fim zebraImovelUtils.close()"

    .line 448
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_f
    :goto_4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public imprimirContaRateio(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;,
            Lcom/br/ipad/isc/excecoes/ImpressaoException;
        }
    .end annotation

    .line 459
    invoke-static {p2}, Lcom/br/ipad/isc/impressao/ZebraUtils;->getInstance(Landroid/content/Context;)Lcom/br/ipad/isc/impressao/ZebraUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/impressao/ZebraUtils;->isCPCLPrinter()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->imprimirConta(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;Z)Z

    return-void
.end method

.method public imprimirExtratoMacro(Landroid/content/Context;Lcom/br/ipad/isc/bean/ImovelConta;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v1

    const-string v2, "86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    invoke-static {p2}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->getInstancia(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;

    move-result-object p2

    invoke-virtual {p2}, Lcom/br/ipad/isc/impressao/ExtratoMacroSANEP;->obterStringExtratoMacroCompesa()Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    .line 591
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v1

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 592
    invoke-static {p2}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->getInstancia(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;

    move-result-object p2

    invoke-virtual {p2}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->obterStringExtratoMacroCaern()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 597
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p1}, Lcom/br/ipad/isc/impressao/ZebraUtils;->getInstance(Landroid/content/Context;)Lcom/br/ipad/isc/impressao/ZebraUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/impressao/ZebraUtils;->imprimir(Ljava/lang/StringBuilder;)Z
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ImpressaoException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 601
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ImpressaoException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ISC"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ImpressaoException;->getStackTrace()[Ljava/lang/StackTraceElement;

    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method protected imprimirGuia(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;,
            Lcom/br/ipad/isc/excecoes/ImpressaoException;
        }
    .end annotation

    const-string p3, "ISC"

    const-string v0, "Inicio Controlador Impressao ImprimirGuia()"

    .line 782
    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    .line 786
    invoke-static {p2}, Lcom/br/ipad/isc/impressao/ZebraUtils;->getInstance(Landroid/content/Context;)Lcom/br/ipad/isc/impressao/ZebraUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/impressao/ZebraUtils;->isCPCLPrinter()Z

    .line 788
    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-static {p2}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->getInstance(Landroid/content/Context;)Lcom/br/ipad/isc/impressao/ZebraImovelUtils;

    move-result-object v2

    .line 790
    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-static {p2}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->open(Landroid/content/Context;)V

    .line 794
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v0

    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    invoke-direct {p0, p1, p2, v2}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->imprimirGuiaPagamento(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;Lcom/br/ipad/isc/impressao/ZebraImovelUtils;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 799
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->atualizaDadosImpressaoImovelGuia(Lcom/br/ipad/isc/bean/ImovelConta;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "Inicio zebraImovelUtils.close()"

    .line 805
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-static {}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->close()V

    const-string p2, "Fim zebraImovelUtils.close()"

    .line 807
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Inicio Controlador Impressao ImprimirConta()"

    .line 809
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->instance:Lcom/br/ipad/isc/controladores/ControladorImpressao;

    return-void
.end method

.method public validarImpressaoAvisoRetencaoConta(Ljava/lang/Integer;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 670
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v2

    .line 671
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 670
    invoke-virtual {v2, p1, v3}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v2
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 673
    invoke-virtual {v2}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    .line 676
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 677
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorImprimeRetencao()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_1

    .line 682
    :try_start_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v3

    const/4 v4, 0x2

    .line 683
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 682
    invoke-virtual {v3, p1, v4}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v0
    :try_end_1
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 685
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    :goto_2
    if-eqz v0, :cond_1

    .line 688
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 689
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorImprimeRetencao()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_3

    :cond_1
    move v1, v2

    :goto_3
    return v1
.end method

.method public validarImpressaoDeContaComAnormlidade(Ljava/lang/Integer;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 637
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v2

    .line 638
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 637
    invoke-virtual {v2, p1, v3}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v2
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 640
    invoke-virtual {v2}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 643
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 644
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorImprimeConta()Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    .line 649
    :try_start_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v2

    const/4 v4, 0x2

    .line 650
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 649
    invoke-virtual {v2, p1, v4}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v1
    :try_end_1
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 652
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    :goto_1
    if-eqz v1, :cond_1

    .line 655
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 656
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorImprimeConta()Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    move v3, v0

    :goto_2
    return v3
.end method

.method public validarNotificacaoDeImpedimento(Ljava/lang/Integer;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 704
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v2

    .line 705
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 704
    invoke-virtual {v2, p1, v3}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v2
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 707
    invoke-virtual {v2}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    .line 710
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 711
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorNotificaCliente()Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_1

    .line 717
    :try_start_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v3

    const/4 v4, 0x2

    .line 718
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 717
    invoke-virtual {v3, p1, v4}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v0
    :try_end_1
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 720
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    :goto_2
    if-eqz v0, :cond_1

    .line 723
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 724
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorNotificaCliente()Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_3

    :cond_1
    move v1, v2

    :goto_3
    return v1
.end method

.method public verificaExistenciaImpressoraConfigurada(Landroid/content/Context;Lcom/br/ipad/isc/bean/ImovelConta;)Z
    .locals 1

    .line 82
    sget-boolean v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIMULADOR:Z

    if-nez v0, :cond_0

    .line 83
    invoke-static {p1}, Lcom/br/ipad/isc/impressao/ZebraUtils;->getInstance(Landroid/content/Context;)Lcom/br/ipad/isc/impressao/ZebraUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/impressao/ZebraUtils;->verificaExistenciaImpressoraConfigigurada(Landroid/content/Context;Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public verificarExistenciaImpressora(Lcom/br/ipad/isc/bean/ImovelConta;)Z
    .locals 2

    .line 67
    sget-boolean v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIMULADOR:Z

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorImpressao;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/br/ipad/isc/impressao/ZebraUtils;->getInstance(Landroid/content/Context;)Lcom/br/ipad/isc/impressao/ZebraUtils;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/controladores/ControladorImpressao;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/br/ipad/isc/impressao/ZebraUtils;->verificaExistenciaImpressoraConfigigurada(Landroid/content/Context;Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public verificarImpressaoConta(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;IZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    const-string v0, "ISC"

    const-string v1, " > Inicio verifica impressao conta"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, " >> Inicio pesquisarPorId() linha 95"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v1

    .line 96
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v1

    check-cast v1, Lcom/br/ipad/isc/bean/ImovelConta;

    const-string v2, " >> Fim pesquisarPorId() linha 98"

    .line 97
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, " >> Inicio imovelNaoPermiteImpressao() linha 100"

    .line 99
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0, v1, p4, p3}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->imovelNaoPermiteImpressao(Lcom/br/ipad/isc/bean/ImovelConta;ZI)Z

    move-result p3

    const-string p4, " >> Fim imovelNaoPermiteImpressao() linha 102"

    .line 101
    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x0

    if-nez p3, :cond_0

    const-string p3, " >> Inicio verificarExistenciaImpressora() linha 104"

    .line 103
    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->verificarExistenciaImpressora(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result p3

    const-string v2, " >> Fim verificarExistenciaImpressora() linha 106"

    .line 105
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const p3, 0x7f0b0025

    const/4 v2, 0x1

    :try_start_0
    const-string v3, " >>> Inicio ZebraUtils.getInstance(context).isCPCLPrinter() linha 111"

    .line 110
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {p2}, Lcom/br/ipad/isc/impressao/ZebraUtils;->getInstance(Landroid/content/Context;)Lcom/br/ipad/isc/impressao/ZebraUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/br/ipad/isc/impressao/ZebraUtils;->isCPCLPrinter()Z

    move-result v3

    const-string v4, " >>> Fim ZebraUtils.getInstance(context).isCPCLPrinter() linha 113"

    .line 112
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, " >>> Inicio imprimirConta() linha 114"

    .line 113
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v1, v4, v3}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->imprimirConta(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;Z)Z

    move-result v3

    const-string v4, " >>> Fim imprimirConta() linha 116"

    .line 115
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/br/ipad/isc/excecoes/StatusImpressoraException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/br/ipad/isc/excecoes/ImpressaoException; {:try_start_0 .. :try_end_0} :catch_0

    move p4, v3

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p3

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    .line 130
    :goto_0
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorAlertaValidarConexaoImpressora(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

    move-result-object v1

    .line 131
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2, p4}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->defineAlerta(ILjava/lang/String;I)Z

    .line 132
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ImpressaoException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ImpressaoException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_3

    .line 125
    :goto_1
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorAlertaValidarConexaoImpressora(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

    move-result-object p1

    const/4 v1, 0x2

    const v3, 0x7f0b006d

    new-array v2, v2, [Ljava/lang/Object;

    .line 126
    invoke-virtual {p3}, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, p4

    invoke-virtual {p2, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2, p4}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->defineAlerta(ILjava/lang/String;I)Z

    move-result p4

    .line 127
    invoke-virtual {p3}, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p3}, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_3

    .line 118
    :goto_2
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorAlertaValidarConexaoImpressora(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

    move-result-object v1

    .line 119
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2, p4}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->defineAlerta(ILjava/lang/String;I)Z

    .line 120
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;->getStackTrace()[Ljava/lang/StackTraceElement;

    :cond_0
    :goto_3
    const-string p1, " > Fim verifica impressao conta"

    .line 138
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p4
.end method

.method public verificarImpressaoGuia(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;IZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    const-string p3, "ISC"

    const-string p4, " > Inicio verifica impressao guia"

    .line 734
    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p4, " >> Inicio pesquisarPorId() linha 95"

    .line 737
    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object p4

    .line 739
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0, p1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object p4

    check-cast p4, Lcom/br/ipad/isc/bean/ImovelConta;

    const-string v0, " >> Fim pesquisarPorId() linha 98"

    .line 740
    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " >> Inicio verificarExistenciaImpressora() linha 104"

    .line 742
    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->verificarExistenciaImpressora(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result v0

    const-string v1, " >> Fim verificarExistenciaImpressora() linha 106"

    .line 744
    invoke-static {p3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0025

    const/4 v2, 0x1

    :try_start_0
    const-string v3, " >>> Inicio ZebraUtils.getInstance(context).isCPCLPrinter() linha 111"

    .line 749
    invoke-static {p3, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-static {p2}, Lcom/br/ipad/isc/impressao/ZebraUtils;->getInstance(Landroid/content/Context;)Lcom/br/ipad/isc/impressao/ZebraUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/br/ipad/isc/impressao/ZebraUtils;->isCPCLPrinter()Z

    move-result v3

    const-string v4, " >>> Fim ZebraUtils.getInstance(context).isCPCLPrinter() linha 113"

    .line 751
    invoke-static {p3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, " >>> Inicio imprimirGuia() linha 114"

    .line 752
    invoke-static {p3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, p4, v4, v3}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->imprimirGuia(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;Z)Z

    move-result v3

    const-string v4, " >>> Fim imprimirGuia() linha 116"

    .line 754
    invoke-static {p3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/br/ipad/isc/excecoes/StatusImpressoraException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/br/ipad/isc/excecoes/ImpressaoException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p4

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    .line 769
    :goto_0
    invoke-virtual {p0, p4}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorAlertaValidarConexaoImpressora(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

    move-result-object p4

    .line 770
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, v2, p2, v1}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->defineAlerta(ILjava/lang/String;I)Z

    .line 771
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ImpressaoException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ImpressaoException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_3

    .line 764
    :goto_1
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorAlertaValidarConexaoImpressora(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

    move-result-object p1

    const/4 v0, 0x2

    const v3, 0x7f0b006d

    new-array v2, v2, [Ljava/lang/Object;

    .line 765
    invoke-virtual {p4}, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p2, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2, v1}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->defineAlerta(ILjava/lang/String;I)Z

    move-result v1

    .line 766
    invoke-virtual {p4}, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-virtual {p4}, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_3

    .line 757
    :goto_2
    invoke-virtual {p0, p4}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getControladorAlertaValidarConexaoImpressora(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

    move-result-object p4

    .line 758
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, v2, p2, v1}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->defineAlerta(ILjava/lang/String;I)Z

    .line 759
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;->getStackTrace()[Ljava/lang/StackTraceElement;

    :cond_0
    :goto_3
    const-string p1, " > Fim verifica impressao guia"

    .line 777
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
