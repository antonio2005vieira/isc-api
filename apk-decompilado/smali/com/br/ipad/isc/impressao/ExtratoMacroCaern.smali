.class public Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;
.super Lcom/br/ipad/isc/impressao/ImpressaoCaern;
.source "ExtratoMacroCaern.java"


# static fields
.field private static instancia:Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/br/ipad/isc/impressao/ImpressaoCaern;-><init>()V

    return-void
.end method

.method public static getInstancia(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;
    .locals 1

    .line 26
    sget-object v0, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->instancia:Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;

    invoke-direct {v0}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->instancia:Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;

    .line 30
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->instancia:Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;

    iput-object p0, v0, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 31
    sget-object p0, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->instancia:Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;

    return-object p0
.end method


# virtual methods
.method public obterStringExtratoMacroCaern()Ljava/lang/StringBuilder;
    .locals 24

    move-object/from16 v9, p0

    const-string v0, "CENTER\n"

    const-string v10, "LEFT\n"

    .line 47
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->buffer:Ljava/lang/StringBuilder;

    .line 50
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getContrasteConta()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "! 0 200 200 225 1\nIN-MILLIMETERS CONTRAST "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getContrasteConta()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nLT LF\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "! 0 200 200 225 1\nIN-MILLIMETERS\nLT LF\n"

    .line 53
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto(Ljava/lang/String;)V

    .line 57
    :goto_0
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getEnderecoAtendimento()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, " -   -"

    const-string v3, ","

    invoke-static {v1, v2, v3}, Lcom/br/ipad/isc/util/Util;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getTelefone0800()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 59
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getTelefoneLocalidadeDDD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x4c

    const/4 v5, 0x6

    const/16 v7, 0x1a

    const/4 v8, 0x2

    move-object/from16 v1, p0

    .line 61
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTextos(IIIILjava/lang/String;II)V

    const/16 v8, 0xb

    const/16 v1, 0x4c

    .line 62
    invoke-virtual {v9, v1, v8, v11}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v2, 0xe

    .line 63
    invoke-virtual {v9, v12}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->formatarTelefone(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9, v1, v2, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/StringBuilder;)V

    .line 66
    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto(Ljava/lang/String;)V

    const/16 v1, 0x13

    const-string v2, "EXTRATO DE CONSUMO"

    const/4 v11, 0x0

    .line 67
    invoke-virtual {v9, v11, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    .line 68
    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto(Ljava/lang/String;)V

    .line 71
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 72
    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->dateToHoraString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto(Ljava/lang/String;)V

    const/16 v3, 0x17

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMPRESSO EM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AS "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x3

    invoke-virtual {v9, v12, v3, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x3a

    .line 80
    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-virtual {v9, v1, v3, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x50

    .line 81
    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v3, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x23

    .line 85
    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getNomeUsuario()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x5

    invoke-virtual {v9, v13, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/16 v5, 0x26

    .line 86
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getEndereco()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->cortarEndereco(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTextos(IIII[Ljava/lang/String;I)V

    .line 90
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->formatarInscricao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v9, v13, v2, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x2a

    .line 91
    iget-object v3, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoRota()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v1, v2, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x35

    .line 92
    iget-object v3, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getSequencialRota()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v1, v2, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 97
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v1

    .line 99
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->getNumeroEconomias(Ljava/util/ArrayList;)[I

    move-result-object v1

    const/16 v2, 0x41

    const/4 v3, 0x0

    .line 100
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 101
    aget v4, v1, v3

    if-lez v4, :cond_1

    const/16 v4, 0x31

    .line 102
    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v2, v4, v5}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0xa

    goto :goto_1

    :cond_2
    const-string v1, "SEM MEDIDOR"

    .line 106
    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoAgua(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 107
    iget-object v3, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v4, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigEsgoto()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoEsgoto(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    .line 118
    iget-object v4, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v5, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 119
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v4

    .line 121
    iget-object v5, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v6, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 122
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v6

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v6, v15}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v5

    .line 126
    iget-object v6, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v15, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 127
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v15, v8}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v8

    .line 129
    iget-object v6, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v15, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 130
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v15, v12}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v15, ""

    const/16 v16, 0x0

    if-eqz v4, :cond_b

    .line 139
    :try_start_1
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v1

    .line 140
    iget-object v6, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v6, v4}, Lcom/br/ipad/isc/fachada/Fachada;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 141
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 143
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 144
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v13, :cond_3

    .line 146
    iget-object v11, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v13, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/br/ipad/isc/fachada/Fachada;->obterImovelAreaComum(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v11

    goto :goto_2

    :cond_3
    move-object/from16 v11, v16

    :goto_2
    if-eqz v11, :cond_4

    .line 151
    iget-object v13, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 152
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v20, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v14, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v1

    .line 154
    iget-object v13, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 155
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v14, v7}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v7

    goto :goto_3

    :cond_4
    move-object/from16 v20, v1

    move-object/from16 v1, v16

    move-object v7, v1

    :goto_3
    if-eqz v8, :cond_8

    .line 160
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 161
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v13

    .line 162
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v14

    goto :goto_5

    .line 166
    :cond_5
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 167
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v13

    goto :goto_4

    :cond_6
    move-object/from16 v13, v16

    .line 170
    :goto_4
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v14

    :goto_5
    if-eqz v1, :cond_7

    .line 174
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v21

    if-eqz v21, :cond_7

    .line 176
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_6

    .line 178
    :cond_7
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_6

    :cond_8
    move-object/from16 v1, v16

    move-object v13, v1

    move-object v14, v13

    :goto_6
    if-eqz v7, :cond_9

    .line 182
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v21

    if-eqz v21, :cond_9

    .line 184
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v7

    :goto_7
    move-object/from16 v21, v7

    move-object v7, v1

    goto :goto_8

    :cond_9
    if-eqz v12, :cond_a

    .line 187
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 188
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v7

    goto :goto_7

    :cond_a
    move-object v7, v1

    move-object/from16 v21, v16

    :goto_8
    move-object/from16 v1, v20

    move-object/from16 v20, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v11

    goto/16 :goto_d

    :cond_b
    if-eqz v5, :cond_14

    .line 195
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v1

    .line 196
    iget-object v6, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v6, v5}, Lcom/br/ipad/isc/fachada/Fachada;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 197
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v7

    invoke-static {v7}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    if-eqz v4, :cond_c

    .line 199
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 200
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v11, 0x5

    if-eq v7, v11, :cond_d

    .line 201
    :cond_c
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 202
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v11, 0x5

    if-ne v7, v11, :cond_e

    .line 204
    :cond_d
    iget-object v7, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v11, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/br/ipad/isc/fachada/Fachada;->obterImovelAreaComum(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v7

    move-object v11, v7

    goto :goto_9

    :cond_e
    move-object/from16 v11, v16

    :goto_9
    if-eqz v11, :cond_f

    .line 209
    iget-object v7, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 210
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v20, v1

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v13, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v1

    goto :goto_a

    :cond_f
    move-object/from16 v20, v1

    move-object/from16 v1, v16

    :goto_a
    if-eqz v12, :cond_13

    .line 215
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 216
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v7

    .line 217
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v13

    goto :goto_b

    .line 220
    :cond_10
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v7

    .line 221
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v13

    :goto_b
    move-object v14, v13

    move-object v13, v7

    if-eqz v1, :cond_11

    .line 224
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 226
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v7

    goto :goto_c

    .line 228
    :cond_11
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 229
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v7

    :goto_c
    move-object/from16 v21, v7

    move-object/from16 v7, v16

    goto/16 :goto_8

    :cond_12
    move-object/from16 v7, v16

    move-object/from16 v21, v7

    goto/16 :goto_8

    :cond_13
    move-object/from16 v7, v16

    move-object v13, v7

    move-object v14, v13

    move-object/from16 v21, v14

    move-object/from16 v1, v20

    move-object/from16 v20, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v11

    goto :goto_e

    :cond_14
    if-nez v4, :cond_15

    if-nez v5, :cond_15

    if-eqz v8, :cond_15

    .line 239
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v13

    .line 240
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v20, v15

    move-object/from16 v6, v16

    move-object v7, v6

    move-object/from16 v17, v7

    move-object/from16 v21, v17

    :goto_d
    move-object/from16 v23, v14

    move-object v14, v13

    move-object/from16 v13, v23

    goto :goto_e

    :cond_15
    move-object/from16 v20, v15

    move-object/from16 v6, v16

    move-object v7, v6

    move-object v13, v7

    move-object v14, v13

    move-object/from16 v17, v14

    move-object/from16 v21, v17

    :goto_e
    const/16 v11, 0x37

    move-object/from16 v22, v7

    const/16 v7, 0xa

    .line 246
    invoke-virtual {v9, v7, v11, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x2d

    .line 247
    invoke-virtual {v9, v1, v11, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x4e

    .line 248
    invoke-virtual {v9, v1, v11, v3}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x3c

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA LEITURA:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v9, v3, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x3f

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LEIT. ATUAL:   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v9, v3, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x42

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LEIT. ANT.:    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v9, v3, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x45

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DIAS CONSUMO:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v9, v3, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x48

    .line 259
    invoke-virtual {v9, v4, v5, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->gerarHistorico(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;I)I

    move-result v1

    add-int/lit8 v11, v1, 0xa

    const/4 v2, 0x5

    const/16 v4, 0x64

    const v6, 0x3dcccccd    # 0.1f

    move-object/from16 v1, p0

    move v3, v11

    move v5, v11

    .line 261
    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendLinha(IIIIF)V

    .line 263
    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto(Ljava/lang/String;)V

    const/4 v1, 0x1

    add-int/2addr v11, v1

    const-string v2, "EXTRATO DE CONSUMO DO MACROMEDIDOR"

    const/4 v3, 0x0

    .line 264
    invoke-virtual {v9, v3, v11, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    .line 265
    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto(Ljava/lang/String;)V

    add-int/2addr v11, v1

    if-eqz v8, :cond_16

    .line 272
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_f

    :cond_16
    if-eqz v12, :cond_17

    .line 275
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_f

    :cond_17
    const/4 v1, 0x0

    :goto_f
    if-eqz v22, :cond_18

    .line 283
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    .line 284
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    :goto_10
    move v3, v2

    move-object/from16 v2, v16

    goto :goto_11

    :cond_18
    if-eqz v21, :cond_19

    .line 287
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    .line 288
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto :goto_10

    :cond_19
    move-object/from16 v2, v16

    const/4 v3, 0x0

    :goto_11
    add-int/lit8 v4, v11, 0x3

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CONSUMO DO IM\u00d3VEL CONDOM\u00cdNIO (M3): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x5

    invoke-virtual {v9, v5, v4, v1}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 v1, v11, 0x6

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SOMA DOS CONSUMOS DOS IM\u00d3VEIS VINCULADOS (M3): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v6, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/br/ipad/isc/fachada/Fachada;->obterConsumoImoveisMicro(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " m3"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    invoke-virtual {v9, v4, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 v1, v11, 0x9

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QUANTIDADE DE IM\u00d3VEIS VINCULADOS (M3): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v5, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->obterQuantidadeImovelMicro(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v8, v20

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    invoke-virtual {v9, v4, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    if-nez v17, :cond_1a

    .line 298
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->obterQuantidadeImovelMicro(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int v1, v3, v1

    if-nez v1, :cond_1a

    const/4 v3, 0x0

    :cond_1a
    add-int/lit8 v1, v11, 0xc

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CONSUMO RATEADO (M3): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v9, v3, v1, v2}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 v11, v11, 0x10

    const/4 v2, 0x5

    const/16 v4, 0x64

    const v6, 0x3dcccccd    # 0.1f

    move-object/from16 v1, p0

    move v3, v11

    move v5, v11

    .line 307
    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendLinha(IIIIF)V

    .line 309
    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto(Ljava/lang/String;)V

    const/4 v0, 0x1

    add-int/2addr v11, v0

    const-string v0, "IMPORTANTE"

    const/4 v1, 0x0

    .line 310
    invoke-virtual {v9, v1, v11, v0}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto70(IILjava/lang/String;)V

    .line 311
    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto(Ljava/lang/String;)V

    const/4 v0, 0x4

    add-int/lit8 v5, v11, 0x4

    const/16 v1, 0xc

    new-array v6, v1, [Ljava/lang/String;

    const-string v1, "CASO O VALOR DO RATEIO ESTEJA ELEVADO:"

    const/4 v2, 0x0

    aput-object v1, v6, v2

    const/4 v1, 0x1

    aput-object v8, v6, v1

    const-string v1, "1 - Confirme a leitura do macro."

    const/4 v2, 0x2

    aput-object v1, v6, v2

    const-string v1, "2 - Verifique os reservat\u00f3rios."

    const/4 v2, 0x3

    aput-object v1, v6, v2

    const-string v1, "3 - Verifique se h\u00e1 apartamento ligado clandestino."

    aput-object v1, v6, v0

    const/4 v0, 0x5

    aput-object v8, v6, v0

    const/4 v0, 0x6

    aput-object v8, v6, v0

    const/4 v0, 0x7

    const-string v1, "QUALQUER IRREGULARIDADE COMUNIQUE A CAERN ATRAV\u00c9S DO"

    aput-object v1, v6, v0

    const/16 v0, 0x8

    const-string v1, "SETOR DE ATENDIMENTO."

    aput-object v1, v6, v0

    const/16 v0, 0x9

    aput-object v8, v6, v0

    const-string v0, "RATEIO: Obtido atrav\u00e9s da diferen\u00e7a do consumo do"

    aput-object v0, v6, v7

    const-string v0, "        macromedidor e os dos apartamentos."

    const/16 v1, 0xb

    aput-object v0, v6, v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v7, 0x3

    move-object/from16 v1, p0

    .line 330
    invoke-virtual/range {v1 .. v7}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTextos(IIII[Ljava/lang/String;I)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->comandoImpressao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->appendTexto(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_12

    :catch_0
    move-exception v0

    .line 337
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    :goto_12
    iget-object v0, v9, Lcom/br/ipad/isc/impressao/ExtratoMacroCaern;->buffer:Ljava/lang/StringBuilder;

    return-object v0
.end method
