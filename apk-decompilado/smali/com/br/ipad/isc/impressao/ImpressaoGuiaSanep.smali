.class public Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;
.super Lcom/br/ipad/isc/impressao/ImpressaoSANEP;
.source "ImpressaoGuiaSanep.java"


# static fields
.field private static instancia:Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;-><init>()V

    return-void
.end method

.method public static getInstancia()Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;
    .locals 1

    .line 20
    sget-object v0, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->instancia:Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;

    invoke-direct {v0}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->instancia:Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;

    .line 23
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->instancia:Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;

    return-object v0
.end method


# virtual methods
.method public imprimirGuiaPagamento(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;
    .locals 22

    move-object/from16 v9, p0

    const-string v0, "-"

    .line 32
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v11

    :try_start_0
    const-string v1, "! 0 816 816 2594 1\n"

    .line 37
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2a3

    .line 40
    iget-boolean v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->modeloImpressora:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x32

    const/16 v5, 0x32

    goto :goto_0

    :cond_0
    const/16 v1, 0x46

    const/16 v5, 0x46

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2a3

    const/16 v5, 0x66

    const-string v6, " "

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 43
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/16 v4, 0x32

    .line 46
    iget-boolean v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->modeloImpressora:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x6e

    const/16 v5, 0x6e

    goto :goto_1

    :cond_1
    const/16 v1, 0x82

    const/16 v5, 0x82

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/br/ipad/isc/util/Util;->retornaDescricaoAbreviadaMesDoAnoMes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 46
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/16 v4, 0x2d

    .line 49
    iget-boolean v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->modeloImpressora:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xb5

    const/16 v5, 0xb5

    goto :goto_2

    :cond_2
    const/16 v1, 0xcd

    const/16 v5, 0xcd

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataVencimentoGuiaLixo()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xa

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, ""

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataVencimento()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_3

    :cond_3
    move-object v6, v14

    :goto_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/16 v4, 0x2f

    .line 51
    iget-boolean v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->modeloImpressora:Z

    if-eqz v1, :cond_4

    const/16 v1, 0xfa

    const/16 v5, 0xfa

    goto :goto_4

    :cond_4
    const/16 v1, 0x10e

    const/16 v5, 0x10e

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getValorGuiaPagamentoLixo()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v15, 0x0

    const-string v8, " "

    cmpl-double v1, v6, v15

    if-eqz v1, :cond_5

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getValorGuiaPagamentoLixo()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_5

    :cond_5
    move-object v6, v8

    :goto_5
    const/4 v7, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v17, v8

    move v8, v15

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0xc8

    .line 53
    iget-boolean v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->modeloImpressora:Z

    const/16 v15, 0x88

    if-eqz v1, :cond_6

    const/16 v1, 0x73

    const/16 v5, 0x73

    goto :goto_6

    :cond_6
    const/16 v5, 0x88

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNomeUsuario()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0xc8

    .line 55
    iget-boolean v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->modeloImpressora:Z

    if-eqz v1, :cond_7

    const/16 v5, 0x88

    goto :goto_7

    :cond_7
    const/16 v1, 0x9d

    const/16 v5, 0x9d

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getEndereco()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x32

    const/16 v8, 0x14

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->dividirLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0xc8

    const/16 v5, 0xce

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSCRICAO: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/br/ipad/isc/fachada/Fachada;->formatarInscricao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\t\tGRUPO: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getGrupoFaturamento()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0xc8

    const/16 v5, 0xec

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PARA ADES\u00c3O AO DEB.AUTOMATICO: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoDebitoAutomaticoFormatado()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataInicioRelacao()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataInicioRelacao()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0xc8

    const/16 v5, 0x100

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INICIO RELACAO: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 68
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v1

    .line 69
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->categoriasEconomiasNovo(Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x280

    const/16 v5, 0x320

    const-string v6, "TOTAL(R$)"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 71
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x280

    const/16 v5, 0x352

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getValorGuiaPagamentoLixo()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2d

    const/16 v5, 0x320

    const-string v6, "TAXA DE LIXO"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 73
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0xa0

    const/16 v5, 0x73f

    .line 75
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/16 v4, 0x37

    .line 77
    iget-boolean v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->modeloImpressora:Z

    const/16 v11, 0x942

    if-eqz v1, :cond_9

    const/16 v5, 0x942

    goto :goto_8

    :cond_9
    const/16 v1, 0x931

    const/16 v5, 0x931

    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataVencimentoGuiaLixo()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/16 v4, 0xf0

    .line 78
    iget-boolean v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->modeloImpressora:Z

    if-eqz v1, :cond_a

    const/16 v5, 0x942

    goto :goto_9

    :cond_a
    const/16 v1, 0x92e

    const/16 v5, 0x92e

    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getValorGuiaPagamentoLixo()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/16 v4, 0x3c

    .line 79
    iget-boolean v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->modeloImpressora:Z

    const/16 v11, 0x8fc

    const/16 v13, 0x8e8

    if-eqz v1, :cond_b

    const/16 v5, 0x8fc

    goto :goto_a

    :cond_b
    const/16 v5, 0x8e8

    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/16 v4, 0xf0

    .line 80
    iget-boolean v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->modeloImpressora:Z

    if-eqz v1, :cond_c

    const/16 v5, 0x8fc

    goto :goto_b

    :cond_c
    const/16 v5, 0x8e8

    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoAgencia()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoAgencia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_c

    :cond_d
    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0xc8

    const/16 v5, 0x9b0

    const-string v6, "D\u00c9BITO AUTOM\u00c1TICO"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 110
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 86
    :cond_e
    :goto_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroCodigoBarraGuiaPagamento()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    new-instance v13, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0xb

    .line 89
    invoke-virtual {v11, v12, v14}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0xc

    .line 90
    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v17

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x17

    .line 91
    invoke-virtual {v11, v15, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x18

    .line 92
    invoke-virtual {v11, v7, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x23

    .line 93
    invoke-virtual {v11, v6, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x24

    .line 94
    invoke-virtual {v11, v5, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    .line 95
    invoke-virtual {v11, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x30

    .line 96
    invoke-virtual {v11, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v0, 0x0

    .line 98
    iget-boolean v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->modeloImpressora:Z

    if-eqz v1, :cond_f

    const/16 v1, 0x99

    const/16 v16, 0x99

    goto :goto_d

    :cond_f
    const/16 v1, 0x91

    const/16 v16, 0x91

    :goto_d
    const/16 v17, 0x77e

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, p0

    move v3, v0

    const/16 v0, 0x24

    move/from16 v4, v16

    const/16 v0, 0x23

    move/from16 v5, v17

    const/16 v0, 0x18

    move-object/from16 v6, v18

    const/16 v0, 0x17

    move/from16 v7, v19

    move-object/from16 v21, v8

    move/from16 v8, v20

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x5a

    .line 100
    iget-boolean v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->modeloImpressora:Z

    const/16 v5, 0x992

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-virtual {v11, v12, v14}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v11, v15, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x23

    const/16 v3, 0x18

    .line 105
    invoke-virtual {v11, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    const/16 v3, 0x24

    .line 106
    invoke-virtual {v11, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "B I2OF5 1 2 105 60 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9ab

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->ajusteY(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/impressao/ImpressaoGuiaSanep;->comandoImpressao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f
    return-object v10
.end method
