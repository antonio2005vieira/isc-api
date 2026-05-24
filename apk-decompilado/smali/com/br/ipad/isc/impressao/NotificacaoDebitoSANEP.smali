.class public Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;
.super Lcom/br/ipad/isc/impressao/ImpressaoSANEP;
.source "NotificacaoDebitoSANEP.java"


# static fields
.field private static instancia:Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;-><init>()V

    return-void
.end method

.method public static getInstancia()Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;
    .locals 1

    .line 22
    sget-object v0, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->instancia:Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;

    invoke-direct {v0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->instancia:Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;

    .line 25
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->instancia:Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;

    return-object v0
.end method


# virtual methods
.method public imprimirNotificacaoDebito(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;
    .locals 19

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    :try_start_0
    const-string v2, "! 0 816 0 1720 1\n"

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/16 v6, 0x110

    const/16 v7, 0x35

    const-string v8, "NOTIFICA\u00c7\u00c3O DE D\u00c9BITO"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    .line 41
    invoke-virtual/range {v3 .. v10}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/16 v6, 0x1b8

    const/16 v7, 0x5f

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/16 v6, 0x23a

    const/16 v7, 0x5f

    const-string v8, "N\u00ba DOC:"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    .line 47
    invoke-virtual/range {v3 .. v10}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/16 v6, 0x29e

    const/16 v7, 0x5f

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdDocumentoNotificacaoDebito()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCpfCnpjCliente()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, ""

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCpfCnpjCliente()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCpfCnpjCliente()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object v9, v3

    :goto_0
    const/4 v11, 0x7

    const/4 v12, 0x0

    const/16 v13, 0x30

    const/16 v14, 0x8c

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNomeUsuario()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v17}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x168

    const/16 v8, 0x89

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 57
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x2f

    const/16 v8, 0xa3

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getEndereco()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x28

    const/16 v11, 0x14

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->dividirLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x29

    const/16 v8, 0x104

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/fachada/Fachada;->formatarInscricao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x140

    const/16 v8, 0x104

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getGrupoFaturamento()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v12, p0

    .line 69
    :try_start_2
    invoke-virtual {v12, v2}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->categoriasEconomiasNovo(Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x2d

    const/16 v8, 0x145

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoRota()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, "N\u00c3O MEDIDO"

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoAgua(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v13

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigEsgoto()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoEsgoto(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v14

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 85
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_1
    move-object v9, v2

    goto :goto_2

    .line 88
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 90
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :goto_2
    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0xb6

    const/16 v8, 0x145

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 95
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xd

    const/4 v15, 0x0

    if-le v2, v4, :cond_3

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x1a3

    const/16 v8, 0x145

    .line 99
    invoke-virtual {v13, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x1a3

    const/16 v8, 0x145

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object v9, v13

    .line 101
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x270

    const/16 v8, 0x145

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object v9, v14

    .line 105
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    const/4 v6, 0x1

    const/16 v7, 0xe6

    const/16 v8, 0x16d

    const-string v9, "NOTIFICA\u00c7\u00c3O DE D\u00c9BITOS - ATEN\u00c7\u00c3O"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 108
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x28

    const/16 v8, 0x19f

    const-string v9, "A PARTIR DO  RECEBIMENTO  DESTE AVISO, DE ACORDO COM O  DECRETO"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 109
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x28

    const/16 v8, 0x1b8

    const-string v9, "ESTADUAL  N\u00ba  18.251 DE  21.12.94, FICA  VOSSA SENHORIA  CIENTE"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 110
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x28

    const/16 v8, 0x1d1

    const-string v9, "QUE, CASO  OS   D\u00c9BITOS   N\u00c3O SEJAM   LIQUIDADOS, EFETUAREMOS A"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 111
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x28

    const/16 v8, 0x1ea

    const-string v9, "SUSPENS\u00c3O   DO   SEU   ABASTECIMENTO   DE   \u00c1GUA.  MANTENHA  OS"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 112
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x28

    const/16 v8, 0x203

    const-string v9, "DOCUMENTOS   DE  REGULARIZA\u00c7\u00c3O EM  SEU IMOVEL PARA APRESENTA\u00c7\u00c3O"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 113
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x28

    const/16 v8, 0x21c

    const-string v9, "AOS  NOSSOS FUNCION\u00c1RIOS.  PAGUE  EM  DIA SUAS  CONTAS, EVITE O"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 114
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x28

    const/16 v8, 0x235

    const-string v9, "CORTE E A NEGATIVA\u00c7\u00c3O DO SEU NOME NO SPC SERASA.               "

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 115
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    const/4 v6, 0x1

    const/16 v7, 0x28

    const/16 v8, 0x24e

    const-string v9, "CASO J\u00c1 TENHA QUITADO O D\u00c9BITO, DESCONSIDERE ESSE AVISO."

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 116
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, "LINE 42 642 790 642 2\n"

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x2a

    const/16 v8, 0x28f

    const-string v9, "REFERENCIA CONTA"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 122
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x190

    const/16 v8, 0x28f

    const-string v9, "VENCIMENTO"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 123
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x2aa

    const/16 v8, 0x28f

    const-string v9, "VALOR(R$)"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 124
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContasDebitosPorIdImovel(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    const-wide/16 v4, 0x0

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide v13, v4

    const/4 v11, 0x0

    .line 132
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_5

    const/16 v4, 0x11

    if-ge v11, v4, :cond_5

    .line 133
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Lcom/br/ipad/isc/bean/ContaDebito;

    .line 135
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ContaDebito;->getAnoMesReferencia()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DB.ATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x2a

    const/16 v8, 0x2a8

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ContaDebito;->getAnoMesReferencia()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    mul-int/lit8 v17, v11, 0x19

    move-object/from16 v4, p0

    move/from16 v18, v11

    move/from16 v11, v17

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_4
    move/from16 v18, v11

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x2a

    const/16 v8, 0x2a8

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ContaDebito;->getAnoMesReferencia()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    mul-int/lit8 v11, v18, 0x19

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 142
    :goto_5
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ContaDebito;->getValorConta()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    add-double/2addr v13, v4

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x190

    const/16 v8, 0x2a8

    .line 143
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ContaDebito;->getDataVencimentoConta()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    mul-int/lit8 v17, v18, 0x19

    move-object/from16 v4, p0

    move/from16 v11, v17

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x2ad

    const/16 v8, 0x2a8

    .line 145
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ContaDebito;->getValorConta()Ljava/math/BigDecimal;

    move-result-object v4

    .line 146
    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v9

    .line 145
    invoke-static {v9, v10}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move/from16 v11, v17

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v18, 0x1

    goto/16 :goto_4

    .line 149
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x2d

    const/16 v8, 0x4e3

    const-string v9, "EMISS\u00c3O:"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 152
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    const/4 v6, 0x1

    const/16 v7, 0xb9

    const/16 v8, 0x4dd

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataEmissaoDocumento()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x258

    const/16 v8, 0x4dd

    .line 156
    invoke-static {v13, v14}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroCodigoBarraNotificacaoDebito()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->formatarCodigoBarras(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x46

    const/16 v8, 0x519

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object v9, v0

    .line 161
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6

    .line 163
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xb

    invoke-virtual {v0, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xe

    const/16 v5, 0x19

    .line 166
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x1c

    const/16 v5, 0x27

    .line 167
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2a

    const/16 v5, 0x35

    .line 168
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "B I2OF5 1 2 105 35 1332 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v7, 0xb2

    const/16 v8, 0x5f5

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x126

    const/16 v8, 0x5f5

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdDocumentoNotificacaoDebito()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x2b7

    const/16 v8, 0x5f5

    .line 176
    invoke-static {v13, v14}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x23

    const/16 v8, 0x614

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RECEBI A NOTIFICACAO DOS DEBITOS ACIMA RELACIONADOS:                 CICLO: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 178
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x23

    const/16 v8, 0x62d

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HORA: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/br/ipad/isc/util/Util;->dataAtual()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->dateToHoraString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x23

    const/16 v8, 0x646

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOCALIDADE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdLocalidade()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/br/ipad/isc/util/Util;->adicionarZerosEsquerdaNumero(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / SETOR: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 181
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v7, 0xc8

    const/16 v8, 0x663

    const-string v9, "____________________________________________________________"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 183
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x154

    const/16 v8, 0x67c

    const-string v9, "Assinatura do Recebedor"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 184
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/impressao/NotificacaoDebitoSANEP;->comandoImpressao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v12, p0

    .line 189
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    return-object v1
.end method
