.class public Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;
.super Lcom/br/ipad/isc/impressao/ImpressaoSAEMA;
.source "NotificacaoDeImpedimentoSAEMA.java"


# static fields
.field private static codigoFebraban:Ljava/lang/String;

.field private static instancia:Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;


# instance fields
.field private isImpressoraCPCL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/br/ipad/isc/impressao/ImpressaoSAEMA;-><init>()V

    return-void
.end method

.method public static getInstancia(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/String;)Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;
    .locals 1

    .line 31
    sget-object v0, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->instancia:Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;

    invoke-direct {v0}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->instancia:Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;

    .line 35
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->instancia:Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;

    iput-object p0, v0, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 36
    sput-object p1, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->codigoFebraban:Ljava/lang/String;

    .line 37
    sget-object p0, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->instancia:Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;

    return-object p0
.end method


# virtual methods
.method public imprimirConta(Z)Ljava/lang/StringBuilder;
    .locals 25

    move-object/from16 v9, p0

    const-string v0, ""

    const-string v10, "\n"

    .line 42
    invoke-virtual/range {p0 .. p1}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->setImpressoraCPCL(Z)V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->buffer:Ljava/lang/StringBuilder;

    .line 47
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "! 0 816 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->tamanhoPapel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 1\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/16 v4, 0xc8

    const/16 v5, 0xbe

    .line 50
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v6, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/br/ipad/isc/fachada/Fachada;->formatarInscricao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T 7 0 455 190 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T 7 1 565 175 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T 7 1 675 175 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataVencimento()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x1e

    const/16 v5, 0xe6

    .line 61
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNomeUsuario()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x1e

    const/16 v5, 0x104

    .line 62
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getEndereco()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3c

    const/16 v8, 0x1b

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->dividirLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    .line 63
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoDebitoAutomatico()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoDebitoAutomatico()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xd

    .line 64
    iget-object v2, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoDebitoAutomatico()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/br/ipad/isc/util/Util;->adicionarZerosEsquerdaNumero(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "T 7 0 31 360 C\u00f3digo D\u00e9bito Autom\u00e1tico: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    .line 67
    :cond_0
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getSequencialRota()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/br/ipad/isc/util/Util;->formatarGrupoRotaESequencial(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    .line 70
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->gerarCategoriaSubcategoria(Ljava/lang/Integer;)V

    const-string v1, "N\u00c3O MEDIDO"

    .line 72
    iget-object v2, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 73
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v2

    .line 74
    iget-object v3, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v4, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 75
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 78
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 80
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    move-object v6, v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x3c

    const/16 v5, 0x1cc

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 82
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 90
    iget-object v2, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 92
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 93
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorNotificaCliente()Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v1, v2

    .line 98
    :cond_3
    iget-object v2, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 99
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 100
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorNotificaCliente()Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v1, v2

    .line 105
    :cond_4
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v10

    const-string v12, "Constatou-se que n\u00e3o foi realizada a leitura neste m\u00eas em "

    const-string v13, "virtude de obstru\u00e7\u00e3o ou impedimento gerado pelo pr\u00f3prio mun\u00edcipe "

    const-string v14, "(vide ocorr\u00eancia acima relatada). Sendo assim o im\u00f3vel est\u00e1 "

    const-string v15, "sujeito a ac\u00famulo de leituras que poder\u00e1 originar elevado valor "

    const-string v16, "faturado, al\u00e9m de sujei\u00e7\u00e3o \u00e0 multa nos termos da Resolu\u00e7\u00e3o "

    const-string v17, "310/2019 da ARES-PCJ Artigo 46 inciso VIII e  Artigo 47. "

    const-string v18, "Portanto solicitamos que o problema seja sanado no prazo   "

    const-string v19, "de 30 dias evitando maiores percal\u00e7os."

    const-string v20, "Em caso de duvidas, dirija-se ao atendimento do SAEMA, situado a"

    const-string v21, "Rua Jose Bonifacio, 645 Centro ou entre em contato pelo telefone"

    const-string v22, "(19) 3544-9770 / 3544-7043, para maiores esclarecimentos"

    .line 120
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 121
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x64

    const/16 v5, 0x208

    const-string v6, "NOTIFICACAO DE IMPEDIMENTO DE LEITURA (OBSTRUCAO/ACESSO)"

    const/4 v7, 0x0

    const/16 v23, 0x0

    move-object/from16 v1, p0

    move-object/from16 v24, v0

    move-object v0, v8

    move/from16 v8, v23

    .line 123
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/16 v23, 0x230

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x1f

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ref.: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2d

    const/16 v8, 0x19

    const/16 v5, 0x230

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->dividirLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0xfa

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getDescricaoAnormalidadeLeitura()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2d

    const/16 v8, 0x19

    move-object/from16 v1, p0

    move/from16 v5, v23

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->dividirLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x1f

    const/16 v5, 0x280

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v6, v12

    .line 131
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x1f

    const/16 v5, 0x299

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v6, v13

    .line 132
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x1f

    const/16 v5, 0x2b2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v6, v14

    .line 133
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x1f

    const/16 v5, 0x2cb

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v6, v15

    .line 134
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x1f

    const/16 v5, 0x2e4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, v16

    .line 135
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x1f

    const/16 v5, 0x2fd

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, v17

    .line 136
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x1f

    const/16 v5, 0x316

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, v18

    .line 137
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x1f

    const/16 v5, 0x32f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, v19

    .line 138
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x1f

    const/16 v5, 0x366

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, v20

    .line 141
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x1f

    const/16 v5, 0x37f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, v21

    .line 142
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x1f

    const/16 v5, 0x398

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, v22

    .line 143
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/16 v0, 0x695

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/16 v4, 0xdc

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v24

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v5, 0x695

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/16 v4, 0x172

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v5, 0x695

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0x212

    const-string v6, "*******"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v5, 0x695

    move-object/from16 v1, p0

    .line 153
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0x2a8

    const-string v6, "*******"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move v5, v0

    .line 154
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V

    const-string v0, "FORM\nPRINT "

    .line 156
    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->appendTexto(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ERRO na gera\u00e7\u00e3o da conta."

    .line 161
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_1
    iget-object v0, v9, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->buffer:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method protected setImpressoraCPCL(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/br/ipad/isc/impressao/NotificacaoDeImpedimentoSAEMA;->isImpressoraCPCL:Z

    return-void
.end method
