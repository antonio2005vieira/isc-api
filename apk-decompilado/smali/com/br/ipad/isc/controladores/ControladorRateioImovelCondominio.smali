.class public Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorRateioImovelCondominio.java"


# instance fields
.field private colecaoMicros:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private consumoAguaASerRateadoPorEconomiaMedido:I

.field private consumoAguaASerRateadoPorEconomiaNaoMedido:I

.field private consumoEsgotoASerRateadoPorEconomiaMedido:I

.field private consumoEsgotoASerRateadoPorEconomiaNaoMedido:I

.field private enviarImovelCondominio:Z

.field private existeImovelVinculadoRateioAreaComumAgua:Z

.field private existeImovelVinculadoRateioAreaComumEsgoto:Z

.field private helper:Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;

.field private imoveisParaEnvio:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ImovelConta;",
            ">;"
        }
    .end annotation
.end field

.field private imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

.field private imprimirEnviarValorContaMenorMinimo:Z

.field private indicadorCalcularCondominioSemImpressao:Ljava/lang/Integer;

.field private sistemaParametros:Lcom/br/ipad/isc/bean/SistemaParametros;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/ImovelConta;ZZIIIILcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;ZLjava/lang/Integer;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->existeImovelVinculadoRateioAreaComumAgua:Z

    .line 25
    iput-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->existeImovelVinculadoRateioAreaComumEsgoto:Z

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imprimirEnviarValorContaMenorMinimo:Z

    .line 33
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    iput-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->sistemaParametros:Lcom/br/ipad/isc/bean/SistemaParametros;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imoveisParaEnvio:Ljava/util/ArrayList;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->colecaoMicros:Ljava/util/ArrayList;

    .line 36
    iput-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->enviarImovelCondominio:Z

    .line 48
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 49
    iput-boolean p2, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->existeImovelVinculadoRateioAreaComumAgua:Z

    .line 50
    iput-boolean p3, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->existeImovelVinculadoRateioAreaComumEsgoto:Z

    .line 51
    iput p4, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->consumoAguaASerRateadoPorEconomiaMedido:I

    .line 52
    iput p5, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->consumoAguaASerRateadoPorEconomiaNaoMedido:I

    .line 53
    iput p6, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->consumoEsgotoASerRateadoPorEconomiaMedido:I

    .line 54
    iput p7, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->consumoEsgotoASerRateadoPorEconomiaNaoMedido:I

    .line 55
    iput-object p8, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->helper:Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;

    .line 56
    iput-object p10, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->indicadorCalcularCondominioSemImpressao:Ljava/lang/Integer;

    .line 58
    invoke-direct {p0, p9}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->buscarImoveis(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imoveisParaEnvio:Ljava/util/ArrayList;

    return-object p0
.end method

.method private ajustarLeituraMacro(Lcom/br/ipad/isc/bean/ConsumoHistorico;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v1

    .line 159
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoLigacao()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamentoHelper()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v2

    .line 164
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v3

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoLigacao()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->obterConsumoImoveisMicro(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    .line 165
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->obterQuantidadeImovelMicro(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    rem-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamentoHelper()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamento(Ljava/lang/Integer;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamentoHelper()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamento(Ljava/lang/Integer;)V

    .line 174
    :goto_0
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    :cond_1
    return-void
.end method

.method private buscarImoveis(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->buscarIdsImoveisMicro(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->colecaoMicros:Ljava/util/ArrayList;

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->buscarImovelCondominiosNaoImpressos(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->colecaoMicros:Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private calcularConsumoAguaImovelMicroMedido(Lcom/br/ipad/isc/bean/ImovelConta;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 536
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorRateioAreaComumImovelNaoFat()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v0

    .line 541
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 548
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int p2, p2, p1

    .line 547
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    .line 556
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_1

    .line 557
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-le p1, p2, :cond_1

    .line 558
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    .line 564
    :cond_1
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMesImoveisMicro(Ljava/lang/Integer;)V

    .line 569
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 570
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p1, p2

    .line 569
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 572
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    :cond_2
    return-void
.end method

.method private calcularConsumoAguaImovelMicroNaoMedido(Lcom/br/ipad/isc/bean/ImovelConta;IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 480
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorRateioAreaComumImovelNaoFat()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v0

    .line 485
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v0

    .line 488
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v1

    .line 489
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_1

    .line 499
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v0

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int p1, p1, p2

    .line 498
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 502
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    .line 510
    :goto_0
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_2

    .line 511
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 512
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    .line 517
    :cond_2
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMesImoveisMicro(Ljava/lang/Integer;)V

    .line 522
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    if-nez p3, :cond_3

    .line 524
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    .line 526
    :cond_3
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    :cond_4
    return-void
.end method

.method private calcularConsumoEsgotoImovelMicroMedido(Lcom/br/ipad/isc/bean/ImovelConta;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 662
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorRateioAreaComumImovelNaoFat()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoEsgoto()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 666
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v0

    .line 667
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 674
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int p2, p2, p1

    .line 673
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    .line 682
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_1

    .line 683
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-le p1, p2, :cond_1

    .line 684
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    .line 690
    :cond_1
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMesImoveisMicro(Ljava/lang/Integer;)V

    .line 695
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 696
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p1, p2

    .line 695
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 698
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    :cond_2
    return-void
.end method

.method private calcularConsumoEsgotoImovelMicroNaoMedido(Lcom/br/ipad/isc/bean/ImovelConta;ILcom/br/ipad/isc/bean/ImovelConta;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 580
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorRateioAreaComumImovelNaoFat()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoEsgoto()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 586
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v0

    .line 587
    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p3, v2}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p3

    .line 589
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v0

    .line 590
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    .line 601
    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 602
    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v4, 0x4

    if-ne p3, v4, :cond_2

    .line 604
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object p3

    .line 605
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v3, v1}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p3

    if-nez p3, :cond_1

    .line 609
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object p3

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int p1, p1, p2

    .line 608
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    goto :goto_0

    .line 612
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    goto :goto_0

    .line 616
    :cond_2
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object p3

    .line 617
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v1, v3}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p3

    if-nez p3, :cond_3

    .line 621
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object p3

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int p1, p1, p2

    .line 620
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    goto :goto_0

    .line 624
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    .line 633
    :goto_0
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_4

    .line 634
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-le p1, p3, :cond_4

    .line 635
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    .line 641
    :cond_4
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMesImoveisMicro(Ljava/lang/Integer;)V

    .line 646
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 647
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/2addr p1, p3

    .line 646
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    if-nez p4, :cond_5

    .line 650
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    .line 653
    :cond_5
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    :cond_6
    return-void
.end method

.method private determinarRateioAguaMedido(Lcom/br/ipad/isc/bean/ImovelConta;IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v0

    .line 415
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p2

    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    .line 418
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcAreaComum()Ljava/lang/Integer;

    move-result-object p2

    sget-object p4, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p2, p4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object p2

    .line 421
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object p2

    .line 422
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p2

    .line 420
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 424
    invoke-direct {p0, p1, p2}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->calcularConsumoAguaImovelMicroMedido(Lcom/br/ipad/isc/bean/ImovelConta;I)V

    goto :goto_0

    .line 427
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->calcularConsumoAguaImovelMicroMedido(Lcom/br/ipad/isc/bean/ImovelConta;I)V

    :goto_0
    return-void
.end method

.method private determinarRateioAguaNaoMedido(Lcom/br/ipad/isc/bean/ImovelConta;IILcom/br/ipad/isc/bean/ImovelConta;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 387
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object p2

    .line 388
    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p4

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p4, v1}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 392
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-nez p4, :cond_1

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object p2

    .line 394
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4, v1}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 395
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/16 v2, 0x8

    if-ne p4, v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz p5, :cond_3

    if-eqz p2, :cond_3

    .line 399
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcAreaComum()Ljava/lang/Integer;

    move-result-object p2

    sget-object p4, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p2, p4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 400
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object p2

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, v1}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 401
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object p2

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, v1}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object p2

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 402
    invoke-direct {p0, p1, p2, v0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->calcularConsumoAguaImovelMicroNaoMedido(Lcom/br/ipad/isc/bean/ImovelConta;IZ)V

    goto :goto_1

    .line 405
    :cond_3
    invoke-direct {p0, p1, p3, v0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->calcularConsumoAguaImovelMicroNaoMedido(Lcom/br/ipad/isc/bean/ImovelConta;IZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method private determinarRateioEsgotoMedido(Lcom/br/ipad/isc/bean/ImovelConta;ILcom/br/ipad/isc/bean/ImovelConta;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 460
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object p3

    .line 461
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p3

    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    .line 464
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcAreaComum()Ljava/lang/Integer;

    move-result-object p3

    sget-object p4, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p3, p4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object p2

    .line 467
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object p2

    .line 468
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p2

    .line 466
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 470
    invoke-direct {p0, p1, p2}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->calcularConsumoEsgotoImovelMicroMedido(Lcom/br/ipad/isc/bean/ImovelConta;I)V

    goto :goto_0

    .line 473
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->calcularConsumoEsgotoImovelMicroMedido(Lcom/br/ipad/isc/bean/ImovelConta;I)V

    :goto_0
    return-void
.end method

.method private determinarRateioEsgotoNaoMedido(Lcom/br/ipad/isc/bean/ImovelConta;ILcom/br/ipad/isc/bean/ImovelConta;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 435
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v0

    .line 436
    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 440
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v0

    .line 442
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 443
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    const/4 v2, 0x0

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    if-eqz v0, :cond_3

    .line 447
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcAreaComum()Ljava/lang/Integer;

    move-result-object p4

    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p4, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 448
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object p2

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p4

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p4, v1}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 449
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object p2

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object p2

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 450
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->calcularConsumoEsgotoImovelMicroNaoMedido(Lcom/br/ipad/isc/bean/ImovelConta;ILcom/br/ipad/isc/bean/ImovelConta;Z)V

    goto :goto_1

    .line 453
    :cond_3
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->calcularConsumoEsgotoImovelMicroNaoMedido(Lcom/br/ipad/isc/bean/ImovelConta;ILcom/br/ipad/isc/bean/ImovelConta;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private imprimir(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;,
            Lcom/br/ipad/isc/excecoes/ImpressaoException;
        }
    .end annotation

    .line 374
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorImpressao()Lcom/br/ipad/isc/controladores/ControladorImpressao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->verificarExistenciaImpressora(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorImpressao()Lcom/br/ipad/isc/controladores/ControladorImpressao;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->imprimirContaRateio(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;)V

    return-void

    .line 379
    :cond_0
    new-instance p1, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;

    invoke-direct {p1}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;-><init>()V

    throw p1
.end method

.method private ratear(Lcom/br/ipad/isc/bean/ImovelConta;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;,
            Lcom/br/ipad/isc/excecoes/ImpressaoException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v0

    .line 246
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v0

    .line 247
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v1

    .line 248
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/4 v9, 0x2

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 258
    :goto_0
    iget-boolean v12, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->existeImovelVinculadoRateioAreaComumAgua:Z

    if-eqz v12, :cond_3

    if-eqz v0, :cond_2

    .line 261
    iget v5, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->consumoAguaASerRateadoPorEconomiaMedido:I

    invoke-direct {p0, p1, v9, v5, v12}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->determinarRateioAguaMedido(Lcom/br/ipad/isc/bean/ImovelConta;IIZ)V

    goto :goto_1

    .line 263
    :cond_2
    iget v10, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->consumoAguaASerRateadoPorEconomiaNaoMedido:I

    iget-object v11, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->determinarRateioAguaNaoMedido(Lcom/br/ipad/isc/bean/ImovelConta;IILcom/br/ipad/isc/bean/ImovelConta;Z)V

    goto :goto_1

    .line 267
    :cond_3
    iget-object v5, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->helper:Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasAguaNaoMedidas()I

    move-result v5

    if-lez v5, :cond_4

    .line 268
    iget v10, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->consumoAguaASerRateadoPorEconomiaNaoMedido:I

    iget-object v11, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    iget-boolean v12, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->existeImovelVinculadoRateioAreaComumAgua:Z

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->determinarRateioAguaNaoMedido(Lcom/br/ipad/isc/bean/ImovelConta;IILcom/br/ipad/isc/bean/ImovelConta;Z)V

    goto :goto_1

    .line 271
    :cond_4
    iget v5, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->consumoAguaASerRateadoPorEconomiaMedido:I

    iget-boolean v7, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->existeImovelVinculadoRateioAreaComumAgua:Z

    invoke-direct {p0, p1, v9, v5, v7}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->determinarRateioAguaMedido(Lcom/br/ipad/isc/bean/ImovelConta;IIZ)V

    .line 275
    :goto_1
    iget-boolean v5, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->existeImovelVinculadoRateioAreaComumEsgoto:Z

    if-eqz v5, :cond_6

    if-eqz v1, :cond_5

    .line 279
    iget v1, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->consumoEsgotoASerRateadoPorEconomiaMedido:I

    iget-object v7, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {p0, p1, v1, v7, v5}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->determinarRateioEsgotoMedido(Lcom/br/ipad/isc/bean/ImovelConta;ILcom/br/ipad/isc/bean/ImovelConta;Z)V

    goto :goto_2

    .line 282
    :cond_5
    iget v1, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->consumoEsgotoASerRateadoPorEconomiaNaoMedido:I

    iget-object v7, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {p0, p1, v1, v7, v5}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->determinarRateioEsgotoNaoMedido(Lcom/br/ipad/isc/bean/ImovelConta;ILcom/br/ipad/isc/bean/ImovelConta;Z)V

    goto :goto_2

    .line 287
    :cond_6
    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->helper:Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasEsgotoNaoMedidas()I

    move-result v1

    if-lez v1, :cond_7

    .line 289
    iget v1, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->consumoEsgotoASerRateadoPorEconomiaNaoMedido:I

    iget-object v5, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    iget-boolean v7, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->existeImovelVinculadoRateioAreaComumEsgoto:Z

    invoke-direct {p0, p1, v1, v5, v7}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->determinarRateioEsgotoNaoMedido(Lcom/br/ipad/isc/bean/ImovelConta;ILcom/br/ipad/isc/bean/ImovelConta;Z)V

    goto :goto_2

    .line 292
    :cond_7
    iget v1, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->consumoEsgotoASerRateadoPorEconomiaMedido:I

    iget-object v5, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    iget-boolean v7, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->existeImovelVinculadoRateioAreaComumEsgoto:Z

    invoke-direct {p0, p1, v1, v5, v7}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->determinarRateioEsgotoMedido(Lcom/br/ipad/isc/bean/ImovelConta;ILcom/br/ipad/isc/bean/ImovelConta;Z)V

    .line 297
    :goto_2
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 299
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v1

    .line 300
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v1

    .line 301
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v3

    .line 302
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v6}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v3

    .line 305
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConta;->getInstance()Lcom/br/ipad/isc/controladores/ControladorConta;

    move-result-object v5

    invoke-virtual {v5, p1, v1, v3}, Lcom/br/ipad/isc/controladores/ControladorConta;->calcularValores(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/ConsumoHistorico;)V

    .line 319
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->isValorContaMenorPermitido(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imprimirEnviarValorContaMenorMinimo:Z

    .line 325
    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->sistemaParametros:Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v1

    const-string v3, "18"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 329
    iget-boolean v3, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imprimirEnviarValorContaMenorMinimo:Z

    if-eqz v3, :cond_c

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcEmissaoConta()Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v3, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    .line 333
    :cond_8
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConta;->getInstance()Lcom/br/ipad/isc/controladores/ControladorConta;

    move-result-object v3

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/br/ipad/isc/controladores/ControladorConta;->obterValorConta(Ljava/lang/Integer;)D

    move-result-wide v5

    const v3, 0xf4240

    .line 332
    invoke-static {v5, v6, v3, p1}, Lcom/br/ipad/isc/util/Util;->validarImpressaoValorAcimaLimite(DILcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    const/high16 p1, -0x80000000

    if-eqz v0, :cond_a

    .line 350
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 351
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_a
    if-lez p1, :cond_b

    .line 357
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v0

    .line 358
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object p1

    check-cast p1, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    if-eqz p1, :cond_b

    .line 361
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorNaoImpressaoConta()Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 v4, 0x1

    :cond_b
    xor-int/lit8 p1, v4, 0x1

    return p1

    .line 330
    :cond_c
    :goto_3
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Valor da conta menor que o valor permitido!"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_4
    return v4
.end method


# virtual methods
.method public concluirRateio()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 184
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v1

    iget-object v3, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 187
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v1

    .line 191
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v3

    iget-object v4, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->pesquisarImovelCondominioAreaComum(Ljava/lang/Integer;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_0

    .line 197
    invoke-direct {p0, v0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->ajustarLeituraMacro(Lcom/br/ipad/isc/bean/ConsumoHistorico;)V

    .line 199
    invoke-direct {p0, v1}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->ajustarLeituraMacro(Lcom/br/ipad/isc/bean/ConsumoHistorico;)V

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorImpressao()Lcom/br/ipad/isc/controladores/ControladorImpressao;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->imovelNaoPermiteImpressao(Lcom/br/ipad/isc/bean/ImovelConta;ZI)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 202
    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcEmissaoConta()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorImpressao()Lcom/br/ipad/isc/controladores/ControladorImpressao;

    move-result-object v0

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->imprimirExtratoMacro(Landroid/content/Context;Lcom/br/ipad/isc/bean/ImovelConta;)Z

    .line 206
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->sistemaParametros:Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorSistemaLeitura()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->sistemaParametros:Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorSistemaLeitura()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelImpresso(Ljava/lang/Integer;)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcRateioRealizado(Ljava/lang/Integer;)V

    .line 213
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 222
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->buscarImovelCondominio(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imoveisParaEnvio:Ljava/util/ArrayList;

    .line 224
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->sistemaParametros:Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorTransmissaoOffline()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->enviarImovelCondominio:Z

    if-eqz v0, :cond_2

    .line 226
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio$1;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio$1;-><init>(Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 235
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method public obterTotal()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->colecaoMicros:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public proximoRateio()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;,
            Lcom/br/ipad/isc/excecoes/ImpressaoException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->colecaoMicros:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 82
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v2

    new-instance v3, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v3}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    .line 83
    invoke-virtual {v2, v0, v3}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 88
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v2

    iget-object v3, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->verificarRateioCondominio(Ljava/lang/Integer;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 89
    invoke-direct {p0, v0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->ratear(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result v2

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcNaoPermiteImpressao()Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    .line 101
    :goto_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorImpressao()Lcom/br/ipad/isc/controladores/ControladorImpressao;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->imovelNaoPermiteImpressao(Lcom/br/ipad/isc/bean/ImovelConta;ZI)Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorImpressao()Lcom/br/ipad/isc/controladores/ControladorImpressao;

    move-result-object v4

    iget-object v5, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imovelMacro:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v4, v5, v1, v1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->imovelNaoPermiteImpressao(Lcom/br/ipad/isc/bean/ImovelConta;ZI)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 106
    :cond_1
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcEmissaoConta()Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    .line 116
    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->sistemaParametros:Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorSistemaLeitura()Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    invoke-direct {p0, v0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->imprimir(Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 125
    :cond_3
    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelEnviado(Ljava/lang/Integer;)V

    .line 128
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcRateioRealizado()Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 129
    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcRateioRealizado(Ljava/lang/Integer;)V

    .line 131
    :cond_4
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 134
    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->colecaoMicros:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->enviarAoCalcular(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    iget-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->enviarImovelCondominio:Z

    if-eqz v0, :cond_5

    .line 139
    iput-boolean v3, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->enviarImovelCondominio:Z

    goto :goto_1

    .line 141
    :cond_5
    iput-boolean v1, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->enviarImovelCondominio:Z

    :goto_1
    return-void
.end method
