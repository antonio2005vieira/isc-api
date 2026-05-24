.class public Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;
.super Lcom/br/ipad/isc/impressao/ImpressaoCaer;
.source "NotificacaoDebitoCaer.java"


# static fields
.field private static instancia:Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;


# instance fields
.field private final xMargemTextoNotDeb:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/br/ipad/isc/impressao/ImpressaoCaer;-><init>()V

    const/16 v0, 0x28

    .line 22
    iput v0, p0, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->xMargemTextoNotDeb:I

    return-void
.end method

.method public static getInstancia()Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;
    .locals 1

    .line 29
    sget-object v0, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->instancia:Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;

    invoke-direct {v0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->instancia:Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;

    .line 32
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->instancia:Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;

    return-object v0
.end method


# virtual methods
.method public imprimirNotificacaoDebito(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;
    .locals 19

    move-object/from16 v9, p0

    const-string v0, "\n"

    .line 44
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v9, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->buffer:Ljava/lang/StringBuilder;

    const-string v1, "! 0 816 0 1720 1\n"

    .line 45
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto(Ljava/lang/String;)V

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T 7 1 464 66 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto(Ljava/lang/String;)V

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T 7 1 613 66 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->retornaDescricaoAnoMes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCpfCnpjCliente()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, ""

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCpfCnpjCliente()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCpfCnpjCliente()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v10

    :goto_0
    const/16 v2, 0xa4

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNomeUsuario()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x34

    invoke-virtual {v9, v4, v2, v3}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto20(IILjava/lang/String;)V

    const/16 v2, 0xc2

    .line 59
    invoke-virtual {v9, v4, v2, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto20(IILjava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1b2

    const/16 v5, 0xa4

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getEndereco()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x28

    const/16 v8, 0x1b

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->dividirLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto(Ljava/lang/String;)V

    .line 63
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->formatarInscricao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    const/16 v3, 0xfa

    invoke-virtual {v9, v2, v3, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x13b

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoRota()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v1, v3, v4}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x19f

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSequencialRota()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v1, v3, v4}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto70(IILjava/lang/String;)V

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->gerarCategoriaSubcategoria(Ljava/lang/Integer;)V

    const-string v1, "N\u00c3O MEDIDO"

    .line 71
    iget-object v3, v9, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoAgua(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    .line 72
    iget-object v4, v9, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigEsgoto()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoEsgoto(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x131

    .line 75
    invoke-virtual {v9, v2, v5, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto70(IILjava/lang/String;)V

    .line 77
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1be

    const/16 v6, 0xd

    const/4 v11, 0x0

    if-le v1, v6, :cond_1

    .line 78
    invoke-virtual {v3, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v2, v5, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto70(IILjava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {v9, v2, v5, v3}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto70(IILjava/lang/String;)V

    :goto_1
    const/16 v1, 0x273

    .line 83
    invoke-virtual {v9, v1, v5, v4}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto70(IILjava/lang/String;)V

    const-string v1, "CENTER\n"

    .line 86
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto(Ljava/lang/String;)V

    const/16 v1, 0x159

    const-string v2, "NOTIFICA\u00c7\u00c3O DE D\u00c9BITOS - ATEN\u00c7\u00c3O"

    .line 87
    invoke-virtual {v9, v11, v1, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto70(IILjava/lang/String;)V

    const-string v1, "LEFT\n"

    .line 88
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto(Ljava/lang/String;)V

    const/16 v1, 0x190

    const-string v2, "APESAR  DA  TENTATIVA  ANTERIOR  DE COBRAR  AS IMPORT\u00c2NCIAS EM"

    const/16 v12, 0x28

    .line 92
    invoke-virtual {v9, v12, v1, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x1a9

    const-string v2, "ATRASO, N\u00c3O  HOUVE  QUALQUER  MANIFESTA\u00c7\u00c3O DA  VOSSA  SENHORIA"

    .line 93
    invoke-virtual {v9, v12, v1, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x1c2

    const-string v2, "NO  SENTIDO  DE  CUMPRIR  COM  SUA  OBRIGA\u00c7\u00c3O, O QUE GARANTE A"

    .line 94
    invoke-virtual {v9, v12, v1, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x1db

    const-string v2, "SUSPENS\u00c3O  IMEDIATA  DOS SERVI\u00c7OS, CONFORME O ART. 40, V, \u00a72\u00ba."

    .line 95
    invoke-virtual {v9, v12, v1, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x1f4

    const-string v2, "DA  LEI FEDERAL 11.445/2007.  ENTRETANTO, POR ACREDITAR NA BOA"

    .line 96
    invoke-virtual {v9, v12, v1, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x20d

    const-string v2, "RELA\u00c7\u00c3O EXISTENTE,  OPORTUNIZAMOS O PRAZO DE 15 (QUINZE)  DIAS"

    .line 97
    invoke-virtual {v9, v12, v1, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x226

    const-string v2, "PARA QUITA\u00c7\u00c3O  DOS D\u00c9BITOS DISCRIMINADOS  NESTE DOCUMENTO, SOB"

    .line 98
    invoke-virtual {v9, v12, v1, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x23f

    const-string v2, "PENA DE SUSPENS\u00c3O DOS SERVI\u00c7OS POSTOS A SUA  DISPOSI\u00c7\u00c3O. EVITE"

    .line 99
    invoke-virtual {v9, v12, v1, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x258

    const-string v2, "TRANSTORNOS, REGULARIZE SUA SITUA\u00c7\u00c3O."

    .line 100
    invoke-virtual {v9, v12, v1, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto70(IILjava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/16 v4, 0x28

    const/16 v5, 0x275

    const-string v6, "CASO J\u00c1 TENHA QUITADO O D\u00c9BITO, DESCONSIDERE ESSE AVISO."

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 101
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto(Ljava/lang/String;)V

    const-string v1, "REFERENCIA CONTA"

    const/16 v2, 0x2b0

    .line 104
    invoke-virtual {v9, v12, v2, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x186

    const-string v3, "VENCIMENTO"

    .line 105
    invoke-virtual {v9, v1, v2, v3}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x2af

    const-string v3, "VALOR(R$)"

    .line 106
    invoke-virtual {v9, v1, v2, v3}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto70(IILjava/lang/String;)V

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContasDebitosPorIdImovel(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v12

    const-wide/16 v1, 0x0

    .line 112
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-wide v14, v1

    const/4 v8, 0x0

    .line 115
    :goto_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_4

    const/16 v7, 0x11

    if-ge v8, v7, :cond_4

    .line 116
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/br/ipad/isc/bean/ContaDebito;

    .line 118
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ContaDebito;->getAnoMesReferencia()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DB.ATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x28

    const/16 v5, 0x2cb

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ContaDebito;->getAnoMesReferencia()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x0

    mul-int/lit8 v18, v8, 0x19

    move-object/from16 v1, p0

    const/16 v11, 0x11

    move/from16 v7, v17

    move v11, v8

    move/from16 v8, v18

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    move v11, v8

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x28

    const/16 v5, 0x2cb

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ContaDebito;->getAnoMesReferencia()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    mul-int/lit8 v8, v11, 0x19

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 123
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ContaDebito;->getValorConta()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    add-double/2addr v14, v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x186

    const/16 v5, 0x2cb

    .line 124
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ContaDebito;->getDataVencimentoConta()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    mul-int/lit8 v18, v11, 0x19

    move-object/from16 v1, p0

    move/from16 v8, v18

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2af

    const/16 v5, 0x2cb

    .line 125
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ContaDebito;->getValorConta()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v8, v18

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v1, 0x11

    if-le v11, v1, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v11, 0x1

    const/4 v11, 0x0

    goto/16 :goto_2

    .line 132
    :cond_4
    :goto_4
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x25

    const/16 v5, 0x4c4

    const-string v6, "EMISSAO:"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 135
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/16 v4, 0xa0

    const/16 v5, 0x4c8

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataEmissaoDocumento()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0x22b

    const/16 v5, 0x4c8

    .line 139
    invoke-static {v14, v15}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroCodigoBarraNotificacaoDebito()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->formatarCodigoBarras(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/16 v4, 0x42

    const/16 v5, 0x50a

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v6, v11

    .line 143
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto(Ljava/lang/String;)V

    if-eqz v11, :cond_5

    .line 145
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v11, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const/16 v3, 0x19

    .line 148
    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1c

    const/16 v3, 0x27

    .line 149
    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2a

    const/16 v3, 0x35

    .line 150
    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "B I2OF5 1 2 90 35 1315 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto(Ljava/lang/String;)V

    :cond_5
    const-string v0, "MATRICULA"

    const/16 v1, 0x140

    const/16 v2, 0x5b4

    .line 156
    invoke-virtual {v9, v1, v2, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto20(IILjava/lang/String;)V

    const-string v0, "N. DOCUMENTO"

    const/16 v3, 0x1a7

    .line 157
    invoke-virtual {v9, v3, v2, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto20(IILjava/lang/String;)V

    const-string v0, "EMISSAO"

    const/16 v4, 0x21a

    .line 158
    invoke-virtual {v9, v4, v2, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto20(IILjava/lang/String;)V

    const-string v0, "TOTAL A PAGAR"

    const/16 v5, 0x2a2

    .line 159
    invoke-virtual {v9, v5, v2, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto20(IILjava/lang/String;)V

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5dc

    invoke-virtual {v9, v1, v2, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto20(IILjava/lang/String;)V

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdDocumentoNotificacaoDebito()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdDocumentoNotificacaoDebito()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdDocumentoNotificacaoDebito()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v3, v2, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto20(IILjava/lang/String;)V

    .line 168
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataEmissaoDocumento()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4, v2, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto20(IILjava/lang/String;)V

    .line 169
    invoke-static {v14, v15}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v5, v2, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto20(IILjava/lang/String;)V

    const/16 v0, 0x60e

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RECEBI A NOTIFICACAO DOS DEBITOS ACIMA RELACIONADOS: CICLO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    .line 171
    invoke-virtual {v9, v2, v0, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto20(IILjava/lang/String;)V

    const/16 v0, 0x627

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HORA: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/br/ipad/isc/util/Util;->dataAtual()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/br/ipad/isc/util/Util;->dateToHoraString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v2, v0, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto20(IILjava/lang/String;)V

    const/16 v0, 0x640

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LOCALIDADE: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getLocalidade()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / SETOR: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v2, v0, v1}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto20(IILjava/lang/String;)V

    const/16 v0, 0xc8

    const/16 v1, 0x659

    const-string v2, "____________________________________________________________"

    .line 176
    invoke-virtual {v9, v0, v1, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto20(IILjava/lang/String;)V

    const/16 v0, 0x154

    const/16 v1, 0x672

    const-string v2, "Assinatura do Recebedor"

    .line 177
    invoke-virtual {v9, v0, v1, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto20(IILjava/lang/String;)V

    const-string v0, "FORM\nPRINT "

    .line 178
    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->appendTexto(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ERRO na notifica\u00e7\u00e3o de debito."

    .line 183
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_5
    iget-object v0, v9, Lcom/br/ipad/isc/impressao/NotificacaoDebitoCaer;->buffer:Ljava/lang/StringBuilder;

    return-object v0
.end method
