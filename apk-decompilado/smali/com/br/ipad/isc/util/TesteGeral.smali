.class public Lcom/br/ipad/isc/util/TesteGeral;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "TesteGeral.java"


# static fields
.field private static instancia:Lcom/br/ipad/isc/util/TesteGeral;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/br/ipad/isc/util/TesteGeral;

    invoke-direct {v0}, Lcom/br/ipad/isc/util/TesteGeral;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/util/TesteGeral;->instancia:Lcom/br/ipad/isc/util/TesteGeral;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method private calcular(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/br/ipad/isc/util/TesteGeral;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v0

    .line 52
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/br/ipad/isc/util/TesteGeral;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v1

    .line 54
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v1

    .line 56
    new-instance v4, Lcom/br/ipad/isc/util/Teste;

    invoke-direct {v4}, Lcom/br/ipad/isc/util/Teste;-><init>()V

    .line 57
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/br/ipad/isc/util/Teste;->setImovelId(I)V

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/br/ipad/isc/util/TesteGeral;->getControladorConsumoAnteriores()Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;

    move-result-object v7

    .line 62
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->buscarConsumoAnterioresPorImovelTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v7

    .line 63
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getConsumo()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 64
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getConsumoMedio()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v7, v8

    .line 65
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeitura(Ljava/lang/Integer;)V

    .line 66
    invoke-virtual {v4, v7}, Lcom/br/ipad/isc/util/Teste;->setLeituraAgua(I)V

    :cond_0
    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/br/ipad/isc/util/TesteGeral;->getControladorConsumoAnteriores()Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v5}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->buscarConsumoAnterioresPorImovelTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 71
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getConsumo()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 72
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getConsumoMedio()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v0, v7

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeitura(Ljava/lang/Integer;)V

    .line 74
    invoke-virtual {v4, v0}, Lcom/br/ipad/isc/util/Teste;->setLeituraPoco(I)V

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/util/TesteGeral;->getControladorConta()Lcom/br/ipad/isc/controladores/ControladorConta;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorConta;->calcularConta(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 81
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->getInstance()Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    move-result-object v0

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->obterValorTotal(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 82
    invoke-virtual {v4, v0, v1}, Lcom/br/ipad/isc/util/Teste;->setAgua(D)V

    .line 83
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->getInstance()Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    move-result-object v0

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->obterValorTotal(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 84
    invoke-virtual {v4, v0, v1}, Lcom/br/ipad/isc/util/Teste;->setEsgoto(D)V

    .line 85
    invoke-virtual {p0}, Lcom/br/ipad/isc/util/TesteGeral;->getControladorCreditoRealizado()Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;

    move-result-object v0

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->obterValorCreditoTotal(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 86
    invoke-virtual {v4, v0, v1}, Lcom/br/ipad/isc/util/Teste;->setCredito(D)V

    .line 87
    invoke-virtual {p0}, Lcom/br/ipad/isc/util/TesteGeral;->getControladorDebitoCobrado()Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;

    move-result-object v0

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;->obterValorDebitoTotal(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 88
    invoke-virtual {v4, v0, v1}, Lcom/br/ipad/isc/util/Teste;->setDebito(D)V

    .line 89
    invoke-virtual {p0}, Lcom/br/ipad/isc/util/TesteGeral;->getControladorContaImposto()Lcom/br/ipad/isc/controladores/ControladorContaImposto;

    move-result-object v0

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/controladores/ControladorContaImposto;->obterValorImpostoTotal(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 90
    invoke-virtual {v4, v0, v1}, Lcom/br/ipad/isc/util/Teste;->setImposto(D)V

    .line 91
    invoke-virtual {v4}, Lcom/br/ipad/isc/util/Teste;->atualizarTotal()V

    return-void
.end method

.method public static executar()V
    .locals 5

    const-string v0, "TESTE GERAL FINALIZADO"

    const-string v1, "ISC"

    .line 36
    :try_start_0
    sget-object v2, Lcom/br/ipad/isc/util/TesteGeral;->instancia:Lcom/br/ipad/isc/util/TesteGeral;

    invoke-virtual {v2}, Lcom/br/ipad/isc/util/TesteGeral;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->buscarImovelContas()Ljava/util/ArrayList;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 39
    sget-object v4, Lcom/br/ipad/isc/util/TesteGeral;->instancia:Lcom/br/ipad/isc/util/TesteGeral;

    invoke-direct {v4, v3}, Lcom/br/ipad/isc/util/TesteGeral;->calcular(Lcom/br/ipad/isc/bean/ImovelConta;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 43
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :cond_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method
