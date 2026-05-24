.class public Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;
.super Lcom/br/ipad/isc/impressao/ImpressaoCaern;
.source "NotificacaoDebitoCaern.java"


# static fields
.field private static instancia:Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/br/ipad/isc/impressao/ImpressaoCaern;-><init>()V

    return-void
.end method

.method public static getInstancia()Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;
    .locals 1

    .line 23
    sget-object v0, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->instancia:Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;

    invoke-direct {v0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->instancia:Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;

    .line 26
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->instancia:Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;

    return-object v0
.end method


# virtual methods
.method public imprimirNotificacaoDebito(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;
    .locals 23

    move-object/from16 v9, p0

    const-string v0, "CENTER\n"

    const-string v10, "LEFT\n"

    const-string v11, "***"

    const-string v12, "  "

    .line 31
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xbb8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, v9, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->buffer:Ljava/lang/StringBuilder;

    .line 34
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getContrasteConta()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 35
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

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "! 0 200 200 225 1\nIN-MILLIMETERS\nLT LF\n"

    .line 37
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto(Ljava/lang/String;)V

    .line 41
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getEnderecoAtendimento()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, " -   -"

    const-string v3, ","

    invoke-static {v1, v2, v3}, Lcom/br/ipad/isc/util/Util;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getTelefone0800()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getTelefoneLocalidadeDDD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x4c

    const/4 v5, 0x6

    const/16 v7, 0x1a

    const/4 v8, 0x2

    move-object/from16 v1, p0

    .line 44
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTextos(IIIILjava/lang/String;II)V

    const/16 v1, 0x4c

    const/16 v8, 0xb

    .line 45
    invoke-virtual {v9, v1, v8, v13}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x4c

    const/16 v2, 0xe

    .line 46
    invoke-virtual {v9, v14}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->formatarTelefone(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9, v1, v2, v3}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/StringBuilder;)V

    .line 49
    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto(Ljava/lang/String;)V

    const/16 v1, 0x13

    const-string v2, "AVISO DE D\u00c9BITO"

    const/4 v13, 0x0

    .line 50
    invoke-virtual {v9, v13, v1, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    .line 51
    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto(Ljava/lang/String;)V

    .line 54
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 55
    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->dateToHoraString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto(Ljava/lang/String;)V

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMPRESSO EM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AS "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x3

    const/16 v15, 0x17

    invoke-virtual {v9, v14, v15, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x3a

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x1d

    invoke-virtual {v9, v1, v7, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x50

    const-string v2, "********"

    .line 64
    invoke-virtual {v9, v1, v7, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNomeUsuario()Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x23

    const/4 v5, 0x5

    invoke-virtual {v9, v5, v6, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/16 v16, 0x26

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getEndereco()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->cortarEndereco(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x3

    move-object/from16 v1, p0

    const/4 v15, 0x5

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTextos(IIII[Ljava/lang/String;I)V

    .line 73
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->formatarInscricao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x30

    invoke-virtual {v9, v15, v7, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x2a

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoRota()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v7, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSequencialRota()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x35

    invoke-virtual {v9, v6, v7, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v1

    .line 83
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->getNumeroEconomias(Ljava/util/ArrayList;)[I

    move-result-object v1

    const/16 v2, 0x41

    const/4 v3, 0x0

    .line 85
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 86
    aget v4, v1, v3

    if-lez v4, :cond_1

    const/16 v4, 0x31

    .line 87
    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v2, v4, v5}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0xa

    goto :goto_1

    :cond_2
    const-string v1, "SEM MEDIDOR"

    .line 91
    iget-object v2, v9, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoAgua(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 92
    iget-object v3, v9, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigEsgoto()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoEsgoto(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    .line 95
    new-instance v4, Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;-><init>()V

    .line 96
    new-instance v4, Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;-><init>()V

    .line 98
    iget-object v4, v9, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v4

    .line 101
    iget-object v5, v9, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v6

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v5

    if-eqz v4, :cond_3

    .line 107
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    .line 109
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_2
    const/16 v4, 0x37

    const/16 v7, 0xa

    .line 113
    invoke-virtual {v9, v7, v4, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x2d

    .line 114
    invoke-virtual {v9, v1, v4, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x4e

    .line 115
    invoke-virtual {v9, v1, v4, v3}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v6, 0x3c

    const-string v1, "REF."

    .line 120
    invoke-virtual {v9, v15, v6, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const-string v1, "VENC."

    const/16 v5, 0x14

    .line 122
    invoke-virtual {v9, v5, v6, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x28

    const-string v2, "VALOR"

    .line 124
    invoke-virtual {v9, v1, v6, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v2, 0x34

    const/16 v4, 0x34

    const/16 v18, 0x6c

    const v19, 0x3dcccccd    # 0.1f

    const/16 v3, 0x3c

    move-object/from16 v1, p0

    const/16 v7, 0x14

    move/from16 v5, v18

    const/16 v8, 0x35

    const/16 v13, 0x3c

    move/from16 v6, v19

    .line 126
    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendLinha(IIIIF)V

    const-string v1, "REF."

    .line 128
    invoke-virtual {v9, v8, v13, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x44

    const-string v2, "VENC."

    .line 129
    invoke-virtual {v9, v1, v13, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x58

    const-string v2, "VALOR"

    .line 130
    invoke-virtual {v9, v1, v13, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget-object v2, v9, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContasDebitosPorIdImovel(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 136
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/16 v4, 0x28

    move-object v13, v3

    const/16 v1, 0x3f

    const/16 v3, 0x14

    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 139
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_6

    if-ge v6, v7, :cond_6

    .line 142
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/br/ipad/isc/bean/ContaDebito;

    .line 145
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ContaDebito;->getAnoMesReferencia()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 144
    invoke-virtual {v9, v5, v1, v7}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    .line 147
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ContaDebito;->getDataVencimentoConta()Ljava/util/Date;

    move-result-object v7

    .line 146
    invoke-static {v7}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v3, v1, v7}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    .line 149
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ContaDebito;->getValorConta()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v7

    .line 148
    invoke-virtual {v9, v4, v1, v7}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v7, 0xe

    if-ne v6, v7, :cond_5

    const/16 v1, 0x44

    const/16 v3, 0x58

    const/16 v1, 0x3f

    const/16 v3, 0x44

    const/16 v4, 0x58

    const/16 v5, 0x35

    .line 158
    :cond_5
    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ContaDebito;->getValorConta()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v7

    add-double v21, v21, v7

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v14

    const/16 v7, 0x14

    goto :goto_3

    :cond_6
    const/16 v1, 0x70

    .line 163
    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto(Ljava/lang/String;)V

    const-string v2, "ATENCAO"

    .line 164
    invoke-virtual {v9, v15, v1, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    .line 165
    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto(Ljava/lang/String;)V

    const/16 v5, 0x76

    const/16 v1, 0xb

    new-array v6, v1, [Ljava/lang/String;

    const-string v1, "AP\u00d3S O RECEBIMENTO DESTE AVISO, V.SA TER\u00c1 30 (TRINTA) DIAS PARA"

    const/4 v2, 0x0

    aput-object v1, v6, v2

    const-string v1, "REGULARIZA\u00c7\u00c3O DOS D\u00c9BITOS ACIMA INDICADOS, SOB PENA DE"

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v1, 0x2

    const-string v2, "INTERRUP\u00c7\u00c3O DO FORNECIMENTO DE \u00c1GUA AO IM\u00d3VEL E"

    aput-object v2, v6, v1

    const-string v1, "NEGATIVA\u00c7\u00c3O DO RESPONS\u00c1VEL JUNTO AO SPC/SERASA, CONFORME"

    aput-object v1, v6, v14

    const/4 v1, 0x4

    const-string v2, "NOS FACULTA A LEI FEDERAL N 11.445, DE 05/01/2007. CASO EXISTA"

    aput-object v2, v6, v1

    const-string v1, "AVISO ANTERIOR, CUJO D\u00c9BITO LISTADO AINDA N\u00c3O FOI INTEGRALMENTE"

    aput-object v1, v6, v15

    const/4 v1, 0x6

    const-string v2, "REGULARIZADO, O SEU IM\u00d3VEL EST\u00c1 SUJEITO A SER, A QUALQUER"

    aput-object v2, v6, v1

    const/4 v1, 0x7

    const-string v2, "MOMENTO, \'CORTADO\'. SE O D\u00c9BITO FOI REGULARIZADO,"

    aput-object v2, v6, v1

    const/16 v1, 0x8

    const-string v2, "DESCONSIDERE ESTE AVISO. MANTENHA OS RECIBOS QUITADOS OU OS"

    aput-object v2, v6, v1

    const/16 v1, 0x9

    const-string v2, "DOCUMENTOS DE REGULARIZA\u00c7\u00c3O NO SEU IM\u00d3VEL, \u00c0 DISPOSI\u00c7\u00c3O DO"

    aput-object v2, v6, v1

    const-string v1, "NOSSO FUNCION\u00c1RIO OU REPRESENTANTE LEGAL."

    const/16 v2, 0xa

    aput-object v1, v6, v2

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v8, 0x3

    move-object/from16 v1, p0

    const/16 v14, 0x30

    const/4 v15, 0x1

    move v7, v8

    .line 181
    invoke-virtual/range {v1 .. v7}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTextos(IIII[Ljava/lang/String;I)V

    const/16 v1, 0x5f

    const/16 v2, 0x9b

    .line 185
    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v1, v2, v15, v3}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IIZLjava/lang/String;)V

    const/16 v1, 0x1b

    const/16 v2, 0xb5

    .line 192
    invoke-virtual {v9, v1, v2, v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x2a

    .line 193
    invoke-virtual {v9, v1, v2, v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x39

    .line 194
    invoke-virtual {v9, v1, v2, v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x4a

    .line 195
    invoke-virtual {v9, v1, v2, v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x5a

    .line 196
    invoke-virtual {v9, v1, v2, v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    .line 200
    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroCodigoBarraNotificacaoDebito()Ljava/lang/String;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 204
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    .line 206
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    .line 208
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x18

    .line 210
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    .line 212
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x24

    .line 214
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    .line 216
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    .line 217
    invoke-virtual {v0, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0xb

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x17

    .line 219
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    .line 221
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 222
    invoke-virtual/range {v1 .. v7}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto(IIIIZLjava/lang/String;)V

    const/16 v1, 0xc3

    const/4 v2, 0x0

    .line 223
    invoke-virtual {v9, v2, v1, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendBarcode(IILjava/lang/String;)V

    .line 224
    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd8

    const/4 v2, 0x5

    invoke-virtual {v9, v2, v1, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const-string v0, "********"

    const/16 v2, 0x1d

    .line 230
    invoke-virtual {v9, v2, v1, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v0, 0x36

    .line 232
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataVencimento()Ljava/util/Date;

    move-result-object v2

    .line 231
    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->formatarData(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v0, 0x4f

    .line 233
    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto70(IILjava/lang/String;)V

    const-string v0, "FORM\nPRINT\n"

    .line 236
    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->appendTexto(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    :goto_4
    iget-object v0, v9, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaern;->buffer:Ljava/lang/StringBuilder;

    return-object v0
.end method
