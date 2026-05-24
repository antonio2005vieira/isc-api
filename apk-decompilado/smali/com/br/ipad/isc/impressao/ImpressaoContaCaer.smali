.class public Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;
.super Lcom/br/ipad/isc/impressao/ImpressaoCaer;
.source "ImpressaoContaCaer.java"


# static fields
.field private static instancia:Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;


# instance fields
.field private quantidadeLinhasAtual:I

.field private quantidadeMaximaLinhas:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/br/ipad/isc/impressao/ImpressaoCaer;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->quantidadeLinhasAtual:I

    const/16 v0, 0x12

    .line 39
    iput v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->quantidadeMaximaLinhas:I

    return-void
.end method

.method private gerarLancamentoAgua(I)I
    .locals 18

    move-object/from16 v0, p0

    .line 619
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    .line 620
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndcTarifaCatgoria()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 622
    iget-object v2, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 623
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 629
    iget-object v3, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v4, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 630
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v3

    .line 632
    iget v4, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->xMargemDireita:I

    const-string v6, "AGUA"

    move/from16 v7, p1

    invoke-virtual {v0, v4, v7, v6}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 634
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_c

    .line 637
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    .line 639
    new-instance v9, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct {v9}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>()V

    .line 641
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 643
    iget-object v10, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 644
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getId()Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContaCategoriaPorCategoriaSubcategoriaId(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ContaCategoria;

    move-result-object v10

    if-nez v10, :cond_0

    :goto_1
    const/4 v13, 0x1

    goto/16 :goto_7

    :cond_0
    add-int/lit8 v7, v7, 0x22

    .line 653
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getFatorEconomiaCategoria()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 654
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getFatorEconomiaCategoria()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_1

    .line 655
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getFatorEconomiaCategoria()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_2

    .line 657
    :cond_1
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_2
    const-string v12, " UNIDADE(S)"

    const-string v13, " "

    const/16 v14, 0x28

    const/16 v15, 0x3f

    if-eqz v1, :cond_3

    .line 662
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getDescricaoCategoria()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 664
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v14, :cond_2

    .line 665
    invoke-virtual {v5, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v15, v7, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    goto :goto_3

    .line 667
    :cond_2
    invoke-virtual {v0, v15, v7, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    goto :goto_3

    .line 670
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getDescricaoAbreviadaSubcategoria()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 672
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v14, :cond_4

    .line 673
    invoke-virtual {v5, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v15, v7, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    goto :goto_3

    .line 675
    :cond_4
    invoke-virtual {v0, v15, v7, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    .line 680
    :goto_3
    iget-object v5, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v8, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 681
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object v8

    .line 680
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v5, v8, :cond_5

    .line 682
    iget-object v5, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_4

    .line 684
    :cond_5
    iget-object v5, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_4
    const-string v8, " M3"

    if-nez v3, :cond_6

    if-eqz v10, :cond_6

    .line 690
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-gt v14, v5, :cond_6

    add-int/lit8 v7, v7, 0x22

    .line 695
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TARIFA MINIMA "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v16

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double v16, v16, v12

    .line 695
    invoke-static/range {v16 .. v17}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " POR UNIDADE "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 698
    invoke-virtual {v0, v15, v7, v9}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    .line 699
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x23b

    .line 701
    invoke-virtual {v0, v8, v7, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    .line 704
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v8

    .line 703
    invoke-static {v8, v9}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x2b9

    invoke-virtual {v0, v8, v7, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const/16 v5, 0x49

    const-string v11, "CONSUMO DE AGUA"

    if-eqz v10, :cond_9

    .line 710
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_9

    add-int/lit8 v7, v7, 0x22

    .line 714
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_7

    const-string v9, "CONSUMO ACUMULADO DAS FAIXAS"

    .line 718
    invoke-virtual {v0, v5, v7, v9}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    .line 719
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v11

    double-to-int v9, v11

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x23b

    invoke-virtual {v0, v8, v7, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    .line 721
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x2b9

    invoke-virtual {v0, v8, v7, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    goto/16 :goto_7

    .line 726
    :cond_7
    iget v5, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->xMargemDireita:I

    invoke-virtual {v0, v5, v7, v11}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    const/4 v5, 0x0

    .line 728
    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_a

    .line 731
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    .line 733
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoFinal()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const v11, 0xf423f

    const-string v12, " M3 "

    if-ne v10, v11, :cond_8

    .line 735
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x23b

    invoke-virtual {v0, v11, v7, v10}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    .line 738
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0x2b9

    invoke-virtual {v0, v10, v7, v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    goto :goto_6

    .line 741
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x23b

    invoke-virtual {v0, v11, v7, v10}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    .line 742
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0x2b9

    invoke-virtual {v0, v10, v7, v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v13, 0x1

    if-eqz v10, :cond_a

    add-int/lit8 v7, v7, 0x22

    .line 752
    invoke-virtual {v0, v5, v7, v11}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    .line 753
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x23b

    invoke-virtual {v0, v8, v7, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    .line 755
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x2b9

    invoke-virtual {v0, v8, v7, v5}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    :cond_a
    :goto_7
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_b
    move/from16 v7, p1

    :cond_c
    add-int/lit8 v7, v7, 0x22

    return v7
.end method

.method private gerarLinhasCreditosRealizados(I)I
    .locals 20

    move-object/from16 v0, p0

    .line 969
    iget v1, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->quantidadeMaximaLinhas:I

    iget v2, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->quantidadeLinhasAtual:I

    const/16 v3, 0x63

    .line 970
    invoke-direct {v0, v1, v2, v3}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->retornaIndicadorDiscriminar(IIC)I

    move-result v1

    .line 972
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 978
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 979
    iget-object v3, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v4, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCreditoRealizadoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    const/4 v6, 0x2

    const-wide/16 v7, 0x0

    if-ne v1, v5, :cond_5

    .line 994
    iget-object v1, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v9, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorCreditoTotal(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 995
    iget-object v1, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v11, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorContaSemCreditos(Ljava/lang/Integer;)D

    move-result-wide v11

    cmpl-double v1, v9, v7

    if-eqz v1, :cond_0

    cmpg-double v1, v11, v9

    if-gez v1, :cond_0

    sub-double/2addr v9, v11

    goto :goto_0

    :cond_0
    move-wide v9, v7

    :goto_0
    cmpl-double v1, v9, v7

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1007
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_7

    new-array v13, v6, [Ljava/lang/StringBuilder;

    .line 1009
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/br/ipad/isc/bean/CreditoRealizado;

    const-string v15, ""

    if-nez v1, :cond_2

    .line 1015
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getDescricaoCreditoTipo()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v6, v13, v4

    .line 1017
    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getValor()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v6, v13, v5

    goto :goto_4

    :cond_2
    if-nez v10, :cond_4

    .line 1023
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getValor()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    sub-double v18, v11, v6

    const-wide/16 v16, 0x0

    cmpg-double v8, v18, v16

    if-gez v8, :cond_3

    move-wide/from16 v18, v11

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    move-wide v11, v6

    .line 1035
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getDescricaoCreditoTipo()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v6, v13, v4

    .line 1037
    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v6, v13, v5

    move-wide/from16 v11, v18

    goto :goto_5

    :cond_4
    :goto_4
    const-wide/16 v16, 0x0

    .line 1041
    :goto_5
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v7, v16

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_5
    move-wide/from16 v16, v7

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    .line 1047
    :goto_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_6

    .line 1049
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/br/ipad/isc/bean/CreditoRealizado;

    .line 1050
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/CreditoRealizado;->getValor()Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v9

    add-double/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1054
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "CREDITOS"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v4

    .line 1056
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v5

    .line 1057
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    move/from16 v1, p1

    const/4 v3, 0x0

    .line 1061
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_a

    .line 1062
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/StringBuilder;

    .line 1064
    aget-object v7, v6, v4

    if-eqz v7, :cond_8

    .line 1065
    iget v7, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->xMargemDireita:I

    aget-object v8, v6, v4

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v1, v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    .line 1067
    :cond_8
    aget-object v7, v6, v5

    if-eqz v7, :cond_9

    const/16 v7, 0x2b9

    .line 1068
    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v7, v1, v6}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    .line 1071
    :cond_9
    iget v6, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->yPularLinha:I

    add-int/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    return v1
.end method

.method private gerarLinhasDebitosCobrados(I)I
    .locals 11

    .line 904
    iget v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->quantidadeMaximaLinhas:I

    iget v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->quantidadeLinhasAtual:I

    const/16 v2, 0x64

    .line 905
    invoke-direct {p0, v0, v1, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->retornaIndicadorDiscriminar(IIC)I

    move-result v0

    .line 907
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/StringBuilder;

    .line 913
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 914
    iget-object v4, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v5, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->buscarDebitoCobradoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v0, v6, :cond_0

    const/4 v0, 0x0

    .line 920
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 921
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/br/ipad/isc/bean/DebitoCobrado;

    .line 923
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getDescricaoDebitoTipo()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v8, v3, v5

    .line 925
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getValor()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v8, v3, v6

    .line 926
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v3, v2, [Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x0

    const/4 v0, 0x0

    .line 931
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 932
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/br/ipad/isc/bean/DebitoCobrado;

    .line 933
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getValor()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v9

    add-double/2addr v7, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 936
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DEBITOS"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v0, v3, v5

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v0, v3, v6

    .line 939
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v0, 0x0

    .line 945
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 947
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StringBuilder;

    .line 949
    aget-object v3, v2, v5

    if-eqz v3, :cond_3

    .line 950
    iget v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->xMargemDireita:I

    aget-object v4, v2, v5

    invoke-virtual {p0, v3, p1, v4}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/StringBuilder;)V

    .line 952
    :cond_3
    aget-object v3, v2, v6

    if-eqz v3, :cond_4

    const/16 v3, 0x2b9

    .line 953
    aget-object v2, v2, v6

    invoke-virtual {p0, v3, p1, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/StringBuilder;)V

    .line 956
    :cond_4
    iget v2, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->yPularLinha:I

    add-int/2addr p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return p1
.end method

.method private gerarLinhasImpostosRetidos(I)V
    .locals 7

    .line 1087
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 1088
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContaImpostoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const-string v2, ""

    .line 1093
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1094
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/br/ipad/isc/bean/ContaImposto;

    .line 1095
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaImposto;->getDescricaoImposto()Ljava/lang/String;

    move-result-object v4

    .line 1096
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaImposto;->getPercentualAlicota()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v3

    .line 1097
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

    .line 1101
    :cond_0
    iget v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->xMargemDireita:I

    const-string v1, "DED. IMPOSTOS LEI FEDERAL N.9430 DE 27/12/1996"

    invoke-virtual {p0, v0, p1, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    .line 1105
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorImpostoTotal(Ljava/lang/Integer;)D

    move-result-wide v0

    const/16 v3, 0x2b9

    .line 1106
    invoke-static {v0, v1}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, p1, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    .line 1108
    iget v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->yPularLinha:I

    add-int/2addr p1, v0

    .line 1111
    iget v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->xMargemDireita:I

    invoke-virtual {p0, v0, p1, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private gerarLinhasTarifaPoco(I)I
    .locals 14

    .line 780
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 781
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v6, v2

    move-wide v8, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 786
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_4

    .line 788
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    .line 790
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getId()Ljava/lang/Integer;

    move-result-object v10

    .line 792
    new-instance v11, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct {v11}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>()V

    .line 793
    new-instance v11, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct {v11}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>()V

    .line 795
    iget-object v11, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    const/4 v12, 0x2

    .line 796
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContaCategoriaPorCategoriaSubcategoriaId(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ContaCategoria;

    move-result-object v11

    .line 798
    iget-object v12, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    const/4 v13, 0x1

    .line 799
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContaCategoriaPorCategoriaSubcategoriaId(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ContaCategoria;

    move-result-object v10

    if-eqz v11, :cond_1

    .line 802
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 803
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v12

    add-double/2addr v8, v12

    .line 805
    :cond_0
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 806
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 807
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v5, v11

    :cond_1
    if-eqz v10, :cond_3

    .line 812
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 813
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 814
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v4, v11

    .line 816
    :cond_2
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 817
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v10

    add-double/2addr v6, v10

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/16 v0, 0x2b9

    const/16 v1, 0x15e

    const-string v10, "ESGOTO"

    if-ne v4, v5, :cond_5

    cmpl-double v4, v6, v2

    if-eqz v4, :cond_5

    cmpl-double v4, v8, v2

    if-eqz v4, :cond_6

    .line 826
    iget v2, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->xMargemDireita:I

    invoke-virtual {p0, v2, p1, v10}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    .line 828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentCobrancaEsgoto()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " % DO VALOR DE \u00c1GUA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    .line 830
    invoke-static {v8, v9}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    goto :goto_1

    :cond_5
    cmpl-double v4, v8, v2

    if-eqz v4, :cond_6

    .line 835
    iget v2, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->xMargemDireita:I

    invoke-virtual {p0, v2, p1, v10}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    .line 837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " M3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    .line 839
    invoke-static {v8, v9}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto70(IILjava/lang/String;)V

    :cond_6
    :goto_1
    add-int/lit8 p1, p1, 0x22

    return p1
.end method

.method public static getInstancia(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;
    .locals 1

    .line 45
    sget-object v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->instancia:Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;

    invoke-direct {v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->instancia:Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;

    .line 49
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->instancia:Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;

    iput-object p0, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 50
    sget-object p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->instancia:Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;

    return-object p0
.end method

.method private retornaIndicadorDiscriminar(IIC)I
    .locals 7

    .line 851
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    .line 853
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->obterQntDebitoCobradoPorImovelId(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    .line 854
    iget-object v2, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/fachada/Fachada;->obterQntContaImpostoPorImovelId(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    .line 855
    iget-object v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/br/ipad/isc/fachada/Fachada;->obterQntCreditoRealizadoPorImovelId(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x63

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq p3, v3, :cond_3

    const/16 v3, 0x64

    if-eq p3, v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    const/4 v6, 0x1

    :cond_1
    if-eqz v2, :cond_2

    add-int/lit8 v6, v6, 0x2

    :cond_2
    if-eqz v1, :cond_5

    sub-int/2addr p1, p2

    sub-int/2addr p1, v6

    .line 872
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-le p2, p1, :cond_5

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    const/4 v6, 0x2

    :cond_4
    if-eqz v0, :cond_5

    sub-int/2addr p1, p2

    sub-int/2addr p1, v6

    .line 888
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-le p2, p1, :cond_5

    :goto_0
    const/4 v4, 0x2

    :cond_5
    :goto_1
    return v4
.end method


# virtual methods
.method public alinharTextoAhEsquerda(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, " "

    .line 1254
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    sget-object v2, Lcom/br/ipad/isc/bean/ContaComunicado;->INICIO_LINHA:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1267
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_c

    .line 1268
    aget-object v5, p1, v4

    const-string v6, ""

    .line 1269
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 1270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 1271
    :cond_0
    sget-object v7, Lcom/br/ipad/isc/bean/ContaComunicado;->CONJUNTO_CARACTERE_ENTER:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1273
    sget-object v7, Lcom/br/ipad/isc/bean/ContaComunicado;->CONJUNTO_CARACTERE_ENTER:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_5

    .line 1274
    sget-object v7, Lcom/br/ipad/isc/bean/ContaComunicado;->CONJUNTO_CARACTERE_ENTER:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 1275
    :goto_1
    array-length v9, v7

    if-ge v8, v9, :cond_4

    .line 1276
    aget-object v9, v7, v8

    invoke-virtual {v9, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1

    .line 1277
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    sget-object v2, Lcom/br/ipad/isc/bean/ContaComunicado;->INICIO_LINHA:Ljava/lang/String;

    goto :goto_3

    .line 1280
    :cond_1
    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->verificarInicioLinha(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1281
    aget-object v2, v7, v8

    goto :goto_2

    .line 1283
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v8

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    add-int/lit8 v9, v8, 0x1

    .line 1286
    array-length v10, v7

    if-eq v9, v10, :cond_3

    .line 1287
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1288
    sget-object v2, Lcom/br/ipad/isc/bean/ContaComunicado;->INICIO_LINHA:Ljava/lang/String;

    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1293
    :cond_4
    sget-object v6, Lcom/br/ipad/isc/bean/ContaComunicado;->CONJUNTO_CARACTERE_ENTER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1294
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    sget-object v2, Lcom/br/ipad/isc/bean/ContaComunicado;->INICIO_LINHA:Ljava/lang/String;

    goto/16 :goto_5

    .line 1299
    :cond_5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1300
    sget-object v2, Lcom/br/ipad/isc/bean/ContaComunicado;->INICIO_LINHA:Ljava/lang/String;

    goto/16 :goto_5

    .line 1303
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x3e

    if-lt v6, v7, :cond_8

    .line 1305
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 1311
    div-int/lit8 v7, v6, 0x3e

    mul-int/lit8 v8, v7, 0x3e

    sub-int v9, v6, v8

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v7, :cond_7

    mul-int/lit8 v2, v10, 0x3e

    add-int/lit8 v11, v2, 0x3e

    .line 1315
    invoke-virtual {v5, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1316
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_7
    if-eqz v9, :cond_b

    .line 1320
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 1322
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v6, v8

    if-ge v6, v7, :cond_a

    .line 1323
    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->verificarInicioLinha(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1324
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 1326
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 1328
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v6, v8

    if-le v6, v7, :cond_b

    .line 1329
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    :cond_b
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1335
    :cond_c
    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->verificarInicioLinha(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 1336
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-object v1
.end method

.method public imprimirConta()Ljava/lang/StringBuilder;
    .locals 37

    move-object/from16 v9, p0

    const-string v10, " "

    const-string v11, "\n"

    const-string v12, ""

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->buffer:Ljava/lang/StringBuilder;

    .line 69
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getContrasteConta()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "! 0 816 0 1720 1 CONTRAST "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getContrasteConta()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "! 0 816 0 1720 1 \n"

    .line 72
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    :goto_0
    const-string v1, "LINE 308 336 308 360 1\nLINE 399 336 399 360 1\nLINE 647 336 647 360 1\nLINE 35 360 805 360 1\nLINE 35 450 805 450 1\nLINE 142 488 142 639 1\nBOX 279 480 798 500 1\nBOX 279 500 798 542 1\nBOX 279 542 798 665 1\nLINE 400 542 400 665 1\nLINE 480 542 480 665 1\nLINE 560 542 560 665 1\nLINE 640 542 640 665 1\nLINE 720 542 720 665 1\nLINE 280 580 798 580 1\nLINE 280 610 798 610 1\nLINE 280 640 798 640 1\n"

    .line 75
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    .line 97
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->buffer:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "T90 0 1 814 785 IMPRESSO EM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T 7 1 464 66 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T 7 1 613 66 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->retornaDescricaoAnoMes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    .line 107
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCpfCnpjCliente()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCpfCnpjCliente()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCpfCnpjCliente()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x34

    const/16 v5, 0xa4

    .line 110
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNomeUsuario()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1b2

    const/16 v5, 0xa4

    .line 112
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getEndereco()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x28

    const/16 v8, 0x1b

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->dividirLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2d

    const/16 v5, 0xfa

    .line 115
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v6, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/br/ipad/isc/fachada/Fachada;->formatarInscricao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x13b

    const/16 v5, 0xfa

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoRota()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x19f

    const/16 v5, 0xfa

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ImovelConta;->getSequencialRota()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    .line 131
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->gerarCategoriaSubcategoria(Ljava/lang/Integer;)V

    const-string v1, "N\u00c3O MEDIDO"

    .line 135
    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoAgua(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v13

    .line 136
    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigEsgoto()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoEsgoto(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v14

    .line 148
    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 149
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v2

    .line 151
    iget-object v3, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v5, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 152
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v3

    .line 158
    iget-object v5, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v7, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 159
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v15

    .line 161
    iget-object v4, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v5, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v16

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    .line 166
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v1

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v5, v2}, Lcom/br/ipad/isc/fachada/Fachada;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 170
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataInstalacaoHidrometro()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 171
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v7

    invoke-static {v7}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    if-eqz v15, :cond_6

    .line 174
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 176
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v2

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v17, v1

    goto :goto_2

    .line 182
    :cond_2
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 183
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v4

    .line 187
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 191
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 195
    :cond_4
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    move-object v8, v2

    move-object v2, v4

    move-object v4, v1

    .line 200
    :goto_2
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 202
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    :cond_5
    move-object v1, v4

    move-object v4, v2

    goto :goto_3

    :cond_6
    move-object/from16 v17, v1

    move-object v1, v4

    move-object v8, v1

    :goto_3
    if-eqz v16, :cond_7

    .line 207
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 209
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    :cond_7
    move-object/from16 v18, v3

    move-object/from16 v20, v5

    move-object/from16 v19, v7

    move-object v7, v8

    move-object v5, v1

    move-object v8, v4

    move-object/from16 v36, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v36

    goto/16 :goto_9

    :cond_8
    if-eqz v3, :cond_d

    .line 215
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v1

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorFaturamento()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    if-eqz v16, :cond_c

    .line 221
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 223
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v6

    .line 224
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 225
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    .line 229
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v6

    .line 230
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 232
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 234
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    .line 238
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v3

    .line 244
    :goto_4
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 246
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    :cond_b
    move-object/from16 v18, v2

    move-object/from16 v17, v4

    move-object/from16 v19, v17

    move-object/from16 v20, v5

    move-object v8, v6

    move-object v5, v7

    move-object v6, v1

    move-object v7, v3

    goto/16 :goto_9

    :cond_c
    move-object v6, v1

    move-object/from16 v18, v2

    move-object v7, v4

    move-object v8, v7

    move-object/from16 v17, v8

    move-object/from16 v19, v17

    move-object/from16 v20, v5

    move-object/from16 v5, v19

    goto/16 :goto_9

    :cond_d
    if-nez v2, :cond_14

    if-nez v3, :cond_14

    if-eqz v15, :cond_10

    .line 254
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 255
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_5

    :cond_e
    move-object v2, v4

    .line 257
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 258
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v5

    .line 261
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 262
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    :cond_f
    move-object v6, v1

    move-object v8, v2

    move-object/from16 v17, v4

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object v7, v5

    move-object/from16 v18, v12

    goto :goto_8

    :cond_10
    if-eqz v16, :cond_12

    .line 267
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 268
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_6

    :cond_11
    move-object v2, v4

    .line 271
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_7

    :cond_12
    move-object v2, v4

    move-object v3, v2

    move-object v5, v3

    :goto_7
    if-eqz v16, :cond_13

    .line 275
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 276
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    :cond_13
    move-object v6, v1

    move-object v8, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object v7, v5

    :goto_8
    move-object v5, v3

    goto :goto_9

    :cond_14
    move-object v6, v1

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    :goto_9
    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x32

    const/16 v21, 0x131

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v1, p0

    move-object/from16 v24, v5

    move/from16 v5, v21

    move-object/from16 v25, v7

    move/from16 v7, v22

    move-object/from16 v21, v11

    move-object v11, v8

    move/from16 v8, v23

    .line 284
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x10f

    const/16 v5, 0x131

    if-eqz v17, :cond_15

    move-object/from16 v6, v17

    goto :goto_a

    :cond_15
    move-object v6, v12

    :goto_a
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 285
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xd

    const/4 v8, 0x0

    if-le v1, v2, :cond_16

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/16 v5, 0x1be

    const/16 v6, 0x131

    .line 289
    invoke-virtual {v13, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v13

    const/4 v13, 0x0

    move/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    goto :goto_b

    :cond_16
    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x1be

    const/16 v5, 0x131

    const/4 v7, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v6, v13

    const/4 v13, 0x0

    move/from16 v8, v17

    .line 291
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    :goto_b
    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x273

    const/16 v5, 0x131

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v6, v14

    .line 295
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0xbc

    const/16 v5, 0x14f

    const-string v6, "ANTERIOR"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 298
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0xcd

    const/16 v5, 0x170

    if-eqz v18, :cond_17

    move-object/from16 v6, v18

    goto :goto_c

    :cond_17
    move-object v6, v12

    :goto_c
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 299
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x14b

    const/16 v5, 0x14f

    const-string v6, "ATUAL"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 305
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x15a

    const/16 v5, 0x170

    if-eqz v11, :cond_18

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_d

    :cond_18
    move-object v6, v12

    :goto_d
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    .line 311
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    if-eq v1, v2, :cond_19

    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoEsgoto()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    if-ne v1, v2, :cond_1c

    :cond_19
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 312
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 314
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "/"

    if-ne v1, v2, :cond_1a

    .line 315
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, v24

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_e
    move-object v11, v1

    goto :goto_f

    :cond_1a
    move-object/from16 v11, v24

    .line 317
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoEsgoto()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    if-ne v1, v2, :cond_1b

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_1b
    :goto_f
    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x19e

    const/16 v5, 0x14f

    const-string v6, "CONSUMO/RATEIO (m3)"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 322
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x1ff

    const/16 v5, 0x170

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v6, v11

    .line 323
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    goto :goto_10

    :cond_1c
    move-object/from16 v11, v24

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x19e

    const/16 v5, 0x14f

    const-string v6, "CONSUMO (m3)"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 326
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x1ff

    const/16 v5, 0x170

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v6, v11

    .line 327
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    :goto_10
    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x296

    const/16 v5, 0x14f

    const-string v6, "NUM DE DIAS"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 330
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2d6

    const/16 v5, 0x170

    const-string v11, "0"

    move-object/from16 v8, v25

    if-eqz v8, :cond_1d

    .line 331
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_11

    :cond_1d
    move-object v6, v11

    :goto_11
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x29

    const/16 v5, 0x172

    const-string v6, "LEITURA FAT."

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 334
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x29

    const/16 v5, 0x18d

    const-string v6, "LEITURA INF."

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 335
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x29

    const/16 v5, 0x1a8

    const-string v6, "DT. LEITURA"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 337
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0xb7

    const/16 v5, 0x1a9

    if-eqz v19, :cond_1e

    move-object/from16 v6, v19

    goto :goto_12

    :cond_1e
    move-object v6, v12

    :goto_12
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 338
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x142

    const/16 v5, 0x1a8

    if-eqz v20, :cond_1f

    move-object/from16 v6, v20

    goto :goto_13

    :cond_1f
    move-object v6, v12

    :goto_13
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 339
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x37

    const/16 v5, 0x1d2

    const-string v6, "ULTIMOS CONSUMOS"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 343
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    .line 345
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 346
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoAnterioresPorImovelId(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v15, "-"

    if-eqz v14, :cond_22

    const/4 v11, 0x0

    const/16 v16, 0x0

    .line 352
    :goto_14
    :try_start_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_21

    .line 354
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x36

    const/16 v5, 0x1ed

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnoMesReferencia()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    mul-int/lit8 v18, v11, 0x1a

    move-object/from16 v1, p0

    move/from16 v8, v18

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnormalidadeLeitura()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnormalidadeLeitura()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    .line 361
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnormalidadeConsumo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_15
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x98

    const/16 v5, 0x1ed

    .line 364
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getConsumo()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v8, v18

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {v17 .. v17}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getConsumo()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int v16, v16, v1

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_14

    .line 368
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int v2, v16, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    :cond_22
    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2f

    const/16 v5, 0x28a

    const-string v6, "MEDIA"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 371
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0xaf

    const/16 v5, 0x28a

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v6, v11

    .line 372
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    .line 379
    new-instance v1, Lcom/br/ipad/isc/bean/QualidadeAgua;

    invoke-direct {v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;-><init>()V

    .line 381
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 382
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdLocalidade()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdSetorComercial()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->buscarQualidadeAguaPorLocalidadeSetorComercial(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/QualidadeAgua;

    move-result-object v1

    if-nez v1, :cond_23

    .line 385
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdLocalidade()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarQualidadeAguaPorLocalidade(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/QualidadeAgua;

    move-result-object v1

    :cond_23
    if-nez v1, :cond_24

    .line 390
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarQualidadeAguaSemLocalidade()Lcom/br/ipad/isc/bean/QualidadeAgua;

    move-result-object v1

    :cond_24
    move-object v11, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x168

    const/16 v5, 0x1e5

    const-string v6, "Qualidade de Agua Distribuida ao Consumidor"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 394
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x12c

    const/16 v5, 0x1fe

    const-string v6, "Informacoes das Amostras Realizadas na Rede de Distribuicao"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 395
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x190

    const/16 v5, 0x20d

    const-string v6, "DECRETO FEDERAL N.\u00ba 5440 / 2005 G.M"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 396
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x12c

    const/16 v5, 0x226

    const-string v6, "AMOSTRAS"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 398
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x11d

    const/16 v5, 0x24e

    const-string v6, "EXIGIDAS"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 399
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x11d

    const/16 v5, 0x26c

    const-string v6, "ANALISADAS"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 400
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x11d

    const/16 v5, 0x28a

    const-string v6, "CONFORMES"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 401
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    if-eqz v11, :cond_34

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x19a

    const/16 v5, 0x226

    const-string v6, "CLORO"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 473
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1a4

    const/16 v5, 0x24e

    .line 474
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCloroExigidas()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCloroExigidas()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_16

    :cond_25
    move-object v6, v12

    :goto_16
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1a4

    const/16 v5, 0x26c

    .line 475
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCloroAnalisadas()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCloroAnalisadas()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_17

    :cond_26
    move-object v6, v12

    :goto_17
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1a4

    const/16 v5, 0x28a

    .line 476
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCloroConforme()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCloroConforme()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_18

    :cond_27
    move-object v6, v12

    :goto_18
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1e5

    const/16 v5, 0x226

    const-string v6, "TURBIDEZ"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 479
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1f9

    const/16 v5, 0x24e

    .line 480
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeTurbidezExigidas()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeTurbidezExigidas()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_19

    :cond_28
    move-object v6, v12

    :goto_19
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1f9

    const/16 v5, 0x26c

    .line 481
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeTurbidezAnalisadas()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeTurbidezAnalisadas()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_1a

    :cond_29
    move-object v6, v12

    :goto_1a
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1f9

    const/16 v5, 0x28a

    .line 482
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeTurbidezConforme()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeTurbidezConforme()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_1b

    :cond_2a
    move-object v6, v12

    :goto_1b
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x24e

    const/16 v5, 0x226

    const-string v6, "COR"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 485
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x24e

    const/16 v5, 0x24e

    .line 486
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCorExigidas()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCorExigidas()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_1c

    :cond_2b
    move-object v6, v12

    :goto_1c
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x24e

    const/16 v5, 0x26c

    .line 487
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCorAnalisadas()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCorAnalisadas()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_1d

    :cond_2c
    move-object v6, v12

    :goto_1d
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x24e

    const/16 v5, 0x28a

    .line 488
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCorConforme()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCorConforme()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_1e

    :cond_2d
    move-object v6, v12

    :goto_1e
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x28a

    const/16 v5, 0x226

    const-string v6, "C.TOTAIS"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 491
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x299

    const/16 v5, 0x24e

    .line 492
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTotaisExigidas()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTotaisExigidas()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_1f

    :cond_2e
    move-object v6, v12

    :goto_1f
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x299

    const/16 v5, 0x26c

    .line 493
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTotaisAnalisadas()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTotaisAnalisadas()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_20

    :cond_2f
    move-object v6, v12

    :goto_20
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x299

    const/16 v5, 0x28a

    .line 494
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTotaisConforme()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTotaisConforme()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_21

    :cond_30
    move-object v6, v12

    :goto_21
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x2da

    const/16 v5, 0x226

    const-string v6, "E.COLI"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 497
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x2e4

    const/16 v5, 0x24e

    .line 498
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTermoTolerantesExigidas()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTermoTolerantesExigidas()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_22

    :cond_31
    move-object v6, v12

    :goto_22
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x2e4

    const/16 v5, 0x26c

    .line 499
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTermoTolerantesAnalisadas()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTermoTolerantesAnalisadas()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_23

    :cond_32
    move-object v6, v12

    :goto_23
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x2e4

    const/16 v5, 0x28a

    .line 500
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTermoTolerantesConforme()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTermoTolerantesConforme()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_24

    :cond_33
    move-object v6, v12

    :goto_24
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    :cond_34
    const/4 v2, 0x7

    const/4 v3, 0x0

    .line 503
    iget v4, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->xMargemDireita:I

    const/16 v5, 0x2ad

    const-string v6, "DESCRICAO"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x23b

    const/16 v5, 0x2ad

    const-string v6, "CONSUMO"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 504
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2af

    const/16 v5, 0x2ad

    const-string v6, "TOTAL(R$)"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 505
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/16 v1, 0x2d0

    .line 509
    invoke-direct {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->gerarLancamentoAgua(I)I

    move-result v1

    .line 510
    invoke-direct {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->gerarLinhasTarifaPoco(I)I

    move-result v1

    .line 511
    invoke-direct {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->gerarLinhasDebitosCobrados(I)I

    move-result v1

    .line 512
    invoke-direct {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->gerarLinhasCreditosRealizados(I)I

    move-result v1

    .line 513
    invoke-direct {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->gerarLinhasImpostosRetidos(I)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x25

    const/16 v5, 0x4c8

    const-string v6, "VENCIMENTO:"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 515
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/16 v4, 0xa0

    const/16 v5, 0x4c8

    .line 516
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataVencimento()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    .line 518
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorConta(Ljava/lang/Integer;)D

    move-result-wide v24

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0x226

    const/16 v5, 0x4c8

    .line 520
    invoke-static/range {v24 .. v25}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 519
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 520
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    .line 523
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2f

    const/16 v5, 0x500

    .line 525
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 526
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade1()Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x2d

    if-eqz v1, :cond_35

    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v11, :cond_35

    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 527
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    :cond_35
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 528
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade1()Ljava/lang/String;

    move-result-object v1

    :goto_25
    move-object v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 525
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 528
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2f

    const/16 v5, 0x51e

    .line 530
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 531
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v11, :cond_36

    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 532
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    :cond_36
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 533
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade2()Ljava/lang/String;

    move-result-object v1

    :goto_26
    move-object v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 530
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 533
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 530
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2f

    const/16 v5, 0x53c

    .line 535
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 536
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade3()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v11, :cond_37

    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 537
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    :cond_37
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 538
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade3()Ljava/lang/String;

    move-result-object v1

    :goto_27
    move-object v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 535
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 538
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 535
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2f

    const/16 v5, 0x55a

    const-string v6, "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 540
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2f

    const/16 v5, 0x578

    const-string v6, "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 541
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    goto/16 :goto_28

    :cond_38
    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2f

    const/16 v5, 0x500

    .line 544
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta1()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2f

    const/16 v5, 0x51e

    .line 545
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta2()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2f

    const/16 v5, 0x53c

    .line 546
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta3()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2f

    const/16 v5, 0x55a

    .line 547
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta4()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2f

    const/16 v5, 0x578

    .line 548
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta5()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    :goto_28
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x140

    const/16 v5, 0x5b4

    const-string v6, "MATRICULA"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 552
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1a7

    const/16 v5, 0x5b4

    const-string v6, "REFERENCIA"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 553
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x21a

    const/16 v5, 0x5b4

    const-string v6, "VENCIMENTO"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 554
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x2a2

    const/16 v5, 0x5b4

    const-string v6, "TOTAL A PAGAR"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 555
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x140

    const/16 v5, 0x5dc

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1a7

    const/16 v5, 0x5dc

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x21a

    const/16 v5, 0x5dc

    .line 558
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataVencimento()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x2a2

    const/16 v5, 0x5dc

    .line 559
    invoke-static/range {v24 .. v25}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    .line 561
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoAgencia()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3a

    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoAgencia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_29

    :cond_39
    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0xb6

    const/16 v5, 0x636

    const-string v6, "D\u00c9BITO AUTOM\u00c1TICO"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 591
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    goto/16 :goto_2a

    .line 564
    :cond_3a
    :goto_29
    invoke-static {}, Lcom/br/ipad/isc/impressao/CodigoDeBarras;->getInstancia()Lcom/br/ipad/isc/impressao/CodigoDeBarras;

    move-result-object v22

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 566
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 567
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAnoSemBarra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 568
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDigitoVerificadorConta()Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    .line 564
    invoke-virtual/range {v22 .. v35}, Lcom/br/ipad/isc/impressao/CodigoDeBarras;->obterRepresentacaoNumericaCodigoBarra(Ljava/lang/Integer;DLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0xb

    .line 571
    invoke-virtual {v11, v13, v12}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0xc

    .line 573
    invoke-virtual {v11, v12, v14}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x17

    .line 574
    invoke-virtual {v11, v14, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x18

    .line 575
    invoke-virtual {v11, v8, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x23

    .line 576
    invoke-virtual {v11, v7, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x24

    .line 577
    invoke-virtual {v11, v6, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x2f

    .line 578
    invoke-virtual {v11, v5, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    .line 579
    invoke-virtual {v11, v10, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/16 v4, 0x42

    const/16 v16, 0x60c

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, p0

    const/16 v10, 0x24

    move/from16 v5, v16

    const/16 v10, 0x23

    move-object v6, v15

    const/16 v15, 0x18

    move/from16 v7, v17

    const/16 v10, 0x17

    move/from16 v8, v18

    .line 581
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13, v12}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v11, v14, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    .line 585
    invoke-virtual {v11, v15, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    const/16 v3, 0x24

    .line 586
    invoke-virtual {v11, v3, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "B I2OF5 1 2 90 35 1571 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    :goto_2a
    const-string v1, "T90 0 2 808 1414 Via do Cliente\n"

    .line 594
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const-string v1, "T90 0 2 808 1665 Via da CAER\n"

    .line 595
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const-string v1, "FORM\nPRINT "

    .line 596
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2b

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 599
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 600
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISC"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ERRO na gera\u00e7\u00e3o da conta."

    .line 601
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_2b
    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->buffer:Ljava/lang/StringBuilder;

    return-object v1
.end method

.method public imprimirContaComunicado()Ljava/lang/StringBuilder;
    .locals 12

    const-string v0, "\n"

    const-string v9, ""

    .line 1125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->buffer:Ljava/lang/StringBuilder;

    .line 1130
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getContrasteConta()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "! 0 816 0 1720 1 CONTRAST "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getContrasteConta()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "! 0 816 0 1720 1 \n"

    .line 1133
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    .line 1138
    :goto_0
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->buffer:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "T90 0 1 814 785 IMPRESSO EM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T 7 1 464 66 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    .line 1149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T 7 1 613 66 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->retornaDescricaoAnoMes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x34

    const/16 v5, 0xa4

    .line 1154
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getNomeUsuario()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1b2

    const/16 v5, 0xa4

    .line 1155
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getEndereco()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x28

    const/16 v8, 0x1b

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->dividirLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2d

    const/16 v5, 0xfa

    .line 1162
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->formatarInscricao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x13b

    const/16 v5, 0xfa

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoRota()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x19f

    const/16 v5, 0xfa

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSequencialRota()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    .line 1169
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->gerarCategoriaSubcategoria(Ljava/lang/Integer;)V

    const-string v0, "N\u00c3O MEDIDO"

    const/4 v1, 0x0

    .line 1177
    iget-object v2, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoAgua(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v10

    .line 1178
    iget-object v2, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigEsgoto()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoEsgoto(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v11

    .line 1180
    iget-object v2, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 1181
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v2

    .line 1183
    iget-object v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v4, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 1184
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 1187
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v0

    .line 1188
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataInstalacaoHidrometro()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 1190
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v0

    .line 1191
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataInstalacaoHidrometro()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    move-object v6, v0

    move-object v0, v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x32

    const/16 v5, 0x131

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 1198
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x10f

    const/16 v5, 0x131

    if-eqz v0, :cond_3

    move-object v6, v0

    goto :goto_2

    :cond_3
    move-object v6, v9

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 1199
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v9, 0x0

    const/16 v1, 0xd

    if-le v0, v1, :cond_4

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x1be

    const/16 v5, 0x131

    .line 1206
    invoke-virtual {v10, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x1be

    const/16 v5, 0x131

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v6, v10

    .line 1208
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    :goto_3
    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x273

    const/16 v5, 0x131

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v6, v11

    .line 1215
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getContaComunicado()Lcom/br/ipad/isc/bean/ContaComunicado;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getContaComunicado()Lcom/br/ipad/isc/bean/ContaComunicado;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ContaComunicado;->getId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1222
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 1223
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getContaComunicado()Lcom/br/ipad/isc/bean/ContaComunicado;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaComunicado;->getId()Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/br/ipad/isc/bean/ContaComunicado;

    invoke-direct {v2}, Lcom/br/ipad/isc/bean/ContaComunicado;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ContaComunicado;

    .line 1224
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ContaComunicado;->getDescricao()Ljava/lang/String;

    move-result-object v0

    .line 1226
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->alinharTextoAhEsquerda(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x154

    const/16 v9, 0x154

    const/4 v10, 0x0

    .line 1228
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_5

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x30

    .line 1229
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v5, v9

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x17

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    const-string v0, "FORM\nPRINT "

    .line 1234
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->appendTexto(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 1236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1238
    :goto_5
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaCaer;->buffer:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public verificarInicioLinha(Ljava/lang/String;)Z
    .locals 1

    .line 1352
    sget-object v0, Lcom/br/ipad/isc/bean/ContaComunicado;->INICIO_LINHA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
