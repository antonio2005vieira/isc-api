.class public Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;
.super Lcom/br/ipad/isc/impressao/ImpressaoCaern;
.source "ImpressaoContaCaern.java"


# static fields
.field private static instancia:Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/br/ipad/isc/impressao/ImpressaoCaern;-><init>()V

    return-void
.end method

.method private emitirCarta(ILjava/lang/Integer;)V
    .locals 6

    const/4 v1, 0x5

    const/16 v3, 0x64

    const v5, 0x3dcccccd    # 0.1f

    move-object v0, p0

    move v2, p1

    move v4, p1

    .line 941
    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendLinha(IIIIF)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 944
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 945
    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "Em %s, foi  registrada uma leitura de %sm3 no"

    .line 944
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p1, p1, 0x3

    const/4 v0, 0x5

    .line 948
    invoke-virtual {p0, v0, p1, p2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 p1, p1, 0x3

    const-string p2, "hidr\u00f4metro  de  seu im\u00f3vel, acarretando um  consumo muito"

    .line 949
    invoke-virtual {p0, v0, p1, p2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 p1, p1, 0x3

    const-string p2, "superior ao esperado."

    .line 950
    invoke-virtual {p0, v0, p1, p2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 p1, p1, 0x3

    const-string p2, "Para  evitar maiores transtornos, a CAERN reteve sua conta"

    .line 951
    invoke-virtual {p0, v0, p1, p2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 p1, p1, 0x3

    const-string p2, "para an\u00e1lise, a qual lhe ser\u00e1 enviada posteriormente."

    .line 952
    invoke-virtual {p0, v0, p1, p2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 p1, p1, 0x3

    const-string p2, "Para maiores informa\u00e7\u00f5es, consulte a Loja Virtual em nosso"

    .line 953
    invoke-virtual {p0, v0, p1, p2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 p1, p1, 0x3

    const-string p2, "site ou ligue para um dos n\u00fameros de Telefone indicados em"

    .line 954
    invoke-virtual {p0, v0, p1, p2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 p1, p1, 0x3

    const-string p2, "sua conta."

    .line 955
    invoke-virtual {p0, v0, p1, p2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 p1, p1, 0x3

    const-string p2, "Recomendamos verificar a exist\u00eancia de vazamentos em seu im\u00f3vel."

    .line 956
    invoke-virtual {p0, v0, p1, p2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    return-void
.end method

.method private gerarCodigoBarrasLinhaDigitavel(D)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 806
    iget-object v0, v7, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoAgencia()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CENTER\n"

    .line 807
    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto(Ljava/lang/String;)V

    const/16 v8, 0xc3

    const/16 v1, 0xc0

    const/4 v9, 0x0

    const-wide/16 v2, 0x0

    cmpl-double v4, p1, v2

    if-nez v4, :cond_0

    const-string v0, "CONTA ZERADA DEVIDO A CREDITO."

    .line 809
    invoke-virtual {v7, v9, v1, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const-string v0, "APENAS PARA SIMPLES DEMONSTRA\u00c7\u00c3O."

    .line 810
    invoke-virtual {v7, v9, v8, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 811
    :cond_0
    invoke-virtual {v7, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    invoke-static {}, Lcom/br/ipad/isc/impressao/CodigoDeBarras;->getInstancia()Lcom/br/ipad/isc/impressao/CodigoDeBarras;

    move-result-object v10

    const/4 v0, 0x3

    .line 813
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v1, v7, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 814
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v0, v7, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 815
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v15

    iget-object v0, v7, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAnoSemBarra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    iget-object v0, v7, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 816
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDigitoVerificadorConta()Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide/from16 v12, p1

    .line 813
    invoke-virtual/range {v10 .. v23}, Lcom/br/ipad/isc/impressao/CodigoDeBarras;->obterRepresentacaoNumericaCodigoBarra(Ljava/lang/Integer;DLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    invoke-virtual {v0, v9, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 820
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    .line 822
    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x17

    .line 824
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x18

    .line 826
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x23

    .line 828
    invoke-virtual {v0, v6, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x24

    .line 830
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x2f

    .line 832
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x30

    .line 833
    invoke-virtual {v0, v12, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 836
    invoke-virtual {v0, v9, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    invoke-virtual {v0, v6, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v6, v13

    .line 841
    invoke-virtual/range {v0 .. v6}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto(IIIIZLjava/lang/String;)V

    .line 842
    invoke-virtual {v7, v9, v8, v10}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendBarcode(IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "DEBITO AUTOMATICO"

    .line 844
    invoke-virtual {v7, v9, v1, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    :goto_0
    const-string v0, "LEFT\n"

    .line 847
    invoke-virtual {v7, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto(Ljava/lang/String;)V

    return-void
.end method

.method private gerarFaturasEmAtraso(I)I
    .locals 14

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 718
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContasDebitosPorIdImovel(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x5

    const/16 v4, 0x64

    const v6, 0x3dcccccd    # 0.1f

    move-object v1, p0

    move v3, p1

    move v5, p1

    .line 724
    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendLinha(IIIIF)V

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x5

    const-string v2, "FATURAS EM ATRASO"

    .line 727
    invoke-virtual {p0, v1, p1, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 p1, p1, 0x3

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v8, p1

    move-wide v5, v3

    const/4 v7, 0x5

    .line 734
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 735
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/br/ipad/isc/bean/ContaDebito;

    .line 739
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaDebito;->getValorConta()Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaDebito;->getValorAcrescimoImpontualidade()Ljava/math/BigDecimal;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v12

    add-double/2addr v10, v12

    if-ge v2, v1, :cond_1

    .line 742
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "REF "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaDebito;->getAnoMesReferencia()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "    "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-static {v10, v11}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 742
    invoke-virtual {p0, v7, v8, v9}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/4 v9, 0x2

    if-ne v2, v9, :cond_0

    const/16 v7, 0x34

    move v8, p1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x3

    goto :goto_1

    :cond_1
    add-double/2addr v5, v10

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    cmpl-double v0, v5, v3

    if-lez v0, :cond_3

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OUTROS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v8, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    :cond_3
    return p1
.end method

.method private gerarImpostosRetidos(I)I
    .locals 7

    .line 682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 683
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContaImpostoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const-string v2, ""

    .line 689
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 690
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/br/ipad/isc/bean/ContaImposto;

    .line 691
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaImposto;->getDescricaoImposto()Ljava/lang/String;

    move-result-object v4

    .line 692
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaImposto;->getPercentualAlicota()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v3

    .line 693
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "% "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorImpostoTotal(Ljava/lang/Integer;)D

    move-result-wide v0

    const/4 v3, 0x5

    const-string v4, "DED. IMPOSTOS LEI FEDERAL N.9430 DE 27/12/1996"

    .line 699
    invoke-virtual {p0, v3, p1, v4}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v4, 0x5f

    .line 700
    invoke-static {v0, v1}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v4, p1, v1, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IIZLjava/lang/String;)V

    add-int/lit8 p1, p1, 0x3

    .line 702
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, p1, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 p1, p1, 0x3

    :cond_1
    return p1
.end method

.method private gerarLancamentoAgua(I)I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 360
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v2

    .line 361
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndcTarifaCatgoria()Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 367
    iget-object v3, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v4, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 368
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 374
    iget-object v4, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v5, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 375
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v4

    const/4 v5, 0x5

    const-string v7, "AGUA"

    .line 378
    invoke-virtual {v0, v5, v1, v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x3

    const/4 v7, 0x0

    .line 382
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 383
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    .line 385
    new-instance v9, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct {v9}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>()V

    .line 387
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 389
    iget-object v9, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 390
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getId()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContaCategoriaPorCategoriaSubcategoriaId(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ContaCategoria;

    move-result-object v9

    if-nez v9, :cond_0

    move/from16 v18, v2

    goto/16 :goto_8

    .line 395
    :cond_0
    iget-object v10, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 396
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoria;->getId()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v10

    .line 400
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getFatorEconomiaCategoria()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 401
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getFatorEconomiaCategoria()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_1

    .line 402
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getFatorEconomiaCategoria()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto :goto_1

    .line 404
    :cond_1
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_1
    const-string v12, " UNIDADE(S)"

    const-string v13, " "

    const/16 v14, 0xa

    if-eqz v2, :cond_2

    .line 407
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getDescricaoCategoria()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 407
    invoke-virtual {v0, v14, v1, v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    goto :goto_2

    .line 412
    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getDescricaoAbreviadaSubcategoria()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 412
    invoke-virtual {v0, v14, v1, v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x3

    .line 420
    iget-object v8, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v12, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 421
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object v12

    .line 420
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-le v8, v12, :cond_3

    .line 422
    iget-object v8, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_3

    .line 424
    :cond_3
    iget-object v8, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_3
    const-string v12, " POR UNIDADE"

    const-string v15, " M3"

    if-nez v4, :cond_5

    if-eqz v9, :cond_5

    .line 428
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-gt v13, v8, :cond_5

    .line 429
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TARIFA MINIMA "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v17

    int-to-double v5, v11

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double v5, v17, v5

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 429
    invoke-virtual {v0, v14, v1, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 433
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x4b

    const/4 v8, 0x1

    invoke-virtual {v0, v6, v1, v8, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IIZLjava/lang/String;)V

    .line 440
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    .line 439
    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5f

    .line 434
    invoke-virtual {v0, v6, v1, v8, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IIZLjava/lang/String;)V

    :goto_4
    add-int/lit8 v1, v1, 0x3

    :cond_4
    move/from16 v18, v2

    goto/16 :goto_7

    :cond_5
    if-eqz v9, :cond_8

    if-eqz v10, :cond_8

    .line 444
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 445
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_6

    const-string v5, "CONSUMO ACUMULADO DAS FAIXAS"

    .line 446
    invoke-virtual {v0, v14, v1, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 448
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v10

    double-to-int v8, v10

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x4b

    .line 448
    invoke-virtual {v0, v8, v1, v6, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IIZLjava/lang/String;)V

    .line 453
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x5f

    .line 451
    invoke-virtual {v0, v8, v1, v6, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IIZLjava/lang/String;)V

    goto :goto_4

    .line 456
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ATE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumoMinimo()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    div-int/2addr v6, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " M3 - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v17

    int-to-double v13, v11

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double v17, v17, v13

    invoke-static/range {v17 .. v18}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    .line 456
    invoke-virtual {v0, v6, v1, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 465
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumoMinimo()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x4b

    const/4 v12, 0x1

    invoke-virtual {v0, v8, v1, v12, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IIZLjava/lang/String;)V

    .line 468
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v8

    .line 467
    invoke-static {v8, v9}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x5f

    .line 466
    invoke-virtual {v0, v8, v1, v12, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IIZLjava/lang/String;)V

    add-int/lit8 v1, v1, 0x3

    const/4 v8, 0x0

    .line 472
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 473
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    .line 475
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoFinal()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const v5, 0xf423f

    const-string v6, " POR M3"

    move/from16 v18, v2

    const-string v2, " M3 - R$ "

    if-ne v12, v5, :cond_7

    .line 476
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACIMA DE "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoInicial()Ljava/lang/Integer;

    move-result-object v12

    .line 480
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v17, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorTarifa()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v20

    .line 484
    invoke-static/range {v20 .. v21}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xa

    .line 476
    invoke-virtual {v0, v5, v1, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v6

    .line 487
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    mul-int v6, v6, v11

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x4b

    const/4 v12, 0x1

    invoke-virtual {v0, v6, v1, v12, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IIZLjava/lang/String;)V

    .line 491
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v19

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v19, v19, v13

    invoke-static/range {v19 .. v20}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x5f

    .line 490
    invoke-virtual {v0, v6, v1, v12, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IIZLjava/lang/String;)V

    goto :goto_6

    .line 494
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoInicial()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " M3 A "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoFinal()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorTarifa()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v20

    .line 502
    invoke-static/range {v20 .. v21}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xa

    .line 494
    invoke-virtual {v0, v5, v1, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v5

    .line 505
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int v5, v5, v11

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x4b

    const/4 v12, 0x1

    invoke-virtual {v0, v5, v1, v12, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IIZLjava/lang/String;)V

    .line 510
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v19

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v19, v19, v13

    .line 509
    invoke-static/range {v19 .. v20}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x5f

    .line 508
    invoke-virtual {v0, v5, v1, v12, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IIZLjava/lang/String;)V

    :goto_6
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v1, v1, 0x3

    move/from16 v2, v18

    goto/16 :goto_5

    :cond_8
    move/from16 v18, v2

    if-eqz v9, :cond_9

    const-string v5, "CONSUMO DE AGUA"

    const/16 v6, 0xa

    .line 516
    invoke-virtual {v0, v6, v1, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 517
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x4b

    const/4 v6, 0x1

    .line 517
    invoke-virtual {v0, v2, v1, v6, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IIZLjava/lang/String;)V

    .line 525
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x5f

    .line 520
    invoke-virtual {v0, v5, v1, v6, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IIZLjava/lang/String;)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v6, 0x1

    :goto_8
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_a
    return v1
.end method

.method private gerarLancamentoEsgoto(I)I
    .locals 9

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 545
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 549
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 551
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    .line 552
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getId()Ljava/lang/Integer;

    move-result-object v6

    .line 553
    new-instance v7, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct {v7}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>()V

    .line 555
    iget-object v7, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    const/4 v8, 0x2

    .line 556
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContaCategoriaPorCategoriaSubcategoriaId(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ContaCategoria;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 561
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 562
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    cmpl-double v0, v4, v2

    if-lez v0, :cond_2

    const/4 v0, 0x5

    const-string v1, "ESGOTO"

    .line 566
    invoke-virtual {p0, v0, p1, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    add-int/lit8 p1, p1, 0x3

    const/16 v0, 0xa

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 570
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentCobrancaEsgoto()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "% DO VALOR DE \u00c1GUA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 569
    invoke-virtual {p0, v0, p1, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v0, 0x5f

    .line 573
    invoke-static {v4, v5}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 572
    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IIZLjava/lang/String;)V

    add-int/lit8 p1, p1, 0x3

    :cond_2
    return p1
.end method

.method private gerarLancamentoServicos(I)I
    .locals 14

    .line 595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 596
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarDebitoCobradoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/16 v1, 0x5f

    const/4 v2, 0x5

    const/16 v3, 0x2d

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    .line 601
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 603
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/br/ipad/isc/bean/DebitoCobrado;

    if-eqz v7, :cond_0

    .line 608
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getDescricaoDebitoTipo()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 609
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getDescricaoDebitoTipo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v3, :cond_0

    .line 610
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getDescricaoDebitoTipo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 613
    :cond_0
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getDescricaoDebitoTipo()Ljava/lang/String;

    move-result-object v8

    .line 616
    :goto_1
    invoke-virtual {p0, v2, p1, v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 619
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getValor()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v7

    .line 618
    invoke-static {v7, v8}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v7

    .line 617
    invoke-virtual {p0, v1, p1, v5, v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IIZLjava/lang/String;)V

    add-int/lit8 p1, p1, 0x3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 627
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 628
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v6, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCreditoRealizadoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 634
    iget-object v6, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v7, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorContaSemCreditos(Ljava/lang/Integer;)D

    move-result-wide v6

    const/4 v8, 0x0

    .line 637
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 639
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/br/ipad/isc/bean/CreditoRealizado;

    if-eqz v9, :cond_2

    .line 643
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getDescricaoCreditoTipo()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 644
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getDescricaoCreditoTipo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v3, :cond_2

    .line 646
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getDescricaoCreditoTipo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 649
    :cond_2
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getDescricaoCreditoTipo()Ljava/lang/String;

    move-result-object v10

    .line 652
    :goto_3
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getValor()Ljava/math/BigDecimal;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v11

    cmpl-double v13, v11, v6

    if-lez v13, :cond_3

    .line 653
    invoke-virtual {p0, v2, p1, v10}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 655
    invoke-static {v6, v7}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, p1, v5, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IIZLjava/lang/String;)V

    add-int/lit8 p1, p1, 0x3

    goto :goto_4

    .line 660
    :cond_3
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getValor()Ljava/math/BigDecimal;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v11

    sub-double/2addr v6, v11

    .line 661
    invoke-virtual {p0, v2, p1, v10}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 664
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getValor()Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v9

    .line 663
    invoke-static {v9, v10}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v9

    .line 662
    invoke-virtual {p0, v1, p1, v5, v9}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IIZLjava/lang/String;)V

    add-int/lit8 p1, p1, 0x3

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    :goto_4
    return p1
.end method

.method private gerarLancamentosConta(I)V
    .locals 6

    const/4 v1, 0x5

    const/16 v3, 0x64

    const v5, 0x3dcccccd    # 0.1f

    move-object v0, p0

    move v2, p1

    move v4, p1

    .line 763
    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendLinha(IIIIF)V

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const-string v2, "DESCRICAO"

    .line 764
    invoke-virtual {p0, v1, p1, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x4b

    const-string v2, "CONSUMO"

    .line 765
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IIZLjava/lang/String;)V

    const/16 v1, 0x5f

    const-string v2, "TOTAL(R$)"

    .line 766
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IIZLjava/lang/String;)V

    add-int/lit8 p1, p1, 0x3

    .line 768
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->gerarLancamentoAgua(I)I

    move-result p1

    .line 769
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->gerarLancamentoEsgoto(I)I

    move-result p1

    .line 770
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->gerarLancamentoServicos(I)I

    move-result p1

    .line 771
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->gerarImpostosRetidos(I)I

    move-result p1

    .line 772
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->gerarFaturasEmAtraso(I)I

    return-void
.end method

.method private gerarTributosConta(D)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 778
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataVencimento()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->formatarData(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1a

    const/16 v2, 0x9b

    invoke-virtual {p0, v1, v2, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->obterSomaValorAguaEsgoto(Ljava/lang/Integer;)D

    move-result-wide v0

    const/16 v3, 0x8

    const/16 v4, 0x8f

    const-string v5, "TRIBUTOS"

    .line 784
    invoke-virtual {p0, v3, v4, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v3, 0xb

    const/16 v5, 0x92

    const-string v6, "PIS"

    .line 785
    invoke-virtual {p0, v3, v5, v6}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v6, 0x95

    const-string v7, "COFINS"

    .line 786
    invoke-virtual {p0, v3, v6, v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v3, 0x19

    const-string v7, "BASE DE C\u00c1LCULO"

    .line 788
    invoke-virtual {p0, v3, v4, v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 789
    invoke-static {v0, v1}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x1e

    invoke-virtual {p0, v7, v5, v3}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 790
    invoke-static {v0, v1}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v7, v6, v3}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v3, 0x34

    const-string v7, "PERCENTUAL(%)"

    .line 792
    invoke-virtual {p0, v3, v4, v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const-wide v7, 0x3ffa666666666666L    # 1.65

    .line 793
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x38

    invoke-virtual {p0, v7, v5, v3}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const-wide v8, 0x401e666666666666L    # 7.6

    .line 794
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v7, v6, v3}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v3, 0x4b

    const-string v7, "VALOR DO IMPOSTO"

    .line 796
    invoke-virtual {p0, v3, v4, v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const-wide v3, 0x3f90e5604189374cL    # 0.0165

    mul-double v3, v3, v0

    .line 797
    invoke-static {v3, v4}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x52

    invoke-virtual {p0, v4, v5, v3}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const-wide v7, 0x3fb374bc6a7ef9dbL    # 0.076

    mul-double v7, v7, v0

    .line 798
    invoke-static {v7, v8}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v6, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 800
    invoke-static {p1, p2}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x5f

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v2, v0, p1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IIZLjava/lang/String;)V

    return-void
.end method

.method public static getInstancia(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;
    .locals 1

    .line 41
    sget-object v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->instancia:Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;

    invoke-direct {v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->instancia:Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;

    .line 45
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->instancia:Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;

    iput-object p0, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 46
    sget-object p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->instancia:Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;

    return-object p0
.end method

.method private verificarEmitirCarta()Z
    .locals 11

    .line 852
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    .line 853
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 852
    invoke-virtual {v0, v1, v3}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v0

    .line 854
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    .line 856
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-eq v4, v1, :cond_0

    return v3

    .line 861
    :cond_0
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v4, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/br/ipad/isc/fachada/Fachada;->obterCategoriaPrincipal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 862
    iget-object v4, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v5, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoPerfil()Ljava/lang/Integer;

    move-result-object v5

    .line 863
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 862
    invoke-virtual {v4, v5, v6, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoAnormalidadeAcao(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v1

    .line 865
    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->isVazioOrNulo(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    .line 869
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    .line 877
    :try_start_0
    iget-object v4, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4, v2}, Lcom/br/ipad/isc/util/Util;->subtrairMesDoAnoMes(II)I

    move-result v4

    .line 878
    iget-object v5, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v6, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v6

    .line 879
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 878
    invoke-virtual {v5, v6, v7, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoAnterioresPorImovelAnormalidade(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    move-result-object v4

    const/16 v5, 0x3c

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-nez v4, :cond_7

    .line 882
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM_SHORT:Ljava/lang/Short;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getIndicadorGeracaoCartaMes1()Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Short;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 883
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getMensagemConta()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/br/ipad/isc/util/Util;->dividirString(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    .line 925
    array-length v1, v0

    if-eq v1, v2, :cond_4

    if-eq v1, v7, :cond_3

    if-eq v1, v6, :cond_2

    goto :goto_0

    .line 927
    :cond_2
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    aget-object v4, v0, v7

    invoke-virtual {v1, v4}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade3(Ljava/lang/String;)V

    .line 929
    :cond_3
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade2(Ljava/lang/String;)V

    .line 931
    :cond_4
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade1(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return v2

    :cond_6
    return v3

    .line 891
    :cond_7
    :try_start_1
    iget-object v4, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4, v7}, Lcom/br/ipad/isc/util/Util;->subtrairMesDoAnoMes(II)I

    move-result v4

    .line 892
    iget-object v8, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v9, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v9

    .line 893
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 892
    invoke-virtual {v8, v9, v10, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoAnterioresPorImovelAnormalidade(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    move-result-object v4

    if-nez v4, :cond_d

    .line 896
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM_SHORT:Ljava/lang/Short;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getIndicadorGeracaoCartaMes2()Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Short;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 897
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getMensagemContaSegundoMes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/br/ipad/isc/util/Util;->dividirString(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_b

    .line 925
    array-length v1, v0

    if-eq v1, v2, :cond_a

    if-eq v1, v7, :cond_9

    if-eq v1, v6, :cond_8

    goto :goto_1

    .line 927
    :cond_8
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    aget-object v4, v0, v7

    invoke-virtual {v1, v4}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade3(Ljava/lang/String;)V

    .line 929
    :cond_9
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade2(Ljava/lang/String;)V

    .line 931
    :cond_a
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade1(Ljava/lang/String;)V

    :cond_b
    :goto_1
    return v2

    :cond_c
    return v3

    .line 905
    :cond_d
    :try_start_2
    iget-object v4, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4, v6}, Lcom/br/ipad/isc/util/Util;->subtrairMesDoAnoMes(II)I

    move-result v4

    .line 906
    iget-object v8, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v9, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v9

    .line 907
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 906
    invoke-virtual {v8, v9, v0, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoAnterioresPorImovelAnormalidade(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    move-result-object v0

    if-nez v0, :cond_13

    .line 910
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM_SHORT:Ljava/lang/Short;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getIndicadorGeracaoCartaMes3()Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Short;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 911
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getMensagemContaTerceiroMes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/br/ipad/isc/util/Util;->dividirString(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_11

    .line 925
    array-length v1, v0

    if-eq v1, v2, :cond_10

    if-eq v1, v7, :cond_f

    if-eq v1, v6, :cond_e

    goto :goto_2

    .line 927
    :cond_e
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    aget-object v4, v0, v7

    invoke-virtual {v1, v4}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade3(Ljava/lang/String;)V

    .line 929
    :cond_f
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade2(Ljava/lang/String;)V

    .line 931
    :cond_10
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade1(Ljava/lang/String;)V

    :cond_11
    :goto_2
    return v2

    :cond_12
    return v3

    .line 919
    :cond_13
    :try_start_3
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO_SHORT:Ljava/lang/Short;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getIndicadorCobrancaConsumoNormal()Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Short;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 920
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getMensagemContaTerceiroMes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/br/ipad/isc/util/Util;->dividirString(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_17

    .line 925
    array-length v1, v0

    if-eq v1, v2, :cond_16

    if-eq v1, v7, :cond_15

    if-eq v1, v6, :cond_14

    goto :goto_3

    .line 927
    :cond_14
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    aget-object v4, v0, v7

    invoke-virtual {v1, v4}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade3(Ljava/lang/String;)V

    .line 929
    :cond_15
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade2(Ljava/lang/String;)V

    .line 931
    :cond_16
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade1(Ljava/lang/String;)V

    :cond_17
    :goto_3
    return v2

    :cond_18
    return v3

    :catchall_0
    move-exception v0

    .line 935
    throw v0
.end method


# virtual methods
.method public imprimirConta()Ljava/lang/StringBuilder;
    .locals 22

    move-object/from16 v9, p0

    const-string v0, "LEFT\n"

    const-string v10, "CENTER\n"

    .line 52
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->buffer:Ljava/lang/StringBuilder;

    .line 57
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getContrasteConta()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 58
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

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "! 0 200 200 225 1\nIN-MILLIMETERS\nLT LF\n"

    .line 60
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto(Ljava/lang/String;)V

    .line 65
    :goto_0
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getEnderecoAtendimento()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, " -   -"

    const-string v3, ","

    .line 65
    invoke-static {v1, v2, v3}, Lcom/br/ipad/isc/util/Util;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x4c

    const/4 v5, 0x6

    const/16 v7, 0x1a

    const/4 v8, 0x2

    move-object/from16 v1, p0

    .line 67
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTextos(IIIILjava/lang/String;II)V

    const/16 v1, 0xb

    .line 68
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getTelefone0800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-virtual {v9, v3, v1, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0xe

    .line 69
    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 70
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getTelefoneLocalidadeDDD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->formatarTelefone(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 69
    invoke-virtual {v9, v3, v1, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/StringBuilder;)V

    .line 73
    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto(Ljava/lang/String;)V

    const/16 v1, 0x13

    const-string v2, "CONTA DE CONSUMO DE AGUA/ESGOTO E SERVICOS"

    const/4 v8, 0x0

    .line 74
    invoke-virtual {v9, v8, v1, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 77
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 78
    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->dateToHoraString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto(Ljava/lang/String;)V

    const/16 v3, 0x17

    .line 82
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

    const/4 v11, 0x3

    invoke-virtual {v9, v11, v3, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 86
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0x1d

    const/16 v13, 0x3a

    invoke-virtual {v9, v13, v12, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x50

    .line 87
    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 88
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v12, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x23

    .line 92
    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getNomeUsuario()Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x5

    invoke-virtual {v9, v14, v1, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/16 v5, 0x26

    .line 93
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getEndereco()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->cortarEndereco(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTextos(IIII[Ljava/lang/String;I)V

    .line 97
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->formatarInscricao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v9, v14, v2, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 98
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoRota()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2a

    invoke-virtual {v9, v3, v2, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x35

    .line 99
    iget-object v4, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getSequencialRota()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v1, v2, v4}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 104
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v1

    .line 106
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->getNumeroEconomias(Ljava/util/ArrayList;)[I

    move-result-object v1

    const/16 v2, 0x41

    const/4 v4, 0x0

    .line 107
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 108
    aget v5, v1, v4

    if-lez v5, :cond_1

    const/16 v5, 0x31

    .line 109
    aget v6, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v2, v5, v6}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0xa

    goto :goto_1

    :cond_2
    const-string v1, "SEM MEDIDOR"

    .line 113
    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v4, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoAgua(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 114
    iget-object v4, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v5, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigEsgoto()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoEsgoto(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    .line 126
    iget-object v5, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v6, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 127
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v6, v15}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v5

    .line 129
    iget-object v6, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v15, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 130
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v15, v12}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v6

    .line 134
    iget-object v12, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v15, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12, v15, v7}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v7

    .line 135
    iget-object v12, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v15, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v15, v3}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v15, ""

    if-eqz v5, :cond_9

    .line 140
    :try_start_1
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v1

    .line 141
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v11, v5}, Lcom/br/ipad/isc/fachada/Fachada;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 143
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v12

    invoke-static {v12}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    if-eqz v7, :cond_7

    .line 146
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 147
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v17

    .line 148
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v18

    .line 149
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v19

    goto :goto_3

    .line 151
    :cond_3
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 152
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v17

    goto :goto_2

    :cond_4
    const/16 v17, 0x0

    .line 155
    :goto_2
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v18

    .line 156
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object v19

    if-eqz v19, :cond_5

    .line 157
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object v19

    goto :goto_3

    .line 159
    :cond_5
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v19

    .line 163
    :goto_3
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v20

    if-eqz v20, :cond_6

    .line 164
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v7

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_4
    if-eqz v3, :cond_8

    .line 168
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v20

    if-eqz v20, :cond_8

    .line 169
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v16, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v19

    goto :goto_5

    :cond_8
    move-object/from16 v16, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v19

    const/4 v3, 0x0

    :goto_5
    move-object/from16 v21, v17

    move-object/from16 v17, v11

    move-object/from16 v11, v21

    goto/16 :goto_f

    :cond_9
    if-eqz v6, :cond_e

    .line 174
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v1

    .line 175
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorFaturamento()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 176
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v11

    invoke-static {v11}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    if-eqz v3, :cond_d

    .line 180
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 181
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v12

    .line 182
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v17

    .line 183
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object v18

    goto :goto_6

    .line 185
    :cond_a
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v12

    .line 186
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v17

    .line 188
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object v18

    if-eqz v18, :cond_b

    .line 189
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object v18

    goto :goto_6

    .line 191
    :cond_b
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v18

    .line 196
    :goto_6
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v19

    if-eqz v19, :cond_c

    .line 197
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v16, v11

    move-object v11, v12

    move-object/from16 v12, v17

    goto :goto_7

    :cond_c
    move-object/from16 v16, v11

    move-object v11, v12

    move-object/from16 v12, v17

    const/4 v3, 0x0

    :goto_7
    move-object/from16 v17, v7

    goto/16 :goto_d

    :cond_d
    move-object/from16 v17, v7

    move-object/from16 v16, v11

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_e

    :cond_e
    if-nez v5, :cond_15

    if-nez v6, :cond_15

    if-eqz v7, :cond_11

    .line 202
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 203
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_8

    :cond_f
    const/4 v3, 0x0

    .line 205
    :goto_8
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v11

    .line 206
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v12

    .line 209
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_10

    .line 210
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v18, v12

    move-object/from16 v17, v15

    goto :goto_9

    :cond_10
    move-object/from16 v18, v12

    move-object/from16 v17, v15

    const/4 v7, 0x0

    :goto_9
    const/16 v16, 0x0

    move-object v12, v11

    move-object v11, v3

    const/4 v3, 0x0

    goto :goto_f

    :cond_11
    if-eqz v3, :cond_13

    .line 214
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 215
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v7

    goto :goto_a

    :cond_12
    const/4 v7, 0x0

    .line 217
    :goto_a
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v11

    .line 218
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v12

    goto :goto_b

    :cond_13
    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_b
    if-eqz v3, :cond_14

    .line 221
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_14

    .line 222
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v18, v12

    goto :goto_c

    :cond_14
    move-object/from16 v18, v12

    const/4 v3, 0x0

    :goto_c
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v11

    move-object v11, v7

    :goto_d
    const/4 v7, 0x0

    goto :goto_f

    :cond_15
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_e
    const/16 v18, 0x0

    :goto_f
    const/16 v8, 0x37

    const/16 v13, 0xa

    .line 229
    invoke-virtual {v9, v13, v8, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x2d

    .line 230
    invoke-virtual {v9, v1, v8, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x4e

    .line 231
    invoke-virtual {v9, v1, v8, v4}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x3c

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CONSUMO \u00c1GUA (M3): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v14, v1, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 238
    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcCondominio()Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0x42

    if-nez v2, :cond_16

    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_18

    :cond_16
    if-eqz v7, :cond_17

    const/16 v2, 0x3f

    .line 240
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CONSUMO RATEIO \u00c1GUA (M3): "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v14, v2, v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    :cond_17
    if-eqz v3, :cond_18

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VOLUME RATEIO ESGOTO (M3): "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v14, v4, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 251
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA LEITURA:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_19

    move-object/from16 v3, v16

    goto :goto_10

    :cond_19
    move-object v3, v15

    :goto_10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v9, v3, v1, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x3f

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LEIT. ATUAL:   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_1a

    move-object v3, v11

    goto :goto_11

    :cond_1a
    move-object v3, v15

    :goto_11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v9, v3, v1, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LEIT. ANT.:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v17, :cond_1b

    move-object/from16 v2, v17

    goto :goto_12

    :cond_1b
    move-object v2, v15

    :goto_12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v9, v2, v4, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x45

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DIAS CONSUMO:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v18, :cond_1c

    move-object/from16 v3, v18

    goto :goto_13

    :cond_1c
    move-object v3, v15

    :goto_13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v9, v3, v1, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v1, 0x48

    .line 256
    invoke-virtual {v9, v5, v6, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->gerarHistorico(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;I)I

    move-result v1

    add-int/2addr v1, v13

    .line 258
    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorConta(Ljava/lang/Integer;)D

    move-result-wide v2

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->verificarEmitirCarta()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 264
    invoke-direct {v9, v1, v11}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->emitirCarta(ILjava/lang/Integer;)V

    goto :goto_14

    .line 267
    :cond_1d
    invoke-direct {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->gerarLancamentosConta(I)V

    .line 270
    invoke-direct {v9, v2, v3}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->gerarTributosConta(D)V

    .line 277
    :goto_14
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade1()Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0xa8

    const/16 v7, 0xa5

    const/16 v8, 0xa2

    if-eqz v1, :cond_1e

    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 278
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade1()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    invoke-virtual {v9, v1, v11, v4}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x3

    invoke-virtual {v9, v12, v8, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 279
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1, v11, v4}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v12, v7, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 280
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1, v11, v4}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v12, v6, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    goto :goto_15

    :cond_1e
    const-wide v11, 0x412e848000000000L    # 1000000.0

    cmpl-double v1, v2, v11

    if-lez v1, :cond_1f

    const-string v1, "Informamos que se encontra dispon\u00edvel no site www.caern.com.br, "

    const/4 v11, 0x3

    .line 283
    invoke-virtual {v9, v11, v8, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const-string v1, "a sua ficha de compensa\u00e7\u00e3o banc\u00e1ria."

    .line 284
    invoke-virtual {v9, v11, v7, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 285
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta3()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v9, v1, v7, v4}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v11, v6, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    goto :goto_15

    .line 287
    :cond_1f
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta1()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    invoke-virtual {v9, v1, v11, v4}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x3

    invoke-virtual {v9, v12, v8, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 288
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1, v11, v4}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v12, v7, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 289
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1, v11, v4}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v12, v6, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 296
    :goto_15
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v4, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 297
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdLocalidade()Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdSetorComercial()Ljava/lang/Integer;

    move-result-object v6

    .line 296
    invoke-virtual {v1, v4, v6}, Lcom/br/ipad/isc/fachada/Fachada;->buscarQualidadeAguaPorLocalidadeSetorComercial(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/QualidadeAgua;

    move-result-object v1

    if-nez v1, :cond_20

    .line 300
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v4, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdLocalidade()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarQualidadeAguaPorLocalidade(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/QualidadeAgua;

    move-result-object v1

    :cond_20
    if-nez v1, :cond_21

    .line 304
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarQualidadeAguaSemLocalidade()Lcom/br/ipad/isc/bean/QualidadeAgua;

    move-result-object v1

    :cond_21
    if-eqz v1, :cond_23

    const/16 v4, 0x1b

    .line 309
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroTurbidez()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->VerificarString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb5

    invoke-virtual {v9, v4, v7, v6}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 310
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroPh()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->VerificarString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x2a

    invoke-virtual {v9, v6, v7, v4}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 312
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroColiformesTotais()Ljava/math/BigDecimal;

    move-result-object v4

    if-nez v4, :cond_22

    const/16 v4, 0x39

    .line 313
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroColiformesTotais()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->VerificarString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v4, v7, v6}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    goto :goto_16

    :cond_22
    const/16 v4, 0x39

    .line 315
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroColiformesTotais()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " %"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v4, v7, v6}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    :goto_16
    const/16 v4, 0x4a

    .line 318
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroCloroResidual()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->VerificarString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v4, v7, v6}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v4, 0x5a

    .line 319
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroNitrato()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->VerificarString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v4, v7, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    :cond_23
    if-eqz v5, :cond_24

    .line 323
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoAgencia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 325
    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto(Ljava/lang/String;)V

    const/16 v1, 0xc0

    const-string v4, "N\u00c3O SER\u00c1 DEBITADO EM CONTA CORRENTE"

    const/4 v6, 0x0

    .line 326
    invoke-virtual {v9, v6, v1, v4}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 327
    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto(Ljava/lang/String;)V

    goto :goto_17

    .line 331
    :cond_24
    invoke-direct {v9, v2, v3}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->gerarCodigoBarrasLinhaDigitavel(D)V

    .line 336
    :cond_25
    :goto_17
    iget-object v0, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd8

    invoke-virtual {v9, v14, v1, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 337
    iget-object v0, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x1d

    invoke-virtual {v9, v4, v1, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    if-nez v5, :cond_26

    const/16 v0, 0x36

    .line 339
    iget-object v4, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataVencimento()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->formatarData(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v0, v1, v4}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    const/16 v0, 0x4f

    .line 340
    invoke-static {v2, v3}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto70(IILjava/lang/String;)V

    .line 344
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->comandoImpressao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->appendTexto(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_18

    :catch_0
    move-exception v0

    .line 346
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 350
    :goto_18
    iget-object v0, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaern;->buffer:Ljava/lang/StringBuilder;

    return-object v0
.end method
