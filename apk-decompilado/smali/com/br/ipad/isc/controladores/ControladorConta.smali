.class public Lcom/br/ipad/isc/controladores/ControladorConta;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorConta.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorConta;
.implements Landroid/location/LocationListener;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorConta;


# instance fields
.field protected locationManager:Landroid/location/LocationManager;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method private calcularConsumo(Lcom/br/ipad/isc/bean/ImovelConta;ILcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/ConsumoHistorico;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v0, p3

    const/4 v1, 0x0

    .line 708
    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade1(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade2(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade3(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v2

    .line 713
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v9

    const/4 v2, 0x1

    .line 806
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v9, :cond_0

    .line 720
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getConsumoMedio()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_0
    if-ne v8, v2, :cond_1

    .line 724
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioLigacaoAgua()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    .line 726
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioEsgoto()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 731
    :goto_0
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->dataAtual()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setDataLeitura(Ljava/util/Date;)V

    .line 734
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v5

    .line 735
    invoke-virtual {v9, v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamento(Ljava/lang/Integer;)V

    .line 736
    invoke-virtual {v9, v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamentoHelper(Ljava/lang/Integer;)V

    .line 739
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_2

    .line 740
    new-instance v10, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v10}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    .line 741
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setId(Ljava/lang/Integer;)V

    .line 742
    invoke-virtual {v0, v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setAnormalidadeLeituraFaturada(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)V

    .line 753
    :cond_2
    invoke-virtual {v6, v9}, Lcom/br/ipad/isc/controladores/ControladorConta;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x3

    if-eqz v5, :cond_19

    .line 760
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v12, v11, :cond_8

    .line 766
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoMedidoMes(Ljava/lang/Integer;)V

    .line 767
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 768
    invoke-virtual {v0, v5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    .line 772
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getCodigoSituacaoLeituraAnterior()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 773
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getCodigoSituacaoLeituraAnterior()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    if-eq v10, v2, :cond_4

    if-ne v10, v15, :cond_5

    .line 777
    :cond_4
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorInformada()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 778
    invoke-virtual {v0, v3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto :goto_2

    .line 780
    :cond_5
    invoke-direct {v6, v7, v0, v9}, Lcom/br/ipad/isc/controladores/ControladorConta;->verificarUsoCalculoMedia(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v0

    .line 783
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraLimiteInferior()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lt v10, v11, :cond_7

    .line 784
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraLimiteSuperior()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v10, v11, :cond_6

    goto :goto_3

    .line 788
    :cond_6
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    goto/16 :goto_9

    .line 785
    :cond_7
    :goto_3
    new-instance v10, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    const/16 v11, 0xd

    invoke-direct {v10, v11}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 786
    invoke-virtual {v0, v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    goto/16 :goto_9

    .line 793
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v11, v10, :cond_15

    .line 799
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoMedidoMes(Ljava/lang/Integer;)V

    .line 800
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 801
    invoke-virtual {v0, v5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    .line 803
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getCodigoSituacaoLeituraAnterior()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v2, :cond_9

    if-ne v10, v15, :cond_a

    .line 805
    :cond_9
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorInformada()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 806
    invoke-virtual {v0, v3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto :goto_4

    .line 812
    :cond_a
    invoke-direct {v6, v7, v0, v9}, Lcom/br/ipad/isc/controladores/ControladorConta;->verificarUsoCalculoMedia(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v0

    .line 815
    :goto_4
    new-instance v10, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {v10}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    const/16 v11, 0x1f

    .line 816
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setId(Ljava/lang/Integer;)V

    .line 817
    invoke-virtual {v0, v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    .line 820
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v2, :cond_1a

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 821
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v10, :cond_1a

    .line 823
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndicadorAbastecimentoAgua()Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v10, v11}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 824
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndicadorImovelSazonal()Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v10, v11}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    const/16 v10, 0x32

    if-ne v8, v2, :cond_12

    .line 838
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v11

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v11

    const-string v12, "6"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 839
    new-instance v11, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v11}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    .line 841
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinEsgoto()Ljava/lang/Integer;

    move-result-object v12

    sget-object v14, Lcom/br/ipad/isc/util/ConstantesSistema;->VOLUME_MINIMO_ESGOTO:Ljava/lang/Integer;

    if-eq v12, v14, :cond_c

    .line 842
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinEsgoto()Ljava/lang/Integer;

    move-result-object v12

    if-nez v12, :cond_d

    .line 843
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getTipoPoco()Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_e

    .line 844
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getTipoPoco()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v12, :cond_d

    goto :goto_5

    .line 855
    :cond_d
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setId(Ljava/lang/Integer;)V

    .line 856
    invoke-virtual {v0, v11}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setAnormalidadeLeituraFaturada(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)V

    .line 857
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setAnormalidadeFaturadaCaern(Ljava/lang/Integer;)V

    goto/16 :goto_9

    .line 845
    :cond_e
    :goto_5
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidadeFaturadaCaern()Ljava/lang/Integer;

    move-result-object v12

    sget-object v14, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v12, v14}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 846
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setId(Ljava/lang/Integer;)V

    .line 847
    invoke-virtual {v0, v11}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setAnormalidadeLeituraFaturada(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)V

    .line 848
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setAnormalidadeFaturadaCaern(Ljava/lang/Integer;)V

    goto/16 :goto_9

    .line 850
    :cond_f
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setId(Ljava/lang/Integer;)V

    .line 851
    invoke-virtual {v0, v11}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setAnormalidadeLeituraFaturada(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)V

    .line 852
    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setAnormalidadeFaturadaCaern(Ljava/lang/Integer;)V

    goto/16 :goto_9

    .line 861
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinEsgoto()Ljava/lang/Integer;

    move-result-object v10

    if-nez v10, :cond_11

    const/4 v10, 0x1

    goto :goto_6

    :cond_11
    const/4 v10, 0x0

    :goto_6
    if-eqz v10, :cond_1a

    .line 868
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getTipoPoco()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getTipoPoco()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto/16 :goto_9

    :cond_12
    if-ne v8, v13, :cond_1a

    .line 901
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v11, v12}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 902
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v3}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v11

    if-eqz v11, :cond_13

    if-eqz p4, :cond_13

    .line 903
    invoke-virtual/range {p4 .. p4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v11

    if-eqz v11, :cond_13

    invoke-virtual/range {p4 .. p4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v11

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 904
    invoke-virtual/range {p4 .. p4}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v11

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    goto :goto_7

    .line 912
    :cond_13
    new-instance v11, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v11}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    .line 913
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setId(Ljava/lang/Integer;)V

    .line 914
    invoke-virtual {v0, v11}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setAnormalidadeLeituraFaturada(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)V

    goto/16 :goto_9

    .line 906
    :cond_14
    :goto_7
    new-instance v11, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v11}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    .line 907
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setId(Ljava/lang/Integer;)V

    .line 909
    invoke-virtual {v0, v11}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setAnormalidadeLeituraFaturada(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)V

    goto/16 :goto_9

    .line 947
    :cond_15
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoMedidoMes(Ljava/lang/Integer;)V

    .line 948
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 949
    invoke-virtual {v0, v5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    .line 950
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 951
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getCodigoSituacaoLeituraAnterior()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_16

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getCodigoSituacaoLeituraAnterior()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v15, :cond_17

    .line 952
    :cond_16
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getCodigoSituacaoLeituraAnterior()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_18

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getCodigoSituacaoLeituraAnterior()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v2, :cond_18

    .line 953
    :cond_17
    new-instance v10, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    const/16 v11, 0x8

    invoke-direct {v10, v11}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 954
    invoke-virtual {v0, v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    goto :goto_8

    .line 956
    :cond_18
    new-instance v10, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    const/4 v11, 0x7

    invoke-direct {v10, v11}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 957
    invoke-virtual {v0, v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    .line 962
    :goto_8
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getCodigoSituacaoLeituraAnterior()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v2, :cond_1a

    if-eq v10, v15, :cond_1a

    .line 969
    invoke-direct {v6, v7, v0, v9}, Lcom/br/ipad/isc/controladores/ControladorConta;->verificarUsoCalculoMedia(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v0

    goto :goto_9

    :cond_19
    if-nez v5, :cond_1a

    .line 975
    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v11

    if-nez v11, :cond_1a

    .line 978
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoMedidoMes(Ljava/lang/Integer;)V

    .line 979
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 980
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    .line 981
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 982
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getIndcParalizacaoLeitura()Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v10, v11}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 983
    new-instance v10, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    const/16 v11, 0xa

    invoke-direct {v10, v11}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 984
    invoke-virtual {v0, v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    :cond_1a
    :goto_9
    move-object v10, v0

    .line 991
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v0

    const/4 v12, 0x5

    if-eqz v0, :cond_33

    .line 994
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v0

    .line 995
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v14

    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v14

    new-instance v11, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v11}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    .line 994
    invoke-virtual {v0, v14, v11}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    if-nez v5, :cond_23

    .line 1001
    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoMedidoMes(Ljava/lang/Integer;)V

    .line 1003
    new-instance v1, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    const/16 v3, 0x11

    invoke-direct {v1, v3}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 1004
    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    .line 1006
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataInstalacaoHidrometro()Ljava/util/Date;

    move-result-object v1

    .line 1008
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/br/ipad/isc/util/Util;->compararData(Ljava/util/Date;Ljava/util/Date;)I

    move-result v3

    if-ltz v3, :cond_1c

    .line 1009
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/br/ipad/isc/util/Util;->compararData(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    if-gtz v1, :cond_1c

    .line 1013
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraHidrometoInstalada()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 1014
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraHidrometoInstalada()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_a

    :cond_1b
    const/4 v14, 0x0

    .line 1018
    :goto_a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAnteriorFaturamento(Ljava/lang/Integer;)V

    .line 1019
    new-instance v1, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    const/16 v3, 0x9

    invoke-direct {v1, v3}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 1020
    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    .line 1025
    :cond_1c
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarSemLeitura()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 1026
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarSemLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1d

    .line 1027
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 1028
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto :goto_b

    .line 1031
    :cond_1d
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarSemLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1e

    .line 1032
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    const/16 v1, 0x8

    .line 1033
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto :goto_b

    .line 1036
    :cond_1e
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarSemLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v13, :cond_1f

    .line 1037
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 1038
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 1044
    :cond_1f
    :goto_b
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdLeituraAnormLeituraSemLeitura()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 1045
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdLeituraAnormLeituraSemLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_20

    .line 1046
    invoke-virtual {v6, v9}, Lcom/br/ipad/isc/controladores/ControladorConta;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    goto :goto_c

    .line 1049
    :cond_20
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdLeituraAnormLeituraSemLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_21

    .line 1050
    invoke-virtual {v6, v9}, Lcom/br/ipad/isc/controladores/ControladorConta;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    goto :goto_c

    .line 1053
    :cond_21
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdLeituraAnormLeituraSemLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v13, :cond_22

    .line 1054
    invoke-virtual {v6, v9}, Lcom/br/ipad/isc/controladores/ControladorConta;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v1

    .line 1055
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v1, v3

    .line 1054
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    .line 1064
    :cond_22
    :goto_c
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_33

    .line 1065
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getNumeroFatorSemLeitura()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 1067
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v3, v1

    .line 1069
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getNumeroFatorSemLeitura()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-int v0, v0

    .line 1072
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto/16 :goto_f

    :cond_23
    if-eqz v0, :cond_32

    .line 1080
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarComLeitura()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 1081
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarComLeitura()Ljava/lang/Integer;

    move-result-object v1

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v11, 0x5c

    if-eqz v1, :cond_25

    .line 1082
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 1083
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v11, v1, :cond_2e

    .line 1084
    :cond_24
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto/16 :goto_d

    .line 1088
    :cond_25
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarComLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x0

    .line 1089
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 1090
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v11, v1, :cond_2e

    :cond_26
    const/16 v1, 0x8

    .line 1091
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto/16 :goto_d

    .line 1095
    :cond_27
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarComLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1096
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 1097
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v11, v1, :cond_2e

    .line 1098
    :cond_28
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto/16 :goto_d

    .line 1103
    :cond_29
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarComLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_d

    .line 1107
    :cond_2a
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarComLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1108
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v4, v1, :cond_2e

    .line 1109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 1110
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v11, v1, :cond_2e

    .line 1111
    :cond_2b
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto :goto_d

    .line 1116
    :cond_2c
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarComLeitura()Ljava/lang/Integer;

    move-result-object v1

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1117
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v4, v1, :cond_2e

    .line 1118
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 1119
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2d

    const/16 v1, 0xc

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v1, v11, :cond_2e

    .line 1120
    :cond_2d
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 1126
    :cond_2e
    :goto_d
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdLeituraAnormLeituraComLeitura()Ljava/lang/Integer;

    move-result-object v1

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1127
    invoke-virtual {v6, v9}, Lcom/br/ipad/isc/controladores/ControladorConta;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    goto :goto_e

    .line 1130
    :cond_2f
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdLeituraAnormLeituraComLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1131
    invoke-virtual {v6, v9}, Lcom/br/ipad/isc/controladores/ControladorConta;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    goto :goto_e

    .line 1134
    :cond_30
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdLeituraAnormLeituraComLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1135
    invoke-virtual {v6, v9}, Lcom/br/ipad/isc/controladores/ControladorConta;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v1

    .line 1136
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v1, v3

    .line 1135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    goto :goto_e

    .line 1139
    :cond_31
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdLeituraAnormLeituraComLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 1149
    :cond_32
    :goto_e
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_33

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getNumeroFatorComLeitura()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 1151
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v3, v1

    .line 1153
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getNumeroFatorComLeitura()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-int v0, v0

    .line 1156
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 1165
    :cond_33
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1166
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v0

    if-ne v8, v2, :cond_34

    .line 1170
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndcValidaAgua()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndcValidaAgua()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1171
    invoke-direct {v6, v7, v10, v8}, Lcom/br/ipad/isc/controladores/ControladorConta;->dadosFaturamentoEspecialMedido(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;I)V

    goto :goto_10

    :cond_34
    if-ne v8, v13, :cond_35

    .line 1176
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndcValidaEsgoto()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndcValidaEsgoto()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1177
    invoke-direct {v6, v7, v10, v8}, Lcom/br/ipad/isc/controladores/ControladorConta;->dadosFaturamentoEspecialMedido(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;I)V

    .line 1185
    :cond_35
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1186
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndicadorDesconsiderarEstouroAltoConsumo()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1187
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndicadorDesconsiderarEstouroAltoConsumo()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v13, :cond_39

    .line 1191
    :cond_36
    invoke-direct {v6, v7, v9}, Lcom/br/ipad/isc/controladores/ControladorConta;->verificarNovaLigacao(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/HidrometroInstalado;)Z

    move-result v0

    if-ne v8, v2, :cond_37

    if-nez v0, :cond_39

    .line 1209
    :cond_37
    invoke-virtual {v6, v7, v8, v10, v9}, Lcom/br/ipad/isc/controladores/ControladorConta;->ehImovelCortadoComConsumo(Lcom/br/ipad/isc/bean/ImovelConta;ILcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1210
    invoke-virtual {v6, v7, v10, v9, v8}, Lcom/br/ipad/isc/controladores/ControladorConta;->verificarEstouroConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;I)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1212
    new-instance v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    .line 1213
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v1

    const/4 v2, 0x6

    .line 1214
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1213
    invoke-virtual {v1, v2, v0}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    .line 1216
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorRegraImovelCondominio()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 1217
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorRegraImovelCondominio()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1221
    :cond_38
    invoke-virtual {v6, v7, v10, v9, v8}, Lcom/br/ipad/isc/controladores/ControladorConta;->verificarAltoConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;I)V

    .line 1232
    :cond_39
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v12, :cond_3c

    .line 1234
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getTipoPoco()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getTipoPoco()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3c

    :cond_3a
    if-eqz v5, :cond_3c

    .line 1235
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v0

    if-nez v0, :cond_3c

    .line 1248
    new-instance v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    .line 1249
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v1

    const/4 v2, 0x4

    .line 1250
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1249
    invoke-virtual {v1, v2, v0}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    .line 1252
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorRegraImovelCondominio()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 1253
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorRegraImovelCondominio()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1254
    :cond_3b
    invoke-virtual {v6, v7, v10, v9, v8}, Lcom/br/ipad/isc/controladores/ControladorConta;->verificarBaixoConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;I)V

    .line 1263
    :cond_3c
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3d

    .line 1264
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v3, v9

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/controladores/ControladorConta;->recuperarDadosConsumoAnormalidadeAcao(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;ILcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    .line 1268
    :cond_3d
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorAjusteConsumo()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorAjusteConsumo()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1270
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v0

    invoke-virtual {v0, v7, v9, v8, v10}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->ajusteMensalConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/HidrometroInstalado;ILcom/br/ipad/isc/bean/ConsumoHistorico;)V

    :cond_3e
    if-eqz v9, :cond_3f

    .line 1277
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 1281
    :cond_3f
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    return-void
.end method

.method private calcularConsumoAguaASerRateado(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 1802
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v0

    .line 1803
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object p1

    .line 1806
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1807
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoLigacaoAguaTotal()I

    move-result p2

    sub-int/2addr v0, p2

    .line 1822
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1823
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getPercentToleranciaRateio()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    mul-int p1, p1, v1

    if-gt p2, p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private calcularConsumoEsgotoASerRateado(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 1834
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v0

    .line 1835
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object p1

    .line 1840
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1841
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoLigacaoEsgotoTotal()I

    move-result p2

    sub-int/2addr v0, p2

    .line 1856
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-double v1, p2

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double p1, p1

    .line 1857
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v3

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/SistemaParametros;->getPercentToleranciaRateio()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v3

    cmpg-double v3, v1, p1

    if-gtz v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private dadosFaturamentoEspecialMedido(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 2125
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v0

    .line 2127
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v1

    .line 2128
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2135
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getConsumoMedio()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_0
    if-ne p3, v2, :cond_1

    .line 2140
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioLigacaoAgua()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 2143
    :cond_1
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioEsgoto()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2147
    :goto_0
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/controladores/ControladorConta;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v4

    if-eqz v0, :cond_15

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x2

    const/16 v9, 0xa

    const/4 v10, 0x3

    if-eqz v1, :cond_7

    .line 2150
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v11

    if-nez v11, :cond_7

    .line 2152
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2153
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 2154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    const/16 p1, 0x9

    .line 2155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 2156
    :cond_2
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2157
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 2158
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 2159
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 2160
    :cond_3
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2161
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v8, :cond_4

    .line 2162
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 2163
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 2164
    :cond_4
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2165
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v6, :cond_6

    if-ne p3, v2, :cond_5

    .line 2170
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoAguaMedidoHistoricoFaturamento()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_15

    .line 2172
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 2173
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoAguaMedidoHistoricoFaturamento()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 2176
    :cond_5
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getVolumeEsgotoMedidoHistoricoFaturamento()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_15

    .line 2177
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 2178
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getVolumeEsgotoMedidoHistoricoFaturamento()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 2181
    :cond_6
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_15

    .line 2182
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v5, :cond_15

    .line 2184
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 2186
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_7
    if-eqz v1, :cond_15

    .line 2190
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 2192
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoComLeitura()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 2195
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoComLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_8

    .line 2198
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 2199
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 2203
    :cond_8
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoComLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 2205
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 2206
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 2208
    :cond_9
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoComLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v8, :cond_a

    .line 2211
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 2212
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 2216
    :cond_a
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoComLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v11, 0x5

    if-ne v1, v11, :cond_c

    .line 2219
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le v3, p1, :cond_b

    .line 2221
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 2223
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 2225
    :cond_b
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 2228
    :cond_c
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoComLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v7, :cond_e

    .line 2231
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge v3, p1, :cond_d

    .line 2233
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 2235
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto :goto_1

    .line 2237
    :cond_d
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_1

    .line 2248
    :cond_e
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoComLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v6, :cond_10

    if-ne p3, v2, :cond_f

    .line 2254
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoAguaMedidoHistoricoFaturamento()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_11

    .line 2255
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 2256
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoAguaMedidoHistoricoFaturamento()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_1

    .line 2260
    :cond_f
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getVolumeEsgotoMedidoHistoricoFaturamento()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_11

    .line 2261
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 2262
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getVolumeEsgotoMedidoHistoricoFaturamento()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_1

    .line 2265
    :cond_10
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoComLeitura()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v5, :cond_11

    .line 2268
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 2270
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 2278
    :cond_11
    :goto_1
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeLeituraComLeitura()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 2279
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeLeituraComLeitura()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_12

    add-int/2addr v4, v3

    .line 2281
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    goto :goto_2

    .line 2283
    :cond_12
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeLeituraComLeitura()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_13

    .line 2285
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    goto :goto_2

    .line 2287
    :cond_13
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeLeituraComLeitura()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v8, :cond_14

    .line 2289
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    goto :goto_2

    .line 2291
    :cond_14
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeLeituraComLeitura()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v10, :cond_15

    .line 2292
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    :cond_15
    :goto_2
    return-void
.end method

.method private dadosFaturamentoEspecialNaoMedido(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 2047
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v0

    .line 2048
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2055
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getConsumoMedio()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    if-ne p3, v1, :cond_1

    .line 2058
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioLigacaoAgua()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 2060
    :cond_1
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioEsgoto()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2064
    :goto_0
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2067
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2068
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    .line 2069
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    const/16 p1, 0x9

    .line 2070
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 2071
    :cond_2
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_3

    .line 2072
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 2073
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 2074
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 2075
    :cond_3
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2076
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 2077
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    const/4 p1, 0x3

    .line 2078
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto :goto_1

    .line 2079
    :cond_4
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2080
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_6

    if-ne p3, v1, :cond_5

    .line 2085
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoAguaNaoMedidoHistoricoFaturamento()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 2094
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 2095
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoAguaNaoMedidoHistoricoFaturamento()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_1

    .line 2099
    :cond_5
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getVolumeEsgotoNaoMedidoHistoricoFaturamento()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 2107
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 2108
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getVolumeEsgotoNaoMedidoHistoricoFaturamento()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_1

    .line 2112
    :cond_6
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIdAnormalidadeConsumoSemLeitura()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/16 v0, 0x8

    if-ne p3, v0, :cond_7

    const/4 p3, 0x6

    .line 2114
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 2116
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorConta;
    .locals 1

    .line 49
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorConta;->instance:Lcom/br/ipad/isc/controladores/ControladorConta;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorConta;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorConta;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorConta;->instance:Lcom/br/ipad/isc/controladores/ControladorConta;

    .line 52
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorConta;->instance:Lcom/br/ipad/isc/controladores/ControladorConta;

    return-object v0
.end method

.method private verificarNovaLigacao(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/HidrometroInstalado;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1870
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getMaxDiasNovaLigacao()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1872
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_5

    .line 1873
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataLigacaoRestabelecimento()Ljava/util/Date;

    move-result-object v3

    .line 1874
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataLigacaoAgua()Ljava/util/Date;

    move-result-object p1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 1878
    invoke-virtual {v3, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v5

    if-lez v5, :cond_0

    .line 1879
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v3, p1}, Lcom/br/ipad/isc/util/Util;->adicionarNumeroDiasDeUmaData(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1881
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p1, v3}, Lcom/br/ipad/isc/util/Util;->adicionarNumeroDiasDeUmaData(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v4

    :goto_0
    if-eqz p1, :cond_2

    .line 1884
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz p2, :cond_4

    .line 1889
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataInstalacaoHidrometro()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1892
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataInstalacaoHidrometro()Ljava/util/Date;

    move-result-object p1

    .line 1894
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-nez v3, :cond_3

    .line 1895
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p1, v2}, Lcom/br/ipad/isc/util/Util;->adicionarNumeroDiasDeUmaData(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v4

    :cond_3
    if-eqz v4, :cond_4

    .line 1898
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    if-lez p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private verificarUsoCalculoMedia(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;)Lcom/br/ipad/isc/bean/ConsumoHistorico;
    .locals 5

    .line 1303
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1307
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1308
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v2

    .line 1309
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndcValidaAgua()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndcValidaAgua()Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 1318
    :cond_0
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdPerfilTarifa()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1319
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoPerfilTarifa()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1320
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gt v0, p1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v0

    .line 1327
    :cond_2
    :goto_0
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorCalcularConsumoAcumulado()Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x6

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 1328
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1329
    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorInformada()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_3

    const/16 p1, 0xc

    .line 1330
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 1331
    new-instance p1, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {p1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    const/16 p3, 0x5c

    .line 1332
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setId(Ljava/lang/Integer;)V

    .line 1333
    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setAnormalidadeLeituraFaturada(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)V

    goto :goto_1

    .line 1335
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto :goto_1

    .line 1338
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    :goto_1
    return-object p2
.end method


# virtual methods
.method public atualizarResumoEfetuarRateio(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 2656
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v0

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->buscarIdsImoveisMicro(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2658
    new-instance v1, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;-><init>(Ljava/lang/Integer;)V

    .line 2660
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v2

    .line 2661
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v2

    .line 2663
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 2664
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v2

    .line 2665
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    .line 2664
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_9

    .line 2673
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v3

    .line 2674
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1, v4}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p1

    .line 2676
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2678
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v5

    new-instance v6, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v6}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    invoke-virtual {v5, v3, v6}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v3

    check-cast v3, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 2681
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v5

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2683
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v6

    .line 2684
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v6

    .line 2687
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v6, :cond_2

    .line 2692
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasAguaMedidas()I

    move-result v7

    add-int/2addr v7, v5

    .line 2691
    invoke-virtual {v1, v7}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->setQuantidadeEconomiasAguaMedidas(I)V

    goto :goto_2

    .line 2697
    :cond_2
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasAguaNaoMedidas()I

    move-result v7

    add-int/2addr v7, v5

    .line 2696
    invoke-virtual {v1, v7}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->setQuantidadeEconomiasAguaNaoMedidas(I)V

    .line 2703
    :cond_3
    :goto_2
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoEsgoto()Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_7

    if-eqz p1, :cond_5

    .line 2712
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 2713
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x4

    if-ne v7, v9, :cond_5

    if-eqz v6, :cond_4

    .line 2717
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasEsgotoMedidas()I

    move-result v6

    add-int/2addr v6, v5

    .line 2716
    invoke-virtual {v1, v6}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->setQuantidadeEconomiasEsgotoMedidas(I)V

    goto :goto_3

    .line 2722
    :cond_4
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasEsgotoNaoMedidas()I

    move-result v6

    add-int/2addr v6, v5

    .line 2721
    invoke-virtual {v1, v6}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->setQuantidadeEconomiasEsgotoNaoMedidas(I)V

    goto :goto_3

    .line 2726
    :cond_5
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v6

    .line 2727
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 2733
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasEsgotoMedidas()I

    move-result v6

    add-int/2addr v6, v5

    .line 2732
    invoke-virtual {v1, v6}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->setQuantidadeEconomiasEsgotoMedidas(I)V

    goto :goto_3

    .line 2738
    :cond_6
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasEsgotoNaoMedidas()I

    move-result v6

    add-int/2addr v6, v5

    .line 2737
    invoke-virtual {v1, v6}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->setQuantidadeEconomiasEsgotoNaoMedidas(I)V

    .line 2745
    :cond_7
    :goto_3
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoMinimoTotal()I

    move-result v5

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v5}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->setConsumoMinimoTotal(I)V

    .line 2747
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v5

    .line 2748
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 2756
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoLigacaoAguaTotal()I

    move-result v6

    .line 2757
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v6, v5

    .line 2755
    invoke-virtual {v1, v6}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->setConsumoLigacaoAguaTotal(I)V

    .line 2760
    :cond_8
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v5

    .line 2761
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2768
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoLigacaoEsgotoTotal()I

    move-result v5

    .line 2769
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesOriginal()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v5, v3

    .line 2767
    invoke-virtual {v1, v5}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->setConsumoLigacaoEsgotoTotal(I)V

    goto/16 :goto_1

    :cond_9
    if-lez v2, :cond_d

    .line 2776
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasAguaMedidas()I

    move-result p1

    if-lez p1, :cond_a

    .line 2778
    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->setQuantidadeEconomiasAguaMedidas(I)V

    .line 2780
    :cond_a
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasAguaNaoMedidas()I

    move-result p1

    if-lez p1, :cond_b

    .line 2782
    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->setQuantidadeEconomiasAguaNaoMedidas(I)V

    .line 2785
    :cond_b
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasEsgotoMedidas()I

    move-result p1

    if-lez p1, :cond_c

    .line 2787
    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->setQuantidadeEconomiasEsgotoMedidas(I)V

    .line 2790
    :cond_c
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasEsgotoNaoMedidas()I

    move-result p1

    if-lez p1, :cond_d

    .line 2792
    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->setQuantidadeEconomiasEsgotoNaoMedidas(I)V

    :cond_d
    return-object v1
.end method

.method public calcularConta(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    .line 66
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorArmazenarCoordenadas()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorArmazenarCoordenadas()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConta;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, v6, Lcom/br/ipad/isc/controladores/ControladorConta;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-string v1, "gps"

    move-object/from16 v5, p0

    .line 69
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 71
    iget-object v0, v6, Lcom/br/ipad/isc/controladores/ControladorConta;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setNumeroCoordenadaX(Ljava/math/BigDecimal;)V

    .line 74
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setNumeroCoordenadaY(Ljava/math/BigDecimal;)V

    .line 84
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v0

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v10

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v0

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v11

    const/4 v7, 0x0

    if-nez v10, :cond_1

    if-nez v11, :cond_1

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelCalculado()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return v7

    :cond_1
    const/4 v8, 0x5

    if-eqz v10, :cond_2

    .line 94
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_2

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    const/4 v9, 0x1

    .line 99
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v12, 0xc

    const/16 v5, 0x8

    const-string v4, ""

    const/4 v3, 0x0

    if-nez v0, :cond_3

    if-eqz v10, :cond_d

    .line 102
    :cond_3
    new-instance v0, Lcom/br/ipad/isc/bean/ConsumoHistorico;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;-><init>()V

    if-eqz v10, :cond_8

    .line 107
    invoke-direct {v6, v15, v14, v0, v3}, Lcom/br/ipad/isc/controladores/ControladorConta;->calcularConsumo(Lcom/br/ipad/isc/bean/ImovelConta;ILcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/ConsumoHistorico;)V

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 112
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 116
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 121
    :cond_4
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 123
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoFaturamentoLigAguaSit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_6

    .line 126
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;->getInstance()Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;->pesquisarLigacaoAguaSituacaoConsumoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;

    move-result-object v1

    .line 128
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_6

    .line 130
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    goto :goto_1

    .line 133
    :cond_5
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    :cond_6
    :goto_1
    if-eqz v10, :cond_7

    .line 153
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 154
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_7

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcCondominio()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 156
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcAreaComum()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcAreaComum()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 157
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    :cond_7
    move-object v3, v0

    goto/16 :goto_4

    .line 165
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_9

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    .line 169
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v0

    if-nez v0, :cond_a

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    .line 172
    :goto_2
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    goto :goto_3

    .line 174
    :cond_b
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v15, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    const/4 v0, 0x0

    .line 177
    :goto_3
    new-instance v1, Lcom/br/ipad/isc/bean/ConsumoHistorico;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndcValidaAgua()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndcValidaAgua()Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 183
    invoke-direct {v6, v15, v1, v14}, Lcom/br/ipad/isc/controladores/ControladorConta;->dadosFaturamentoEspecialNaoMedido(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;I)V

    :cond_c
    move-object v3, v1

    .line 192
    :cond_d
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v14, :cond_f

    if-eqz v3, :cond_f

    .line 199
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_f

    if-eqz v10, :cond_e

    .line 203
    invoke-virtual {v6, v10}, Lcom/br/ipad/isc/controladores/ControladorConta;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_5

    :cond_e
    const/16 v17, 0x0

    :goto_5
    if-eqz v9, :cond_f

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v0

    const/16 v18, 0x1

    move-object/from16 v1, p1

    move/from16 v19, v2

    move-object v2, v3

    move-object v12, v3

    move/from16 v3, v19

    move-object/from16 v21, v4

    move-object/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->ajustarConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;ILjava/lang/Integer;I)V

    goto :goto_6

    :cond_f
    move/from16 v19, v2

    move-object v12, v3

    move-object/from16 v21, v4

    :goto_6
    const/4 v5, 0x7

    if-eqz v12, :cond_11

    .line 213
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 214
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 215
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    if-eqz v10, :cond_11

    .line 217
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Lcom/br/ipad/isc/util/Util;->dataAtual()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/br/ipad/isc/util/Util;->obterQuantidadeDiasEntreDuasDatasPositivo(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setDiasConsumo(Ljava/lang/Integer;)V

    .line 223
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcConsumoReal()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v17, 0x0

    if-nez v0, :cond_12

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getLigacaoAguaSituacaoIndicadorLeituraReal()Ljava/lang/Short;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM_SHORT:Ljava/lang/Short;

    invoke-virtual {v0, v1}, Ljava/lang/Short;->compareTo(Ljava/lang/Short;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 227
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroDiasCorte()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroDiasCorte()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz v10, :cond_18

    .line 232
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataCorte()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 234
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataCorte()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/br/ipad/isc/util/Util;->obterQuantidadeDiasEntreDuasDatas(Ljava/util/Date;Ljava/util/Date;)D

    move-result-wide v0

    cmpl-double v2, v0, v17

    if-lez v2, :cond_14

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroDiasCorte()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_13

    .line 242
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorParalizarFaturamentoAgua(Ljava/lang/Integer;)V

    if-eqz v12, :cond_1b

    .line 245
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto/16 :goto_7

    .line 250
    :cond_13
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorParalizarFaturamentoAgua(Ljava/lang/Integer;)V

    goto/16 :goto_7

    .line 255
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcConsumoReal()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 256
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 257
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getLigacaoAguaSituacaoIndicadorLeituraReal()Ljava/lang/Short;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM_SHORT:Ljava/lang/Short;

    invoke-virtual {v0, v1}, Ljava/lang/Short;->compareTo(Ljava/lang/Short;)I

    move-result v0

    if-nez v0, :cond_17

    .line 258
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 259
    :cond_16
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_17

    .line 262
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorParalizarFaturamentoAgua(Ljava/lang/Integer;)V

    goto :goto_7

    .line 265
    :cond_17
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorParalizarFaturamentoAgua(Ljava/lang/Integer;)V

    if-eqz v12, :cond_1b

    .line 268
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_7

    .line 276
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataCorte()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataCorte()Ljava/util/Date;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/br/ipad/isc/util/Util;->obterQuantidadeDiasEntreDuasDatas(Ljava/util/Date;Ljava/util/Date;)D

    move-result-wide v0

    cmpl-double v2, v0, v17

    if-lez v2, :cond_1a

    .line 283
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroDiasCorte()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_19

    .line 285
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorParalizarFaturamentoAgua(Ljava/lang/Integer;)V

    if-eqz v12, :cond_1b

    .line 288
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_7

    .line 293
    :cond_19
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorParalizarFaturamentoAgua(Ljava/lang/Integer;)V

    goto :goto_7

    .line 298
    :cond_1a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorParalizarFaturamentoAgua(Ljava/lang/Integer;)V

    if-eqz v12, :cond_1b

    .line 301
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 313
    :cond_1b
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdPerfilTarifa()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 314
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoPerfilTarifa()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1d

    if-eqz v12, :cond_1c

    .line 315
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v1, v0, :cond_1d

    .line 316
    :cond_1c
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v15, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    goto :goto_8

    .line 318
    :cond_1d
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v15, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    :cond_1e
    :goto_8
    if-eqz v12, :cond_1f

    .line 323
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMesOriginal(Ljava/lang/Integer;)V

    .line 327
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x3

    if-eqz v0, :cond_20

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoEsgoto()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoEsgoto()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    :cond_20
    if-eqz v11, :cond_30

    .line 331
    :cond_21
    new-instance v0, Lcom/br/ipad/isc/bean/ConsumoHistorico;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;-><init>()V

    const/16 v1, 0x9

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    if-eqz v11, :cond_25

    .line 335
    invoke-direct {v6, v15, v13, v0, v12}, Lcom/br/ipad/isc/controladores/ControladorConta;->calcularConsumo(Lcom/br/ipad/isc/bean/ImovelConta;ILcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/ConsumoHistorico;)V

    if-eqz v12, :cond_24

    .line 345
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v16

    if-eqz v16, :cond_24

    .line 346
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_24

    .line 347
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_24

    .line 349
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 352
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v14

    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorPercentualColetaEsgoto()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lez v14, :cond_22

    .line 353
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v14

    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorPercentualColetaEsgoto()Ljava/lang/Integer;

    move-result-object v14

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v14, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 356
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v23

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentColetaEsgoto()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v25

    mul-double v23, v23, v25

    div-double v23, v23, v2

    invoke-static/range {v23 .. v24}, Lcom/br/ipad/isc/util/Util;->arredondar(D)I

    move-result v1

    goto :goto_9

    .line 358
    :cond_22
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_9
    add-int/2addr v13, v1

    if-eqz v12, :cond_23

    .line 360
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_23

    .line 361
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_a

    .line 363
    :cond_23
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    :cond_24
    :goto_a
    move-object/from16 v7, v21

    goto/16 :goto_c

    .line 371
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinEsgoto()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 372
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinEsgoto()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 375
    :cond_26
    new-instance v0, Lcom/br/ipad/isc/bean/ConsumoHistorico;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v1, v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 377
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 378
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v1

    sget-object v7, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    if-eqz v12, :cond_28

    .line 380
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 381
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndicadorParalizarFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v1

    sget-object v7, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v1, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 383
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoSemContratoDemanda()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 384
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoSemContratoDemanda()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_27

    .line 385
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoSemContratoDemanda()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_b

    .line 387
    :cond_27
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_b

    .line 390
    :cond_28
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 395
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinEsgoto()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 396
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinEsgoto()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v1, v7, :cond_29

    .line 397
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v1

    if-nez v1, :cond_29

    .line 401
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinEsgoto()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 405
    new-instance v1, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    const/16 v7, 0xc

    invoke-direct {v1, v7}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 406
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    .line 412
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 417
    :cond_29
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v1

    move-object/from16 v7, v21

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 418
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v1

    .line 419
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndcValidaEsgoto()Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_2a

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndcValidaEsgoto()Ljava/lang/Integer;

    move-result-object v1

    sget-object v13, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x2

    .line 420
    invoke-direct {v6, v15, v0, v1}, Lcom/br/ipad/isc/controladores/ControladorConta;->dadosFaturamentoEspecialNaoMedido(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;I)V

    :cond_2a
    :goto_c
    if-eqz v11, :cond_2b

    if-eqz v12, :cond_2b

    .line 435
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v4, :cond_2c

    .line 436
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v13, 0x9

    if-eq v1, v13, :cond_2c

    .line 437
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorPercentualColetaEsgoto()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_2c

    .line 438
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorPercentualColetaEsgoto()Ljava/lang/Integer;

    move-result-object v1

    sget-object v13, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v1, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 439
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v13

    .line 440
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentColetaEsgoto()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v22

    mul-double v13, v13, v22

    div-double/2addr v13, v2

    .line 439
    invoke-static {v13, v14}, Lcom/br/ipad/isc/util/Util;->arredondar(D)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_d

    .line 444
    :cond_2b
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v13

    .line 445
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentColetaEsgoto()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v22

    mul-double v13, v13, v22

    div-double/2addr v13, v2

    .line 444
    invoke-static {v13, v14}, Lcom/br/ipad/isc/util/Util;->arredondar(D)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    :cond_2c
    :goto_d
    if-eqz v10, :cond_2d

    .line 450
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 451
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2d

    .line 452
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcCondominio()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 453
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcAreaComum()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcAreaComum()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 454
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoEsgoto(Ljava/lang/Integer;)V

    .line 462
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdPerfilTarifa()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 463
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoPerfilTarifa()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 464
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v2, v1, :cond_2e

    .line 465
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoEsgoto(Ljava/lang/Integer;)V

    goto :goto_e

    .line 467
    :cond_2e
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoEsgoto(Ljava/lang/Integer;)V

    :cond_2f
    :goto_e
    move-object v14, v0

    goto :goto_f

    :cond_30
    move-object/from16 v7, v21

    .line 473
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v15, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoEsgoto(Ljava/lang/Integer;)V

    const/4 v14, 0x0

    .line 484
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorDebitoCobrado()Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;

    move-result-object v0

    const/16 v1, 0x9c4

    .line 485
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    .line 484
    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;->buscarDebitoCobradoPorCodigo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/DebitoCobrado;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 490
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/DebitoCobrado;->setIndicadorUso(Ljava/lang/Integer;)V

    .line 491
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    .line 494
    :cond_31
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    if-eqz v12, :cond_33

    .line 495
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_33

    .line 496
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_33

    :cond_32
    if-eqz v0, :cond_33

    .line 499
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/DebitoCobrado;->setIndicadorUso(Ljava/lang/Integer;)V

    :cond_33
    if-eqz v0, :cond_34

    .line 506
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    :cond_34
    move/from16 v3, v19

    const/4 v0, 0x1

    if-le v3, v0, :cond_36

    if-eqz v14, :cond_36

    .line 514
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_36

    if-eqz v11, :cond_35

    .line 517
    invoke-virtual {v6, v11}, Lcom/br/ipad/isc/controladores/ControladorConta;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v13, v0

    goto :goto_10

    :cond_35
    const/4 v13, 0x0

    :goto_10
    if-eqz v9, :cond_36

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v0

    const/4 v9, 0x2

    move-object/from16 v1, p1

    move-object v2, v14

    const/16 v16, 0x3

    move-object v4, v13

    const/4 v13, 0x7

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->ajustarConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;ILjava/lang/Integer;I)V

    goto :goto_11

    :cond_36
    const/4 v13, 0x7

    const/16 v16, 0x3

    :goto_11
    if-eqz v14, :cond_38

    .line 528
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_37

    .line 529
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v13, :cond_38

    :cond_37
    if-eqz v11, :cond_38

    .line 531
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v0

    .line 532
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->dataAtual()Ljava/util/Date;

    move-result-object v1

    .line 531
    invoke-static {v0, v1}, Lcom/br/ipad/isc/util/Util;->obterQuantidadeDiasEntreDuasDatasPositivo(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setDiasConsumo(Ljava/lang/Integer;)V

    :cond_38
    if-eqz v14, :cond_39

    .line 537
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMesOriginal(Ljava/lang/Integer;)V

    :cond_39
    if-nez v12, :cond_3a

    if-nez v14, :cond_3a

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorDebitoCobrado()Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;->obterValorDebitoTotal(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v2, v0, v17

    if-lez v2, :cond_3a

    .line 545
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v15, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelCalculado(Ljava/lang/Integer;)V

    .line 546
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v15, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelImpresso(Ljava/lang/Integer;)V

    .line 551
    :cond_3a
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 552
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcRateioRealizado()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 553
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v15, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcRateioRealizado(Ljava/lang/Integer;)V

    .line 555
    :cond_3b
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    if-eqz v14, :cond_3c

    .line 560
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v15, v0}, Lcom/br/ipad/isc/controladores/ControladorConta;->verificarPercentualEsgotoAlternativo(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;)V

    :cond_3c
    if-eqz v10, :cond_3d

    .line 566
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getConsumoMinimoContratadoContratoDemanda()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 568
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getConsumoMinimoContratadoContratoDemanda()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int v0, v0, v1

    .line 571
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 572
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_3d

    .line 573
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoSemContratoDemanda(Ljava/lang/Integer;)V

    .line 574
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    const/4 v0, 0x0

    .line 575
    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    const/16 v0, 0xb

    .line 576
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    :cond_3d
    if-eqz v12, :cond_3f

    .line 584
    invoke-virtual {v12, v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    const/4 v0, 0x1

    .line 585
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoLigacao(Ljava/lang/Integer;)V

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 587
    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 588
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->remover(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 590
    :cond_3e
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/br/ipad/isc/controladores/ControladorBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    goto :goto_12

    :cond_3f
    const/4 v0, 0x1

    :goto_12
    if-eqz v14, :cond_41

    .line 594
    invoke-virtual {v14, v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    const/4 v1, 0x2

    .line 595
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoLigacao(Ljava/lang/Integer;)V

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 597
    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 598
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/br/ipad/isc/controladores/ControladorBasico;->remover(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 600
    :cond_40
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/br/ipad/isc/controladores/ControladorBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    goto :goto_13

    :cond_41
    const/4 v1, 0x2

    .line 604
    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcCondominio()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_42

    .line 605
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_42

    .line 606
    invoke-virtual {v6, v15, v12, v14}, Lcom/br/ipad/isc/controladores/ControladorConta;->calcularValores(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/ConsumoHistorico;)V

    .line 610
    :cond_42
    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v15, v2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelCalculado(Ljava/lang/Integer;)V

    .line 611
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_44

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelImpresso()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelImpresso()Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 612
    :cond_43
    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v15, v2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelImpresso(Ljava/lang/Integer;)V

    .line 614
    :cond_44
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorSistemaParametros()Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->atualizarIdImovelSelecionadoSistemaParametros(Ljava/lang/Integer;)V

    if-eqz v12, :cond_46

    .line 623
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 624
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_46

    .line 627
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v2

    .line 628
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v4

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v5

    .line 627
    invoke-virtual {v2, v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v2

    check-cast v2, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-virtual {v12, v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    .line 630
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v2

    if-eqz v2, :cond_46

    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 631
    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xd

    if-eq v2, v4, :cond_46

    .line 633
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v2

    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v5

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v5

    new-instance v8, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {v8}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    invoke-virtual {v2, v5, v8}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v2

    check-cast v2, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    const-string v5, ". Deseja confirmar?"

    if-eqz v2, :cond_45

    .line 635
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getDescricao()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_45

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getDescricao()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_45

    .line 636
    new-instance v3, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;

    const/4 v4, 0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v7

    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v14

    move-object v7, v3

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v16, v12

    move v12, v4

    invoke-direct/range {v7 .. v14}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;IZLjava/lang/Integer;)V

    .line 638
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorFoto()Lcom/br/ipad/isc/controladores/ControladorFoto;

    move-result-object v4

    .line 639
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v8

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/br/ipad/isc/controladores/ControladorFoto;->imovelPossuiFotoAnormalidadeConsumo(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 640
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->exibeMensagem()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 641
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getDescricao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 642
    invoke-virtual {v3, v1, v2, v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->defineAlerta(ILjava/lang/String;I)Z

    move-result v14

    goto/16 :goto_14

    :cond_45
    if-eqz v14, :cond_46

    .line 646
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 647
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_46

    .line 649
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v2

    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v2

    check-cast v2, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-virtual {v14, v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    .line 651
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_46

    .line 654
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v2

    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v2

    check-cast v2, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    if-eqz v2, :cond_46

    .line 655
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getDescricao()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_46

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getDescricao()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 656
    new-instance v3, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;

    const/4 v12, 0x2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v4

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v4

    move-object v7, v3

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v20, v14

    move-object v14, v4

    invoke-direct/range {v7 .. v14}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;IZLjava/lang/Integer;)V

    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorFoto()Lcom/br/ipad/isc/controladores/ControladorFoto;

    move-result-object v4

    .line 658
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual/range {v20 .. v20}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v8

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/br/ipad/isc/controladores/ControladorFoto;->imovelPossuiFotoAnormalidadeConsumo(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 659
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->exibeMensagem()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 660
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getDescricao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 661
    invoke-virtual {v3, v1, v2, v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->defineAlerta(ILjava/lang/String;I)Z

    move-result v14

    goto :goto_14

    :cond_46
    const/4 v14, 0x1

    .line 679
    :goto_14
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v15, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelEnviado(Ljava/lang/Integer;)V

    .line 680
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorImovelRevisitar()Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;->buscarImovelRevisitarPorImovel(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ImovelRevisitar;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 685
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ImovelRevisitar;->setIndicadorRevisitado(Ljava/lang/Integer;)V

    .line 686
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    :cond_47
    if-eqz v14, :cond_48

    .line 692
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorSequencialRotaMarcacao()Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;->gravarSequencialRotaMarcacao(Lcom/br/ipad/isc/bean/ImovelConta;)V

    :cond_48
    return v14
.end method

.method public calcularContaTeste(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 2934
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v1

    .line 2935
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v10

    .line 2936
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v1

    .line 2937
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v2, v12}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v13

    const/4 v14, 0x0

    .line 3150
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    if-nez v10, :cond_0

    if-nez v13, :cond_0

    .line 2940
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelCalculado()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return v14

    :cond_0
    const/4 v6, 0x5

    if-eqz v10, :cond_1

    .line 2944
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2945
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v6, :cond_1

    const/16 v16, 0x0

    goto :goto_0

    :cond_1
    const/16 v16, 0x1

    .line 2949
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v5, 0xc

    const/16 v4, 0x8

    const-string v3, ""

    const/4 v2, 0x0

    if-nez v1, :cond_3

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v14, v2

    goto/16 :goto_6

    .line 2952
    :cond_3
    :goto_2
    new-instance v1, Lcom/br/ipad/isc/bean/ConsumoHistorico;

    invoke-direct {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;-><init>()V

    if-eqz v10, :cond_8

    .line 2957
    invoke-direct {v0, v7, v8, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorConta;->calcularConsumo(Lcom/br/ipad/isc/bean/ImovelConta;ILcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/ConsumoHistorico;)V

    .line 2961
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 2962
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_4

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ge v2, v14, :cond_4

    .line 2964
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 2966
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 2971
    :cond_4
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2973
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoFaturamentoLigAguaSit()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lt v2, v14, :cond_6

    .line 2975
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2977
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;->getInstance()Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v14, v5}, Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;->pesquisarLigacaoAguaSituacaoConsumoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2980
    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v7, v2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    goto :goto_3

    .line 2983
    :cond_5
    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v7, v2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    :cond_6
    :goto_3
    if-eqz v10, :cond_7

    .line 3002
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 3003
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_7

    .line 3004
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcCondominio()Ljava/lang/Integer;

    move-result-object v2

    sget-object v5, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v2, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3005
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcAreaComum()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcAreaComum()Ljava/lang/Integer;

    move-result-object v2

    sget-object v5, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v2, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3006
    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v7, v2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    :cond_7
    move-object v14, v1

    goto/16 :goto_6

    .line 3014
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3015
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_9

    .line 3016
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4

    .line 3018
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v1

    if-nez v1, :cond_a

    .line 3019
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    .line 3021
    :goto_4
    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v7, v2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    goto :goto_5

    .line 3023
    :cond_b
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 3026
    :goto_5
    new-instance v2, Lcom/br/ipad/isc/bean/ConsumoHistorico;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 3029
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3030
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v1

    .line 3031
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndcValidaAgua()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndcValidaAgua()Ljava/lang/Integer;

    move-result-object v1

    sget-object v5, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3032
    invoke-direct {v0, v7, v2, v8}, Lcom/br/ipad/isc/controladores/ControladorConta;->dadosFaturamentoEspecialNaoMedido(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;I)V

    goto/16 :goto_1

    .line 3041
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v8, :cond_d

    if-eqz v14, :cond_d

    .line 3048
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_d

    if-eqz v10, :cond_c

    .line 3052
    invoke-virtual {v0, v10}, Lcom/br/ipad/isc/controladores/ControladorConta;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_7

    :cond_c
    const/16 v18, 0x0

    :goto_7
    if-eqz v16, :cond_d

    .line 3056
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v1

    const/16 v19, 0x1

    move-object/from16 v2, p1

    move-object v8, v3

    move-object v3, v14

    move v4, v5

    move/from16 v20, v5

    move-object/from16 v5, v18

    const/16 p2, 0x5

    move/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->ajustarConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;ILjava/lang/Integer;I)V

    goto :goto_8

    :cond_d
    move-object v8, v3

    move/from16 v20, v5

    const/16 p2, 0x5

    :goto_8
    const/4 v6, 0x7

    if-eqz v14, :cond_f

    .line 3062
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 3063
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3064
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    if-eqz v10, :cond_f

    .line 3066
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v1

    invoke-static {}, Lcom/br/ipad/isc/util/Util;->dataAtual()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/br/ipad/isc/util/Util;->obterQuantidadeDiasEntreDuasDatasPositivo(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setDiasConsumo(Ljava/lang/Integer;)V

    .line 3072
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcConsumoReal()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v17, 0x0

    if-nez v1, :cond_10

    .line 3073
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getLigacaoAguaSituacaoIndicadorLeituraReal()Ljava/lang/Short;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM_SHORT:Ljava/lang/Short;

    invoke-virtual {v1, v2}, Ljava/lang/Short;->compareTo(Ljava/lang/Short;)I

    move-result v1

    if-nez v1, :cond_19

    .line 3076
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroDiasCorte()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroDiasCorte()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_19

    if-eqz v10, :cond_16

    .line 3081
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataCorte()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 3083
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataCorte()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/br/ipad/isc/util/Util;->obterQuantidadeDiasEntreDuasDatas(Ljava/util/Date;Ljava/util/Date;)D

    move-result-wide v1

    cmpl-double v3, v1, v17

    if-lez v3, :cond_12

    .line 3089
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroDiasCorte()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_11

    .line 3091
    invoke-virtual {v7, v9}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorParalizarFaturamentoAgua(Ljava/lang/Integer;)V

    if-eqz v14, :cond_19

    .line 3094
    invoke-virtual {v14, v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto/16 :goto_9

    .line 3099
    :cond_11
    invoke-virtual {v7, v12}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorParalizarFaturamentoAgua(Ljava/lang/Integer;)V

    goto/16 :goto_9

    .line 3104
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcConsumoReal()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3105
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 3106
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getLigacaoAguaSituacaoIndicadorLeituraReal()Ljava/lang/Short;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM_SHORT:Ljava/lang/Short;

    invoke-virtual {v1, v2}, Ljava/lang/Short;->compareTo(Ljava/lang/Short;)I

    move-result v1

    if-nez v1, :cond_15

    .line 3107
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 3108
    :cond_14
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_15

    .line 3111
    invoke-virtual {v7, v12}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorParalizarFaturamentoAgua(Ljava/lang/Integer;)V

    goto :goto_9

    .line 3114
    :cond_15
    invoke-virtual {v7, v9}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorParalizarFaturamentoAgua(Ljava/lang/Integer;)V

    if-eqz v14, :cond_19

    .line 3117
    invoke-virtual {v14, v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_9

    .line 3125
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataCorte()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 3127
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataCorte()Ljava/util/Date;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/br/ipad/isc/util/Util;->obterQuantidadeDiasEntreDuasDatas(Ljava/util/Date;Ljava/util/Date;)D

    move-result-wide v1

    cmpl-double v3, v1, v17

    if-lez v3, :cond_18

    .line 3132
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroDiasCorte()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_17

    .line 3134
    invoke-virtual {v7, v9}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorParalizarFaturamentoAgua(Ljava/lang/Integer;)V

    if-eqz v14, :cond_19

    .line 3137
    invoke-virtual {v14, v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_9

    .line 3142
    :cond_17
    invoke-virtual {v7, v12}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorParalizarFaturamentoAgua(Ljava/lang/Integer;)V

    goto :goto_9

    .line 3147
    :cond_18
    invoke-virtual {v7, v9}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorParalizarFaturamentoAgua(Ljava/lang/Integer;)V

    if-eqz v14, :cond_19

    .line 3150
    invoke-virtual {v14, v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 3162
    :cond_19
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdPerfilTarifa()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 3163
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoPerfilTarifa()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1b

    if-eqz v14, :cond_1a

    .line 3164
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v2, v1, :cond_1b

    .line 3165
    :cond_1a
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    goto :goto_a

    .line 3167
    :cond_1b
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    :cond_1c
    :goto_a
    if-eqz v14, :cond_1d

    .line 3172
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMesOriginal(Ljava/lang/Integer;)V

    .line 3176
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x3

    if-eqz v1, :cond_1e

    .line 3177
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoEsgoto()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoEsgoto()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    :cond_1e
    if-eqz v13, :cond_2e

    .line 3180
    :cond_1f
    new-instance v1, Lcom/br/ipad/isc/bean/ConsumoHistorico;

    invoke-direct {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;-><init>()V

    const/16 v2, 0x9

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    if-eqz v13, :cond_23

    .line 3184
    invoke-direct {v0, v7, v11, v1, v14}, Lcom/br/ipad/isc/controladores/ControladorConta;->calcularConsumo(Lcom/br/ipad/isc/bean/ImovelConta;ILcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/ConsumoHistorico;)V

    if-eqz v14, :cond_22

    .line 3194
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_22

    .line 3195
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 3196
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 3198
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3201
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v11

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorPercentualColetaEsgoto()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_20

    .line 3202
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v11

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorPercentualColetaEsgoto()Ljava/lang/Integer;

    move-result-object v11

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v11, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3205
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v23

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentColetaEsgoto()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v25

    mul-double v23, v23, v25

    div-double v23, v23, v3

    invoke-static/range {v23 .. v24}, Lcom/br/ipad/isc/util/Util;->arredondar(D)I

    move-result v2

    goto :goto_b

    .line 3207
    :cond_20
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_b
    add-int/2addr v6, v2

    if-eqz v14, :cond_21

    .line 3209
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_21

    .line 3210
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_c

    .line 3212
    :cond_21
    invoke-virtual {v1, v15}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    :cond_22
    :goto_c
    move-object v2, v1

    const/4 v6, 0x7

    goto/16 :goto_10

    .line 3220
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinEsgoto()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 3221
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinEsgoto()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_d

    :cond_24
    const/4 v1, 0x0

    .line 3224
    :goto_d
    new-instance v2, Lcom/br/ipad/isc/bean/ConsumoHistorico;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 3226
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 3227
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v1

    sget-object v6, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    if-eqz v14, :cond_26

    .line 3229
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 3230
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndicadorParalizarFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v1

    sget-object v6, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v1, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 3232
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoSemContratoDemanda()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 3233
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoSemContratoDemanda()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_25

    .line 3234
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoSemContratoDemanda()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_e

    .line 3236
    :cond_25
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_e

    .line 3239
    :cond_26
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 3244
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinEsgoto()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 3245
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinEsgoto()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v1, v6, :cond_27

    .line 3246
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v1

    if-nez v1, :cond_27

    .line 3250
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinEsgoto()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 3254
    new-instance v1, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    const/16 v6, 0xc

    invoke-direct {v1, v6}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 3255
    invoke-virtual {v2, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    const/4 v6, 0x7

    .line 3261
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto :goto_f

    :cond_27
    const/4 v6, 0x7

    .line 3266
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 3267
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v1

    .line 3268
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndcValidaEsgoto()Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_28

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndcValidaEsgoto()Ljava/lang/Integer;

    move-result-object v1

    sget-object v15, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v15}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 3269
    invoke-direct {v0, v7, v2, v11}, Lcom/br/ipad/isc/controladores/ControladorConta;->dadosFaturamentoEspecialNaoMedido(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;I)V

    :cond_28
    :goto_10
    if-eqz v13, :cond_29

    if-eqz v14, :cond_29

    .line 3284
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_2a

    .line 3285
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v11, 0x9

    if-eq v1, v11, :cond_2a

    .line 3286
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorPercentualColetaEsgoto()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_2a

    .line 3287
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorPercentualColetaEsgoto()Ljava/lang/Integer;

    move-result-object v1

    sget-object v11, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v1, v11}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3288
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v21

    .line 3289
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentColetaEsgoto()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v23

    mul-double v21, v21, v23

    div-double v21, v21, v3

    .line 3288
    invoke-static/range {v21 .. v22}, Lcom/br/ipad/isc/util/Util;->arredondar(D)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_11

    .line 3293
    :cond_29
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v21

    .line 3294
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentColetaEsgoto()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v23

    mul-double v21, v21, v23

    div-double v21, v21, v3

    .line 3293
    invoke-static/range {v21 .. v22}, Lcom/br/ipad/isc/util/Util;->arredondar(D)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    :cond_2a
    :goto_11
    if-eqz v10, :cond_2b

    .line 3299
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 3300
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2b

    .line 3301
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcCondominio()Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 3302
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcAreaComum()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcAreaComum()Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 3303
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoEsgoto(Ljava/lang/Integer;)V

    .line 3311
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdPerfilTarifa()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 3312
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoPerfilTarifa()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 3313
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v3, v1, :cond_2c

    .line 3314
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoEsgoto(Ljava/lang/Integer;)V

    goto :goto_12

    .line 3316
    :cond_2c
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoEsgoto(Ljava/lang/Integer;)V

    :cond_2d
    :goto_12
    move-object v11, v2

    goto :goto_13

    .line 3322
    :cond_2e
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoEsgoto(Ljava/lang/Integer;)V

    const/4 v11, 0x0

    .line 3333
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorDebitoCobrado()Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;

    move-result-object v1

    const/16 v2, 0x9c4

    .line 3334
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    .line 3333
    invoke-virtual {v1, v2, v3}, Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;->buscarDebitoCobradoPorCodigo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/DebitoCobrado;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 3339
    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/bean/DebitoCobrado;->setIndicadorUso(Ljava/lang/Integer;)V

    .line 3340
    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v7, v2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    .line 3343
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    if-eqz v14, :cond_31

    .line 3344
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_31

    .line 3345
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_31

    :cond_30
    if-eqz v1, :cond_31

    .line 3348
    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/bean/DebitoCobrado;->setIndicadorUso(Ljava/lang/Integer;)V

    :cond_31
    if-eqz v1, :cond_32

    .line 3355
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    :cond_32
    move/from16 v4, v20

    const/4 v1, 0x1

    if-le v4, v1, :cond_34

    if-eqz v11, :cond_34

    .line 3363
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_34

    if-eqz v13, :cond_33

    .line 3366
    invoke-virtual {v0, v13}, Lcom/br/ipad/isc/controladores/ControladorConta;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v15, v1

    goto :goto_14

    :cond_33
    const/4 v15, 0x0

    :goto_14
    if-eqz v16, :cond_34

    .line 3370
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v1

    const/16 v16, 0x2

    move-object/from16 v2, p1

    move-object v3, v11

    const/16 v19, 0x3

    move-object v5, v15

    const/4 v15, 0x7

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->ajustarConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;ILjava/lang/Integer;I)V

    goto :goto_15

    :cond_34
    const/4 v15, 0x7

    const/16 v19, 0x3

    :goto_15
    if-eqz v11, :cond_36

    .line 3377
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_35

    .line 3378
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v15, :cond_36

    :cond_35
    if-eqz v13, :cond_36

    .line 3380
    invoke-virtual {v13}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v1

    .line 3381
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->dataAtual()Ljava/util/Date;

    move-result-object v2

    .line 3380
    invoke-static {v1, v2}, Lcom/br/ipad/isc/util/Util;->obterQuantidadeDiasEntreDuasDatasPositivo(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setDiasConsumo(Ljava/lang/Integer;)V

    :cond_36
    if-eqz v11, :cond_37

    .line 3386
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMesOriginal(Ljava/lang/Integer;)V

    :cond_37
    if-nez v14, :cond_38

    if-nez v11, :cond_38

    .line 3393
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorDebitoCobrado()Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;->obterValorDebitoTotal(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    cmpl-double v3, v1, v17

    if-lez v3, :cond_38

    .line 3394
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelCalculado(Ljava/lang/Integer;)V

    .line 3395
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelImpresso(Ljava/lang/Integer;)V

    .line 3400
    :cond_38
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 3401
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcRateioRealizado()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 3402
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcRateioRealizado(Ljava/lang/Integer;)V

    .line 3404
    :cond_39
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    if-eqz v11, :cond_3a

    .line 3409
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/br/ipad/isc/controladores/ControladorConta;->verificarPercentualEsgotoAlternativo(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;)V

    :cond_3a
    if-eqz v10, :cond_3b

    .line 3415
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getConsumoMinimoContratadoContratoDemanda()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 3417
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getConsumoMinimoContratadoContratoDemanda()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3418
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int v1, v1, v2

    .line 3420
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3421
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_3b

    .line 3422
    invoke-virtual {v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoSemContratoDemanda(Ljava/lang/Integer;)V

    .line 3423
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 3424
    invoke-virtual {v14, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    const/16 v1, 0xb

    .line 3425
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    :cond_3b
    if-eqz v14, :cond_3d

    .line 3433
    invoke-virtual {v14, v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 3434
    invoke-virtual {v14, v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoLigacao(Ljava/lang/Integer;)V

    .line 3435
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 3436
    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 3437
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->remover(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 3439
    :cond_3c
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/br/ipad/isc/controladores/ControladorBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    :cond_3d
    if-eqz v11, :cond_3f

    .line 3443
    invoke-virtual {v11, v7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 3444
    invoke-virtual {v11, v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoLigacao(Ljava/lang/Integer;)V

    .line 3445
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v12}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 3446
    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 3447
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->remover(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 3449
    :cond_3e
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/br/ipad/isc/controladores/ControladorBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    .line 3453
    :cond_3f
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcCondominio()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_40

    .line 3454
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_40

    .line 3455
    invoke-virtual {v0, v7, v14, v11}, Lcom/br/ipad/isc/controladores/ControladorConta;->calcularValores(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/ConsumoHistorico;)V

    .line 3458
    :cond_40
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelCalculado(Ljava/lang/Integer;)V

    .line 3459
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelImpresso(Ljava/lang/Integer;)V

    .line 3460
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 3465
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorSistemaParametros()Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->atualizarIdImovelSelecionadoSistemaParametros(Ljava/lang/Integer;)V

    .line 3468
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelEnviado(Ljava/lang/Integer;)V

    .line 3470
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v1

    if-nez v1, :cond_42

    .line 3471
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorImpressao()Lcom/br/ipad/isc/controladores/ControladorImpressao;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2, v2}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->imovelNaoPermiteImpressao(Lcom/br/ipad/isc/bean/ImovelConta;ZI)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 3473
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelImpresso(Ljava/lang/Integer;)V

    goto :goto_16

    .line 3475
    :cond_41
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelImpresso(Ljava/lang/Integer;)V

    goto :goto_16

    .line 3478
    :cond_42
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcNaoPermiteImpressao(Ljava/lang/Integer;)V

    .line 3479
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v7, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcRateioRealizado(Ljava/lang/Integer;)V

    .line 3482
    :goto_16
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    const/4 v1, 0x1

    return v1
.end method

.method public calcularEmBackground(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 2805
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/br/ipad/isc/controladores/ControladorConta$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/br/ipad/isc/controladores/ControladorConta$1;-><init>(Lcom/br/ipad/isc/controladores/ControladorConta;Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2815
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public calcularValores(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/ConsumoHistorico;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 1346
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorImovel()Lcom/br/ipad/isc/controladores/ControladorImovel;

    move-result-object v0

    .line 1350
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorDebitoCobrado()Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;

    move-result-object v1

    const/16 v2, 0x9c4

    .line 1351
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    .line 1350
    invoke-virtual {v1, v2, v3}, Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;->buscarDebitoCobradoPorCodigo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/DebitoCobrado;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1353
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/DebitoCobrado;->getIndicadorUso()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    const/4 v1, 0x0

    .line 1359
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1360
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndicadorParalizarFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1362
    invoke-virtual {v0, p1, p2, v3}, Lcom/br/ipad/isc/controladores/ControladorImovel;->calcularValores(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;I)V

    const/4 v1, 0x1

    goto :goto_0

    .line 1368
    :cond_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorContaCategoria()Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    move-result-object p2

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2, v3}, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->removerImovelContaCategoria(Ljava/lang/Integer;I)V

    .line 1372
    :goto_0
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoEsgoto()Ljava/lang/Integer;

    move-result-object p2

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p2, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x2

    if-eqz p2, :cond_2

    .line 1373
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndicadorParalizarFaturamentoEsgoto()Ljava/lang/Integer;

    move-result-object p2

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz v1, :cond_2

    .line 1375
    invoke-virtual {v0, p1, p3, v2}, Lcom/br/ipad/isc/controladores/ControladorImovel;->calcularValores(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;I)V

    goto :goto_1

    .line 1381
    :cond_2
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorContaCategoria()Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    move-result-object p2

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, v2}, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->removerImovelContaCategoria(Ljava/lang/Integer;I)V

    .line 1388
    :goto_1
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1389
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 p3, 0x9

    if-ne p2, p3, :cond_3

    .line 1391
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorContaCategoria()Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    move-result-object p2

    .line 1392
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->obterValorTotal(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p2, v0

    .line 1391
    invoke-static {p2, p3, v2}, Lcom/br/ipad/isc/util/Util;->truncar(DI)D

    move-result-wide p2

    .line 1396
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorCreditoRealizado()Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;

    move-result-object v0

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "DEDUCAO JUDICIAL"

    invoke-virtual {v0, v4, v1}, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->buscarCreditoRealizadoPorDescricao(Ljava/lang/String;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/CreditoRealizado;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1398
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/CreditoRealizado;->setValor(Ljava/math/BigDecimal;)V

    .line 1399
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 1405
    :cond_3
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1407
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object p2

    .line 1408
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1410
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getPercentualDescontoContratoDemanda()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 1411
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getPercentualDescontoContratoDemanda()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lez p3, :cond_4

    .line 1414
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorContaCategoria()Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    move-result-object p3

    .line 1415
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->obterValorTotal(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 1416
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getPercentualDescontoContratoDemanda()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-double v3, p3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    mul-double v0, v0, v3

    .line 1414
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->truncar(DI)D

    move-result-wide v0

    .line 1418
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorContaCategoria()Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    move-result-object p3

    .line 1419
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->obterValorTotal(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 1420
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getPercentualDescontoContratoDemanda()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, v5

    mul-double v3, v3, p2

    .line 1418
    invoke-static {v3, v4, v2}, Lcom/br/ipad/isc/util/Util;->truncar(DI)D

    move-result-wide p2

    .line 1423
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorCreditoRealizado()Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;

    move-result-object v2

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "DESCONTO CONTRATO DEMANDA"

    invoke-virtual {v2, v3, p1}, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->buscarCreditoRealizadoPorDescricao(Ljava/lang/String;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/CreditoRealizado;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1425
    new-instance v2, Ljava/math/BigDecimal;

    add-double/2addr v0, p2

    invoke-direct {v2, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {p1, v2}, Lcom/br/ipad/isc/bean/CreditoRealizado;->setValor(Ljava/math/BigDecimal;)V

    .line 1426
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    :cond_4
    return-void
.end method

.method public controlaSubstituicaoHidrometro(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ConsumoHistorico;Ljava/lang/Integer;I)Z
    .locals 10

    .line 2852
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumDigitosLeituraHidrometro()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    .line 2853
    invoke-static {v1, v0}, Lcom/br/ipad/isc/util/Util;->pow(II)I

    move-result v0

    .line 2854
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/controladores/ControladorConta;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v0

    sub-int/2addr v1, v0

    mul-int/lit8 v0, p4, 0x3

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-gt v1, v0, :cond_2

    if-lez v1, :cond_2

    .line 2860
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoMedidoMes(Ljava/lang/Integer;)V

    .line 2861
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 2862
    invoke-virtual {p2, p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    .line 2864
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getCodigoSituacaoLeituraAnterior()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_1

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 2869
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto :goto_1

    .line 2867
    :cond_1
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 2872
    :goto_1
    new-instance v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 2873
    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_6

    .line 2882
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataInstalacaoHidrometro()Ljava/util/Date;

    move-result-object v1

    .line 2884
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/br/ipad/isc/util/Util;->compararData(Ljava/util/Date;Ljava/util/Date;)I

    move-result v6

    if-ltz v6, :cond_6

    .line 2885
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/br/ipad/isc/util/Util;->compararData(Ljava/util/Date;Ljava/util/Date;)I

    move-result v6

    if-gtz v6, :cond_6

    .line 2889
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraHidrometoInstalada()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2890
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraHidrometoInstalada()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 2892
    :goto_3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v0

    if-gez v6, :cond_4

    const/4 v6, 0x0

    .line 2899
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoMedidoMes(Ljava/lang/Integer;)V

    .line 2900
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/br/ipad/isc/util/Util;->obterQuantidadeDiasEntreDuasDatasPositivo(Ljava/util/Date;Ljava/util/Date;)I

    move-result p1

    const/16 v0, 0x9

    if-le p1, v0, :cond_5

    const/16 v1, 0x3c

    if-ge p1, v1, :cond_5

    int-to-double v6, v6

    int-to-double v8, p1

    .line 2903
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    invoke-static {v6, v7, v4}, Lcom/br/ipad/isc/util/Util;->arredondar(DI)D

    move-result-wide v6

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    mul-double v6, v6, v8

    .line 2904
    invoke-static {v6, v7, v5}, Lcom/br/ipad/isc/util/Util;->arredondar(DI)D

    move-result-wide v4

    double-to-int p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 2905
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto :goto_4

    .line 2907
    :cond_5
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 2908
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 2910
    :goto_4
    invoke-virtual {p2, p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    .line 2911
    new-instance p1, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 2912
    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    goto :goto_5

    :cond_6
    move v3, v0

    :goto_5
    return v3
.end method

.method public efetuarRateio(Lcom/br/ipad/isc/bean/ImovelConta;ZLjava/lang/Integer;)Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 1452
    invoke-virtual/range {p0 .. p1}, Lcom/br/ipad/isc/controladores/ControladorConta;->atualizarResumoEfetuarRateio(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;

    move-result-object v9

    .line 1460
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1461
    invoke-direct {v0, v2, v9}, Lcom/br/ipad/isc/controladores/ControladorConta;->calcularConsumoAguaASerRateado(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->setConsumoASerRateadoAgua(I)V

    .line 1465
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoEsgoto()Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1466
    invoke-direct {v0, v2, v9}, Lcom/br/ipad/isc/controladores/ControladorConta;->calcularConsumoEsgotoASerRateado(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->setConsumoASerRateadoEsgoto(I)V

    .line 1469
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->obterImovelAreaComum(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v1

    .line 1471
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v3

    .line 1472
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v3, :cond_4

    .line 1474
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1475
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_2

    .line 1476
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v4, :cond_4

    :cond_2
    if-eqz v1, :cond_4

    const-string v7, ""

    .line 1479
    invoke-virtual {v1, v7}, Lcom/br/ipad/isc/bean/ImovelConta;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1480
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoASerRateadoAgua()I

    move-result v7

    if-lez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    .line 1483
    :goto_0
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoASerRateadoEsgoto()I

    move-result v8

    if-lez v8, :cond_5

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :cond_5
    const/4 v8, 0x0

    .line 1490
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v10, v11}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1492
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v10

    .line 1493
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v10

    if-eqz v7, :cond_7

    .line 1498
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v11

    .line 1499
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 1501
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoASerRateadoAgua()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    .line 1502
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 1505
    :cond_6
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoLigacaoAguaTotal()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMesImoveisMicro(Ljava/lang/Integer;)V

    goto :goto_2

    .line 1508
    :cond_7
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoASerRateadoAgua()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    .line 1509
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoLigacaoAguaTotal()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMesImoveisMicro(Ljava/lang/Integer;)V

    .line 1512
    :goto_2
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 1519
    :cond_8
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasAguaNaoMedidas()I

    move-result v10

    if-lez v10, :cond_b

    if-eqz v7, :cond_a

    .line 1521
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v4, :cond_9

    .line 1523
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoASerRateadoAgua()I

    move-result v10

    .line 1524
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasAguaNaoMedidas()I

    move-result v11

    div-int/2addr v10, v11

    goto :goto_3

    .line 1526
    :cond_9
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoASerRateadoAgua()I

    move-result v10

    .line 1529
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v11

    .line 1530
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v11

    .line 1531
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    .line 1532
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    goto :goto_4

    .line 1535
    :cond_a
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoASerRateadoAgua()I

    move-result v10

    .line 1536
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasAguaNaoMedidas()I

    move-result v11

    div-int/2addr v10, v11

    goto :goto_4

    :cond_b
    const/4 v10, 0x0

    :goto_4
    if-gez v10, :cond_c

    .line 1554
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndicadorImovelRateioNegativo()Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v11, v12}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v10, 0x0

    goto :goto_5

    :cond_c
    if-gez v10, :cond_d

    .line 1564
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v11

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDecrementoMaximoConsumoEconomia()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    mul-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_d

    .line 1566
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v10

    .line 1567
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDecrementoMaximoConsumoEconomia()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    mul-int/lit8 v10, v10, -0x1

    .line 1575
    :cond_d
    :goto_5
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasAguaMedidas()I

    move-result v11

    if-lez v11, :cond_f

    if-eqz v7, :cond_e

    .line 1578
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoASerRateadoAgua()I

    move-result v11

    goto :goto_6

    .line 1581
    :cond_e
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoASerRateadoAgua()I

    move-result v11

    .line 1582
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasAguaMedidas()I

    move-result v12

    div-int/2addr v11, v12

    goto :goto_6

    :cond_f
    const/4 v11, 0x0

    :goto_6
    if-gez v11, :cond_10

    .line 1599
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndicadorImovelRateioNegativo()Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v12, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    const/4 v11, 0x0

    goto :goto_7

    :cond_10
    if-gez v11, :cond_11

    .line 1609
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v12

    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDecrementoMaximoConsumoEconomia()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    mul-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_11

    .line 1611
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v11

    .line 1612
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDecrementoMaximoConsumoEconomia()Ljava/lang/Integer;

    move-result-object v11

    .line 1611
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    mul-int/lit8 v11, v11, -0x1

    .line 1622
    :cond_11
    :goto_7
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v12

    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIncrementoMaximoConsumoEconomia()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-le v11, v12, :cond_12

    if-nez v7, :cond_12

    .line 1625
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v11

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIncrementoMaximoConsumoEconomia()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :cond_12
    if-eqz v7, :cond_14

    if-eqz v3, :cond_13

    .line 1632
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v12, v4, :cond_14

    :cond_13
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1637
    :cond_14
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoASerRateadoEsgoto()I

    move-result v12

    if-gez v12, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndicadorImovelRateioNegativo()Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v12, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    const/4 v8, 0x0

    .line 1646
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoEsgoto()Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v12, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x2

    if-eqz v12, :cond_18

    .line 1648
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v12

    .line 1649
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v12

    if-eqz v8, :cond_16

    .line 1654
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v14

    .line 1655
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v15, v6}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 1658
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoASerRateadoEsgoto()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    .line 1659
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 1661
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoLigacaoEsgotoTotal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMesImoveisMicro(Ljava/lang/Integer;)V

    goto :goto_8

    .line 1664
    :cond_16
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoASerRateadoEsgoto()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    .line 1665
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoLigacaoEsgotoTotal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMesImoveisMicro(Ljava/lang/Integer;)V

    .line 1668
    :cond_17
    :goto_8
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 1674
    :cond_18
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasEsgotoNaoMedidas()I

    move-result v6

    if-lez v6, :cond_1b

    if-eqz v8, :cond_1a

    .line 1677
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_19

    .line 1679
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoASerRateadoEsgoto()I

    move-result v6

    .line 1680
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasEsgotoNaoMedidas()I

    move-result v12

    div-int/2addr v6, v12

    goto :goto_9

    .line 1682
    :cond_19
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoASerRateadoEsgoto()I

    move-result v6

    .line 1685
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v12

    .line 1686
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v1, v14}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v1

    .line 1688
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoRateio(Ljava/lang/Integer;)V

    .line 1689
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    goto :goto_a

    .line 1693
    :cond_1a
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoASerRateadoEsgoto()I

    move-result v1

    .line 1694
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasEsgotoNaoMedidas()I

    move-result v6

    div-int v6, v1, v6

    goto :goto_a

    :cond_1b
    const/4 v6, 0x0

    .line 1699
    :goto_a
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoASerRateadoEsgoto()I

    move-result v1

    if-gez v1, :cond_1c

    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorDesconsiderarRateioEsgoto()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1c

    .line 1700
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorDesconsiderarRateioEsgoto()Ljava/lang/Integer;

    move-result-object v1

    sget-object v12, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v1, v12}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v6, 0x0

    :cond_1c
    if-gez v6, :cond_1d

    .line 1716
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndicadorImovelRateioNegativo()Ljava/lang/Integer;

    move-result-object v1

    sget-object v12, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v1, v12}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v6, 0x0

    goto :goto_b

    :cond_1d
    if-gez v6, :cond_1e

    .line 1727
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDecrementoMaximoConsumoEconomia()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    if-ge v6, v1, :cond_1e

    .line 1729
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDecrementoMaximoConsumoEconomia()Ljava/lang/Integer;

    move-result-object v1

    .line 1730
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v6, v1, -0x1

    .line 1736
    :cond_1e
    :goto_b
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasEsgotoMedidas()I

    move-result v1

    if-lez v1, :cond_20

    if-eqz v8, :cond_1f

    .line 1740
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoASerRateadoEsgoto()I

    move-result v1

    goto :goto_c

    .line 1744
    :cond_1f
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getConsumoASerRateadoEsgoto()I

    move-result v1

    .line 1745
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->getQuantidadeEconomiasEsgotoMedidas()I

    move-result v12

    div-int/2addr v1, v12

    goto :goto_c

    :cond_20
    const/4 v1, 0x0

    :goto_c
    if-gtz v1, :cond_21

    :goto_d
    const/4 v1, 0x0

    goto :goto_e

    .line 1752
    :cond_21
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v12

    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorDesconsiderarRateioEsgoto()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_22

    .line 1753
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v12

    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorDesconsiderarRateioEsgoto()Ljava/lang/Integer;

    move-result-object v12

    sget-object v14, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v12, v14}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22

    goto :goto_d

    .line 1757
    :cond_22
    :goto_e
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v12

    invoke-virtual {v12}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIncrementoMaximoConsumoEconomia()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-le v1, v12, :cond_23

    if-nez v8, :cond_23

    .line 1761
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIncrementoMaximoConsumoEconomia()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_23
    if-eqz v8, :cond_25

    if-eqz v3, :cond_24

    .line 1770
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_25

    :cond_24
    const/4 v12, 0x0

    const/16 v16, 0x0

    goto :goto_f

    :cond_25
    move/from16 v16, v1

    move v12, v6

    .line 1776
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v1

    .line 1777
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v1

    .line 1778
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v3

    .line 1779
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v3

    .line 1780
    invoke-virtual {v0, v2, v1, v3}, Lcom/br/ipad/isc/controladores/ControladorConta;->calcularValores(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/ConsumoHistorico;)V

    .line 1783
    new-instance v13, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;

    move-object v1, v13

    move-object/from16 v2, p1

    move v3, v7

    move v4, v8

    move v5, v11

    move v6, v10

    move/from16 v7, v16

    move v8, v12

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v1 .. v11}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;ZZIIIILcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;ZLjava/lang/Integer;)V

    return-object v13
.end method

.method public ehImovelCortadoComConsumo(Lcom/br/ipad/isc/bean/ImovelConta;ILcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 3496
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p2

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorAnormalidadeImovelCortadoComConsumo()Ljava/lang/Integer;

    move-result-object p2

    .line 3500
    invoke-virtual {p2}, Ljava/lang/Integer;->shortValue()S

    move-result p2

    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v0, :cond_2

    .line 3501
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 3503
    sget-object p2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    .line 3504
    sget-object p2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoEsgoto(Ljava/lang/Integer;)V

    .line 3507
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroDiasCorte()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 3509
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_2

    .line 3512
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoFaturamentoLigAguaSit()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 3516
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v0

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 3521
    :cond_0
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataCorte()Ljava/util/Date;

    .line 3523
    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    .line 3524
    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataCorte()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/br/ipad/isc/util/Util;->obterQuantidadeDiasEntreDuasDatas(Ljava/util/Date;Ljava/util/Date;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    .line 3528
    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    div-int/2addr v6, v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-le v6, p2, :cond_1

    .line 3529
    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3530
    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorFaturamento()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-le p2, p4, :cond_1

    .line 3531
    new-instance p2, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    const/16 p4, 0x1e

    invoke-direct {p2, p4}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 3532
    invoke-virtual {p3, p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    .line 3533
    sget-object p2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    .line 3534
    sget-object p2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoEsgoto(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    cmpg-double p2, v2, v4

    if-gtz p2, :cond_2

    .line 3538
    sget-object p2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    .line 3539
    sget-object p2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoEsgoto(Ljava/lang/Integer;)V

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I
    .locals 2

    if-eqz p1, :cond_2

    .line 2030
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorInformada()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2031
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2033
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorInformada()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2034
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorInformada()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 2036
    :cond_0
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorFaturamento()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 2039
    :cond_1
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorFaturamento()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public obterValorConta(Ljava/lang/Integer;)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 2599
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->getInstance()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->obterValorContaSemImposto(Ljava/lang/Integer;)D

    move-result-wide v0

    .line 2600
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorContaImposto;->getInstance()Lcom/br/ipad/isc/controladores/ControladorContaImposto;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/br/ipad/isc/controladores/ControladorContaImposto;->obterValorImpostoTotal(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    move-wide v0, v2

    :cond_0
    const/4 p1, 0x2

    .line 2606
    invoke-static {v0, v1, p1}, Lcom/br/ipad/isc/util/Util;->arredondar(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public permiteImprimir(Lcom/br/ipad/isc/bean/ImovelConta;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 2620
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcCondominio()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 2627
    :cond_0
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcCondominio()Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2628
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 2630
    :cond_1
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v0

    .line 2633
    :goto_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->obterIdUltimoImovelMicro(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2634
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public recuperarDadosConsumoAnormalidadeAcao(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;ILcom/br/ipad/isc/bean/ConsumoAnormalidade;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 2328
    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getConsumoMedio()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_0
    if-ne p4, v0, :cond_1

    .line 2333
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioLigacaoAgua()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    .line 2336
    :cond_1
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioEsgoto()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 2340
    :goto_0
    invoke-virtual {p5}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 2341
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoPerfil()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2342
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v2

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->obterCategoriaPrincipal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2350
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2351
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoAnteriores()Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;

    move-result-object v4

    .line 2352
    invoke-virtual {p5}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, p1, v5, v3}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->obtemOrdemAnormalidade(Lcom/br/ipad/isc/bean/ImovelConta;II)I

    move-result v3

    .line 2355
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoAnormalidadeAcao()Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;

    move-result-object v4

    .line 2356
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2355
    invoke-virtual {v4, v5, v6, v7}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->obterQtdConsumoAnormalidadeAcao(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 2360
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoAnormalidadeAcao()Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;

    move-result-object v4

    .line 2361
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2360
    invoke-virtual {v4, v5, v6, v7}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->obterQtdConsumoAnormalidadeAcao(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_2
    if-nez v4, :cond_3

    .line 2366
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoAnormalidadeAcao()Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;

    move-result-object v4

    .line 2367
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2366
    invoke-virtual {v4, v5, v6, v5}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->obterQtdConsumoAnormalidadeAcao(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_3
    if-ge v4, v3, :cond_4

    move v3, v4

    .line 2377
    :cond_4
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorConsumoAnormalidadeAcao()Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;

    move-result-object v4

    invoke-virtual {v4, p4, v2, v1, v3}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->obterConsumoAnormalidadeAcao(IIII)Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2382
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getIdLeituraAnormalidadeConsumo()Ljava/lang/Integer;

    move-result-object v5

    .line 2383
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getFatorConsumo()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 2386
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getMensagemConta()Ljava/lang/String;

    move-result-object v1

    move-object v8, v5

    move-object v5, v1

    move-object v1, v8

    goto :goto_1

    :cond_5
    move-object v1, v5

    move-object v2, v1

    :goto_1
    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eqz v5, :cond_a

    .line 2391
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v6

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v6

    const-string v7, "6"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x3c

    .line 2393
    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->dividirString(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_6
    const/16 v6, 0x28

    .line 2396
    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->dividirString(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 2400
    :goto_2
    array-length v6, v5

    if-eq v6, v0, :cond_9

    if-eq v6, v3, :cond_8

    if-eq v6, v4, :cond_7

    goto :goto_3

    .line 2402
    :cond_7
    aget-object v6, v5, v3

    invoke-virtual {p1, v6}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade3(Ljava/lang/String;)V

    .line 2404
    :cond_8
    aget-object v6, v5, v0

    invoke-virtual {p1, v6}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade2(Ljava/lang/String;)V

    :cond_9
    const/4 v6, 0x0

    .line 2406
    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade1(Ljava/lang/String;)V

    .line 2412
    :cond_a
    :goto_3
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 2418
    invoke-virtual {p2, p5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    if-eqz v1, :cond_b

    .line 2420
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p5

    if-nez p5, :cond_b

    .line 2422
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 2423
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto/16 :goto_4

    :cond_b
    if-eqz v1, :cond_c

    .line 2425
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p5

    if-ne p5, v0, :cond_c

    .line 2429
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    const/16 p1, 0x8

    .line 2431
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto/16 :goto_4

    :cond_c
    const/4 p5, 0x5

    const/4 v0, 0x6

    if-eqz v1, :cond_10

    .line 2434
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_10

    if-eq p4, v0, :cond_d

    if-ne p4, p5, :cond_f

    :cond_d
    if-eqz v2, :cond_f

    int-to-double p3, p3

    .line 2464
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, v4

    invoke-static {p3, p4}, Lcom/br/ipad/isc/util/Util;->arredondar(D)I

    move-result p3

    .line 2466
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoEstouro()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-le p4, p3, :cond_e

    .line 2467
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoEstouro()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_4

    .line 2469
    :cond_e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_4

    .line 2482
    :cond_f
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 2483
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto :goto_4

    :cond_10
    if-eqz v1, :cond_11

    .line 2511
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_11

    goto :goto_4

    :cond_11
    if-eqz v1, :cond_12

    .line 2515
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p5, :cond_12

    .line 2517
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le p3, p1, :cond_13

    .line 2518
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 2519
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto :goto_4

    :cond_12
    if-eqz v1, :cond_13

    .line 2522
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_13

    .line 2523
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p3, p1, :cond_13

    .line 2524
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 2525
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    :cond_13
    :goto_4
    if-eqz v2, :cond_14

    if-eqz v1, :cond_14

    .line 2535
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v3, :cond_14

    .line 2536
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double p3, p1

    .line 2537
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, v0

    .line 2538
    invoke-static {p3, p4}, Lcom/br/ipad/isc/util/Util;->arredondar(D)I

    move-result p1

    .line 2539
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    :cond_14
    return-void
.end method

.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorConta;->instance:Lcom/br/ipad/isc/controladores/ControladorConta;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 56
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorConta;->context:Landroid/content/Context;

    return-void
.end method

.method public verificarAltoConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;I)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1967
    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getConsumoMedio()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    if-ne p4, p3, :cond_1

    .line 1972
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioLigacaoAgua()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    .line 1975
    :cond_1
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioEsgoto()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 1980
    :goto_0
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFatorMultMediaAltoConsumo()Ljava/math/BigDecimal;

    move-result-object p4

    invoke-virtual {p4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    int-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p3

    invoke-static {v0, v1}, Lcom/br/ipad/isc/util/Util;->arredondar(D)I

    move-result p3

    .line 1982
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object p4

    .line 1983
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoMedidoMes()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1984
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoMedidoMes()Ljava/lang/Integer;

    move-result-object p4

    :cond_2
    if-eqz p4, :cond_3

    .line 1987
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getAltoConsumo()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le v0, p1, :cond_3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le p1, p3, :cond_3

    .line 1988
    new-instance p1, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    const/4 p3, 0x6

    invoke-direct {p1, p3}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 1989
    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    :cond_3
    return-void
.end method

.method public verificarBaixoConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;I)V
    .locals 4

    if-eqz p3, :cond_0

    .line 2001
    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getConsumoMedio()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    if-ne p4, p3, :cond_1

    .line 2005
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioLigacaoAgua()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    .line 2007
    :cond_1
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioEsgoto()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 2012
    :goto_0
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentBaixoConsumo()Ljava/math/BigDecimal;

    move-result-object p4

    invoke-virtual {p4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    int-to-double v2, p3

    .line 2013
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    .line 2015
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getBaixoConsumo()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le p3, p1, :cond_2

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double p3, p1

    cmpg-double p1, p3, v2

    if-gez p1, :cond_2

    .line 2016
    new-instance p1, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    const/4 p3, 0x4

    invoke-direct {p1, p3}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 2017
    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    :cond_2
    return-void
.end method

.method public verificarConsumoAnormalidade(Lcom/br/ipad/isc/bean/ImovelConta;I)Lcom/br/ipad/isc/bean/ConsumoAnormalidade;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move/from16 v4, p2

    .line 3557
    new-instance v0, Lcom/br/ipad/isc/bean/ConsumoHistorico;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;-><init>()V

    .line 3558
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v2

    .line 3559
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v3

    const/4 v2, 0x1

    .line 3645
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v3, :cond_0

    .line 3567
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getConsumoMedio()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_0

    :cond_0
    if-ne v4, v2, :cond_1

    .line 3571
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioLigacaoAgua()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_0

    .line 3573
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioEsgoto()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3578
    :goto_0
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->dataAtual()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setDataLeitura(Ljava/util/Date;)V

    .line 3581
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v8

    .line 3582
    invoke-virtual {v3, v8}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamento(Ljava/lang/Integer;)V

    .line 3583
    invoke-virtual {v3, v8}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamentoHelper(Ljava/lang/Integer;)V

    .line 3586
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_2

    .line 3587
    new-instance v9, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v9}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    .line 3588
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setId(Ljava/lang/Integer;)V

    .line 3589
    invoke-virtual {v0, v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setAnormalidadeLeituraFaturada(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)V

    .line 3592
    :cond_2
    invoke-virtual {v6, v3}, Lcom/br/ipad/isc/controladores/ControladorConta;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x3

    if-eqz v8, :cond_f

    .line 3599
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-le v14, v15, :cond_8

    .line 3605
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoMedidoMes(Ljava/lang/Integer;)V

    .line 3606
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v14, v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 3607
    invoke-virtual {v0, v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    .line 3611
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getCodigoSituacaoLeituraAnterior()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 3612
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getCodigoSituacaoLeituraAnterior()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eq v9, v2, :cond_4

    if-ne v9, v13, :cond_5

    .line 3616
    :cond_4
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorInformada()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 3617
    invoke-virtual {v0, v5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto :goto_2

    .line 3619
    :cond_5
    invoke-direct {v6, v1, v0, v3}, Lcom/br/ipad/isc/controladores/ControladorConta;->verificarUsoCalculoMedia(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v0

    .line 3622
    :goto_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraLimiteInferior()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lt v9, v14, :cond_7

    .line 3623
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraLimiteSuperior()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-le v9, v14, :cond_6

    goto :goto_3

    .line 3627
    :cond_6
    invoke-virtual {v0, v11}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    goto/16 :goto_6

    .line 3624
    :cond_7
    :goto_3
    new-instance v9, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    const/16 v14, 0xd

    invoke-direct {v9, v14}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 3625
    invoke-virtual {v0, v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    goto/16 :goto_6

    .line 3632
    :cond_8
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v14, v9, :cond_b

    .line 3638
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoMedidoMes(Ljava/lang/Integer;)V

    .line 3639
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 3640
    invoke-virtual {v0, v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    .line 3642
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getCodigoSituacaoLeituraAnterior()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v2, :cond_9

    if-ne v9, v13, :cond_a

    .line 3644
    :cond_9
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorInformada()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 3645
    invoke-virtual {v0, v5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto :goto_4

    .line 3651
    :cond_a
    invoke-direct {v6, v1, v0, v3}, Lcom/br/ipad/isc/controladores/ControladorConta;->verificarUsoCalculoMedia(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v0

    .line 3654
    :goto_4
    new-instance v9, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {v9}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    const/16 v14, 0x1f

    .line 3655
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setId(Ljava/lang/Integer;)V

    .line 3656
    invoke-virtual {v0, v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    goto/16 :goto_6

    .line 3664
    :cond_b
    invoke-virtual {v0, v11}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoMedidoMes(Ljava/lang/Integer;)V

    .line 3665
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 3666
    invoke-virtual {v0, v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    .line 3667
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 3668
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getCodigoSituacaoLeituraAnterior()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getCodigoSituacaoLeituraAnterior()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v13, :cond_d

    .line 3669
    :cond_c
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getCodigoSituacaoLeituraAnterior()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getCodigoSituacaoLeituraAnterior()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v2, :cond_e

    .line 3670
    :cond_d
    new-instance v9, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {v9, v10}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 3671
    invoke-virtual {v0, v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    goto :goto_5

    .line 3673
    :cond_e
    new-instance v9, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    const/4 v14, 0x7

    invoke-direct {v9, v14}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 3674
    invoke-virtual {v0, v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    .line 3679
    :goto_5
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getCodigoSituacaoLeituraAnterior()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v2, :cond_10

    if-eq v9, v13, :cond_10

    .line 3686
    invoke-direct {v6, v1, v0, v3}, Lcom/br/ipad/isc/controladores/ControladorConta;->verificarUsoCalculoMedia(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v0

    goto :goto_6

    :cond_f
    if-nez v8, :cond_10

    .line 3692
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v14

    if-nez v14, :cond_10

    .line 3695
    invoke-virtual {v0, v11}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoMedidoMes(Ljava/lang/Integer;)V

    .line 3696
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 3697
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setLeituraAtual(Ljava/lang/Integer;)V

    .line 3698
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 3699
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getIndcParalizacaoLeitura()Ljava/lang/Integer;

    move-result-object v9

    sget-object v14, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v9, v14}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 3700
    new-instance v9, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    const/16 v14, 0xa

    invoke-direct {v9, v14}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 3701
    invoke-virtual {v0, v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    :cond_10
    :goto_6
    move-object v9, v0

    .line 3708
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v0

    const/4 v14, 0x2

    if-eqz v0, :cond_1c

    .line 3711
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v0

    .line 3712
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v15

    new-instance v12, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v12}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    .line 3711
    invoke-virtual {v0, v15, v12}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    if-nez v8, :cond_15

    .line 3718
    invoke-virtual {v9, v11}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoMedidoMes(Ljava/lang/Integer;)V

    .line 3720
    new-instance v5, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    const/16 v11, 0x11

    invoke-direct {v5, v11}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 3721
    invoke-virtual {v9, v5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    .line 3723
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataInstalacaoHidrometro()Ljava/util/Date;

    move-result-object v5

    .line 3725
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/br/ipad/isc/util/Util;->compararData(Ljava/util/Date;Ljava/util/Date;)I

    move-result v11

    if-ltz v11, :cond_11

    .line 3726
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/br/ipad/isc/util/Util;->compararData(Ljava/util/Date;Ljava/util/Date;)I

    move-result v5

    if-gtz v5, :cond_11

    .line 3728
    new-instance v5, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    const/16 v11, 0x9

    invoke-direct {v5, v11}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 3729
    invoke-virtual {v9, v5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    .line 3734
    :cond_11
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarSemLeitura()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 3735
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarSemLeitura()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_12

    .line 3736
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 3737
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto :goto_7

    .line 3740
    :cond_12
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarSemLeitura()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_13

    .line 3741
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 3742
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    goto :goto_7

    .line 3745
    :cond_13
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarSemLeitura()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v14, :cond_14

    .line 3746
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 3747
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setTipoConsumo(Ljava/lang/Integer;)V

    .line 3756
    :cond_14
    :goto_7
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1c

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_1c

    .line 3757
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getNumeroFatorSemLeitura()Ljava/math/BigDecimal;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 3759
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v10, v5

    .line 3761
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getNumeroFatorSemLeitura()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v10

    double-to-int v0, v12

    .line 3764
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto/16 :goto_9

    :cond_15
    if-eqz v0, :cond_1b

    .line 3772
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarComLeitura()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_1b

    .line 3773
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarComLeitura()Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 3774
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto/16 :goto_8

    .line 3777
    :cond_16
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarComLeitura()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 3778
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_8

    .line 3781
    :cond_17
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarComLeitura()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 3782
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_8

    .line 3785
    :cond_18
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarComLeitura()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_8

    .line 3789
    :cond_19
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarComLeitura()Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 3790
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v7, v5, :cond_1b

    .line 3791
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    goto :goto_8

    .line 3795
    :cond_1a
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarComLeitura()Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 3796
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v7, v5, :cond_1b

    .line 3797
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 3807
    :cond_1b
    :goto_8
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1c

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getNumeroFatorComLeitura()Ljava/math/BigDecimal;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 3809
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v10, v5

    .line 3811
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getNumeroFatorComLeitura()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v10

    double-to-int v0, v12

    .line 3814
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoCobradoMes(Ljava/lang/Integer;)V

    .line 3823
    :cond_1c
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 3824
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v0

    if-ne v4, v2, :cond_1d

    .line 3828
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndcValidaAgua()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1e

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndcValidaAgua()Ljava/lang/Integer;

    move-result-object v0

    sget-object v5, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3830
    invoke-direct {v6, v1, v9, v4}, Lcom/br/ipad/isc/controladores/ControladorConta;->dadosFaturamentoEspecialMedido(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;I)V

    goto :goto_a

    :cond_1d
    if-ne v4, v14, :cond_1e

    .line 3835
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndcValidaEsgoto()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1e

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndcValidaEsgoto()Ljava/lang/Integer;

    move-result-object v0

    sget-object v5, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3836
    invoke-direct {v6, v1, v9, v4}, Lcom/br/ipad/isc/controladores/ControladorConta;->dadosFaturamentoEspecialMedido(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;I)V

    .line 3844
    :cond_1e
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 3845
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndicadorDesconsiderarEstouroAltoConsumo()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 3846
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getIndicadorDesconsiderarEstouroAltoConsumo()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v14, :cond_22

    .line 3850
    :cond_1f
    invoke-direct {v6, v1, v3}, Lcom/br/ipad/isc/controladores/ControladorConta;->verificarNovaLigacao(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/HidrometroInstalado;)Z

    move-result v0

    if-ne v4, v2, :cond_20

    if-nez v0, :cond_22

    .line 3868
    :cond_20
    invoke-virtual {v6, v1, v4, v9, v3}, Lcom/br/ipad/isc/controladores/ControladorConta;->ehImovelCortadoComConsumo(Lcom/br/ipad/isc/bean/ImovelConta;ILcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 3869
    invoke-virtual {v6, v1, v9, v3, v4}, Lcom/br/ipad/isc/controladores/ControladorConta;->verificarEstouroConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 3871
    new-instance v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    .line 3872
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v2

    const/4 v5, 0x6

    .line 3873
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3872
    invoke-virtual {v2, v5, v0}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    .line 3875
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorRegraImovelCondominio()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 3876
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorRegraImovelCondominio()Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3880
    :cond_21
    invoke-virtual {v6, v1, v9, v3, v4}, Lcom/br/ipad/isc/controladores/ControladorConta;->verificarAltoConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;I)V

    .line 3891
    :cond_22
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_25

    .line 3893
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getTipoPoco()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getTipoPoco()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_25

    :cond_23
    if-eqz v8, :cond_25

    .line 3894
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v0

    if-nez v0, :cond_25

    .line 3907
    new-instance v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    .line 3908
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v2

    const/4 v5, 0x4

    .line 3909
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3908
    invoke-virtual {v2, v5, v0}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    .line 3911
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorRegraImovelCondominio()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 3912
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorRegraImovelCondominio()Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3913
    :cond_24
    invoke-virtual {v6, v1, v9, v3, v4}, Lcom/br/ipad/isc/controladores/ControladorConta;->verificarBaixoConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;I)V

    .line 3922
    :cond_25
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_26

    .line 3925
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/controladores/ControladorConta;->recuperarDadosConsumoAnormalidadeAcao(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;ILcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    .line 3928
    :cond_26
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    return-object v0
.end method

.method public verificarEstouroConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 1918
    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getConsumoMedio()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_0
    if-ne p4, v0, :cond_1

    .line 1921
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioLigacaoAgua()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    .line 1923
    :cond_1
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioEsgoto()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    :goto_0
    const/4 p4, 0x0

    .line 1929
    new-instance v1, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    .line 1930
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v2

    const/4 v3, 0x5

    .line 1931
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1930
    invoke-virtual {v2, v4, v1}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v1

    check-cast v1, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    .line 1933
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorRegraImovelCondominio()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1934
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorRegraImovelCondominio()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1939
    :cond_2
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getFatorMultEstouro()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    int-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v4

    invoke-static {v1, v2}, Lcom/br/ipad/isc/util/Util;->arredondar(D)I

    move-result p3

    .line 1940
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    .line 1941
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoMedidoMes()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1942
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoMedidoMes()Ljava/lang/Integer;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    .line 1945
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoEstouro()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le v2, p1, :cond_4

    .line 1946
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le p1, p3, :cond_4

    .line 1948
    new-instance p1, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {p1, v3}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(I)V

    .line 1949
    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public verificarPercentualEsgotoAlternativo(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 2554
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoEsgoto()Ljava/lang/Integer;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoEsgoto()Ljava/lang/Integer;

    move-result-object v0

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2557
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentCobrancaEsgoto()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2558
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentCobrancaEsgoto()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    .line 2562
    :cond_0
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v0

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 2568
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentualAlternativoEsgoto()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2569
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentualAlternativoEsgoto()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_1

    .line 2571
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v0

    .line 2572
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 2571
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v3, v0

    .line 2574
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-double v5, p2

    .line 2576
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->arredondar(D)I

    move-result p2

    .line 2580
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoPercentualAlternativoEsgoto()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 2584
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentualAlternativoEsgoto()Ljava/math/BigDecimal;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2585
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentualAlternativoEsgoto()Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    cmpg-double p2, v3, v1

    if-gez p2, :cond_1

    .line 2586
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentualAlternativoEsgoto()Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    .line 2594
    :cond_1
    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setPercentCobrancaEsgoto(Ljava/math/BigDecimal;)V

    return-void
.end method
