.class public Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;
.super Lcom/br/ipad/isc/impressao/ImpressaoSANEP;
.source "ImpressaoContaSANEP.java"


# static fields
.field private static instancia:Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;


# instance fields
.field private fachada:Lcom/br/ipad/isc/fachada/Fachada;

.field matricula:I

.field y:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->y:I

    add-int/lit8 v0, v0, 0x14

    .line 109
    iput v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->matricula:I

    .line 112
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    return-void
.end method

.method private formatarContaCabecalho(DLjava/lang/String;)V
    .locals 12

    .line 782
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/16 v5, 0x2a3

    const/16 v6, 0x3e

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 785
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2a3

    const/16 v5, 0x57

    const-string v6, " "

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 788
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->retornaDescricaoAbreviadaMesDoAnoMes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 789
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x7

    const/4 v6, 0x1

    const/16 v7, 0x32

    const/16 v8, 0x85

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    .line 788
    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 791
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v7, 0x30

    const/16 v8, 0xd0

    move-object v9, p3

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 793
    iget-object p3, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x32

    const/16 v8, 0x113

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 795
    iget-object p1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getNomeUsuario()Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x7

    const/16 v7, 0xc8

    const/16 v8, 0x8c

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 797
    iget-object p1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getEndereco()Ljava/lang/String;

    move-result-object v9

    const/16 v8, 0xa0

    const/16 v10, 0x32

    const/16 v11, 0x14

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->dividirLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 799
    iget-object p1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "INSCRICAO: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/br/ipad/isc/fachada/Fachada;->formatarInscricao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " GRUPO: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getGrupoFaturamento()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v8, 0xc8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 801
    iget-object p1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PARA ADES\u00c3O AO DEB.AUTOMATICO: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoDebitoAutomaticoFormatado()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v8, 0xdc

    invoke-virtual/range {v4 .. v11}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 803
    iget-object p1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataInicioRelacao()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 804
    iget-object p1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataInicioRelacao()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xa

    .line 805
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 806
    iget-object p2, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0xc8

    const/16 v4, 0xec

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "INICIO RELACAO: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 809
    :cond_0
    iget-object p1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object p2, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 810
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1

    .line 811
    iget-object p2, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->categoriasEconomiasNovo(Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private formatarContaCanhoto(DLjava/lang/String;)V
    .locals 24

    move-object/from16 v8, p0

    .line 731
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/16 v3, 0x3c

    const/16 v4, 0x8e8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 732
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0xf0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 743
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v3, 0x37

    const/16 v4, 0x933

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 744
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0xfa

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 747
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoAgencia()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoAgencia()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 776
    :cond_0
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/16 v3, 0xc8

    const/16 v4, 0x7d0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "DEBITO AUTOMATICO"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 749
    :cond_1
    :goto_0
    invoke-static {}, Lcom/br/ipad/isc/impressao/CodigoDeBarras;->getInstancia()Lcom/br/ipad/isc/impressao/CodigoDeBarras;

    move-result-object v10

    const/4 v0, 0x3

    .line 750
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 751
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v15

    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAnoSemBarra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 752
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDigitoVerificadorConta()Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide/from16 v12, p1

    .line 749
    invoke-virtual/range {v10 .. v23}, Lcom/br/ipad/isc/impressao/CodigoDeBarras;->obterRepresentacaoNumericaCodigoBarra(Ljava/lang/Integer;DLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 754
    new-instance v11, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0xb

    .line 755
    invoke-virtual {v10, v9, v12}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0xc

    .line 756
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x17

    .line 757
    invoke-virtual {v10, v13, v15}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x18

    .line 758
    invoke-virtual {v10, v15, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x23

    .line 759
    invoke-virtual {v10, v7, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x24

    .line 760
    invoke-virtual {v10, v6, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    .line 761
    invoke-virtual {v10, v5, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    .line 762
    invoke-virtual {v10, v4, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 764
    iget-object v3, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v16, 0x99

    const/16 v17, 0x780

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object v13, v3

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 766
    iget-object v13, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v3, 0x5a

    const/16 v4, 0x98d

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 769
    invoke-virtual {v10, v9, v12}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    .line 770
    invoke-virtual {v10, v2, v15}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    const/16 v3, 0x18

    .line 771
    invoke-virtual {v10, v3, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    const/16 v3, 0x24

    .line 772
    invoke-virtual {v10, v3, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 774
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "B I2OF5 1 2 105 60 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x9a6

    invoke-virtual {v8, v3}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->ajusteY(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method private formatarContaMensagem(Lcom/br/ipad/isc/bean/ConsumoHistorico;)V
    .locals 17

    move-object/from16 v8, p0

    const/4 v0, 0x4

    new-array v9, v0, [[I

    const/4 v10, 0x2

    new-array v0, v10, [I

    .line 822
    fill-array-data v0, :array_0

    const/4 v11, 0x0

    aput-object v0, v9, v11

    new-array v0, v10, [I

    fill-array-data v0, :array_1

    const/4 v12, 0x1

    aput-object v0, v9, v12

    new-array v0, v10, [I

    fill-array-data v0, :array_2

    aput-object v0, v9, v10

    new-array v0, v10, [I

    fill-array-data v0, :array_3

    const/4 v13, 0x3

    aput-object v0, v9, v13

    const-string v14, ""

    if-eqz p1, :cond_4

    .line 829
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getMensagemConta()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 831
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getMensagemConta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x41

    const/16 v2, 0x40

    if-le v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getMensagemConta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getMensagemConta()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 832
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getMensagemConta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x81

    const/16 v3, 0x80

    if-le v0, v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getMensagemConta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_1

    :cond_1
    move-object v13, v14

    .line 833
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getMensagemConta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc1

    const/16 v2, 0xc0

    if-le v0, v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getMensagemConta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    goto :goto_2

    :cond_2
    move-object v15, v14

    .line 834
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getMensagemConta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xec

    if-le v0, v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getMensagemConta()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xed

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 836
    :cond_3
    iget-object v7, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    aget-object v0, v9, v11

    aget v3, v0, v11

    aget-object v0, v9, v11

    aget v4, v0, v12

    const/4 v6, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v10, v7

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 837
    iget-object v10, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    aget-object v0, v9, v12

    aget v3, v0, v11

    aget-object v0, v9, v12

    aget v4, v0, v12

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v5, v13

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 838
    iget-object v10, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    aget-object v3, v9, v0

    aget v3, v3, v11

    aget-object v4, v9, v0

    aget v4, v4, v12

    move-object/from16 v0, p0

    move-object v5, v15

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 839
    iget-object v10, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    aget-object v3, v9, v0

    aget v3, v3, v11

    aget-object v0, v9, v0

    aget v0, v0, v12

    add-int/lit8 v4, v0, 0x1e

    move-object/from16 v0, p0

    move-object v5, v14

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 843
    :cond_4
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta1()Ljava/lang/String;

    move-result-object v0

    const/16 v10, 0x3c

    if-eqz v0, :cond_6

    .line 845
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_5

    .line 846
    iget-object v15, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    aget-object v0, v9, v11

    aget v3, v0, v11

    aget-object v0, v9, v11

    aget v4, v0, v12

    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 848
    :cond_5
    iget-object v15, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    aget-object v0, v9, v11

    aget v3, v0, v11

    aget-object v0, v9, v11

    aget v4, v0, v12

    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta1()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 853
    :cond_6
    :goto_3
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 855
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_7

    .line 856
    iget-object v15, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    aget-object v0, v9, v12

    aget v3, v0, v11

    aget-object v0, v9, v12

    aget v4, v0, v12

    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 858
    :cond_7
    iget-object v15, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    aget-object v0, v9, v12

    aget v3, v0, v11

    aget-object v0, v9, v12

    aget v4, v0, v12

    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta2()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 863
    :cond_8
    :goto_4
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta3()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 865
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_9

    .line 866
    iget-object v15, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v0, 0x2

    aget-object v3, v9, v0

    aget v3, v3, v11

    aget-object v0, v9, v0

    aget v4, v0, v12

    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 868
    :cond_9
    iget-object v15, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v0, 0x2

    aget-object v3, v9, v0

    aget v3, v3, v11

    aget-object v0, v9, v0

    aget v4, v0, v12

    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta3()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 872
    :cond_a
    :goto_5
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta4()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta4()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 874
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v10, :cond_b

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_6

    :cond_b
    move-object v5, v0

    .line 875
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x78

    if-le v1, v10, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_7

    :cond_c
    move-object v10, v14

    .line 876
    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_d

    const/16 v1, 0xb4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    goto :goto_8

    :cond_d
    move-object v15, v14

    .line 878
    :goto_8
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 879
    iget-object v7, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    aget-object v0, v9, v13

    aget v3, v0, v11

    aget-object v0, v9, v13

    aget v4, v0, v12

    const/4 v6, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v12, v7

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 881
    :cond_e
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 882
    iget-object v12, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    aget-object v0, v9, v13

    aget v3, v0, v11

    aget-object v0, v9, v13

    const/4 v4, 0x1

    aget v0, v0, v4

    add-int/lit8 v4, v0, 0x14

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v5, v10

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 884
    :cond_f
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 885
    iget-object v10, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    aget-object v0, v9, v13

    aget v3, v0, v11

    aget-object v0, v9, v13

    const/4 v4, 0x1

    aget v0, v0, v4

    add-int/lit8 v4, v0, 0x28

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v5, v15

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_10
    :goto_9
    return-void

    :array_0
    .array-data 4
        0x2d
        0x79e
    .end array-data

    :array_1
    .array-data 4
        0x2d
        0x492
    .end array-data

    :array_2
    .array-data 4
        0x2d
        0x7c6
    .end array-data

    :array_3
    .array-data 4
        0x2d
        0x7da
    .end array-data
.end method

.method private formatarDadosHidrometroLeitura(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;)V
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    const-string v10, ""

    if-eqz p7, :cond_0

    .line 655
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p7 .. p7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoTipoPorId(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoTipo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoTipo;->getDescricao()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 657
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoTipo;->getDescricao()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v10

    :goto_0
    if-eqz p8, :cond_1

    .line 662
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p8 .. p8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoTipoPorId(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoTipo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 663
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoTipo;->getDescricao()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoTipo;->getDescricao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v11, v0

    .line 669
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoAgua(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    .line 670
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v12, 0x0

    const/16 v1, 0xd

    if-le v0, v1, :cond_2

    .line 671
    iget-object v13, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0xa5

    const/16 v6, 0x1a4

    invoke-virtual {v5, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v6

    move v6, v7

    move v7, v14

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 673
    :cond_2
    iget-object v13, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0xa5

    const/16 v4, 0x1a4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 677
    :goto_1
    iget-object v13, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x235

    const/16 v4, 0x1a4

    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v5, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 678
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigEsgoto()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoEsgoto(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 677
    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v9, :cond_3

    .line 682
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 685
    :cond_3
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v2, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->obterTombamento(Lcom/br/ipad/isc/bean/ImovelConta;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, v0

    .line 689
    :goto_2
    iget-object v13, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x37

    const/16 v4, 0x1d6

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 692
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v4, 0x184

    move-object v0, p0

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 695
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v3, 0xf5

    move-object v0, p0

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 698
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v3, 0x190

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x14

    if-le v0, v5, :cond_4

    invoke-virtual {v11, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_3

    :cond_4
    move-object v5, v11

    :goto_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 701
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x55

    const/16 v4, 0x212

    if-eqz p9, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_4

    :cond_5
    move-object v5, v10

    :goto_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 704
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x127

    const/16 v4, 0x1d6

    if-eqz p7, :cond_6

    invoke-virtual/range {p7 .. p7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 705
    invoke-virtual/range {p7 .. p7}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_5

    :cond_6
    move-object v5, v10

    :goto_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 704
    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 708
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x118

    const/16 v4, 0x212

    if-eqz p9, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_6

    :cond_7
    move-object v5, v10

    :goto_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 711
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigEsgoto()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigEsgoto()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 713
    :cond_8
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x1c7

    const/16 v4, 0x1d6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, " "

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 716
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v3, 0x2ad

    if-eqz p8, :cond_9

    invoke-virtual/range {p8 .. p8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 717
    invoke-virtual/range {p8 .. p8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_9
    move-object v5, v10

    :goto_7
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p1, p0

    move/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, v3

    move/from16 p5, v4

    move-object/from16 p6, v5

    move/from16 p7, v6

    move/from16 p8, v7

    .line 716
    invoke-virtual/range {p1 .. p8}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 720
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x1e5

    const/16 v4, 0x212

    if-eqz p10, :cond_a

    invoke-virtual/range {p10 .. p10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorInformada()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 721
    invoke-virtual/range {p10 .. p10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorInformada()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_a
    move-object v5, v10

    :goto_8
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p1, p0

    move/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, v3

    move/from16 p5, v4

    move-object/from16 p6, v5

    move/from16 p7, v6

    move/from16 p8, v7

    .line 720
    invoke-virtual/range {p1 .. p8}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 724
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x2bc

    const/16 v4, 0x212

    if-eqz p10, :cond_b

    invoke-virtual/range {p10 .. p10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 725
    invoke-virtual/range {p10 .. p10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_b
    move-object v5, v10

    :goto_9
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p1, p0

    move/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, v3

    move/from16 p5, v4

    move-object/from16 p6, v5

    move/from16 p7, v6

    move/from16 p8, v7

    .line 724
    invoke-virtual/range {p1 .. p8}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_c
    return-void
.end method

.method private formatarDadosQualidadeAgua()V
    .locals 11

    .line 614
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 615
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdLocalidade()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdSetorComercial()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarQualidadeAguaPorLocalidadeSetorComercial(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/QualidadeAgua;

    move-result-object v0

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdLocalidade()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarQualidadeAguaPorLocalidade(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/QualidadeAgua;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    new-instance v1, Lcom/br/ipad/isc/bean/QualidadeAgua;

    invoke-direct {v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;-><init>()V

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisar(Lcom/br/ipad/isc/bean/ObjetoBasico;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/QualidadeAgua;

    .line 626
    :cond_1
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa0

    const/16 v6, 0x269

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeTurbidezExigidas()Ljava/lang/Integer;

    move-result-object v2

    const-string v10, ""

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeTurbidezExigidas()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_0

    :cond_2
    move-object v7, v10

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 627
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xf7

    const/16 v6, 0x269

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeTurbidezAnalisadas()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeTurbidezAnalisadas()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_1

    :cond_3
    move-object v7, v10

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 628
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x14e

    const/16 v6, 0x269

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeTurbidezConforme()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeTurbidezConforme()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_2

    :cond_4
    move-object v7, v10

    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 631
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa0

    const/16 v6, 0x27d

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCorExigidas()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCorExigidas()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_3

    :cond_5
    move-object v7, v10

    :goto_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 632
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xf7

    const/16 v6, 0x27d

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCorAnalisadas()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCorAnalisadas()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_4

    :cond_6
    move-object v7, v10

    :goto_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 633
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x14e

    const/16 v6, 0x27d

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCorConforme()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCorConforme()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_5

    :cond_7
    move-object v7, v10

    :goto_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 636
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa0

    const/16 v6, 0x291

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCloroExigidas()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCloroExigidas()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_6

    :cond_8
    move-object v7, v10

    :goto_6
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 637
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xf7

    const/16 v6, 0x291

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCloroAnalisadas()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCloroAnalisadas()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_7

    :cond_9
    move-object v7, v10

    :goto_7
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 638
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x14e

    const/16 v6, 0x291

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCloroConforme()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCloroConforme()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_8

    :cond_a
    move-object v7, v10

    :goto_8
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 641
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa0

    const/16 v6, 0x2a5

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTotaisExigidas()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTotaisExigidas()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_9

    :cond_b
    move-object v7, v10

    :goto_9
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 642
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xf7

    const/16 v6, 0x2a5

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTotaisAnalisadas()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTotaisAnalisadas()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_a

    :cond_c
    move-object v7, v10

    :goto_a
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 643
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x14e

    const/16 v6, 0x2a5

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTotaisConforme()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTotaisConforme()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_b

    :cond_d
    move-object v7, v10

    :goto_b
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 646
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa0

    const/16 v6, 0x2b9

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTermoTolerantesExigidas()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTermoTolerantesExigidas()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_c

    :cond_e
    move-object v7, v10

    :goto_c
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 647
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xf7

    const/16 v6, 0x2b9

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTermoTolerantesAnalisadas()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTermoTolerantesAnalisadas()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_d

    :cond_f
    move-object v7, v10

    :goto_d
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 648
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x14e

    const/16 v6, 0x2b9

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTermoTolerantesConforme()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTermoTolerantesConforme()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_10
    move-object v7, v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private formatarDescricaoValorServicos(Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 357
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorModeloImpressora()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 358
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->IMPRESSORA_ANTIGA:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v0, v10, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    .line 366
    :goto_0
    iget-object v14, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x20d

    const/16 v4, 0x2f8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "CONSUMO"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v14, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v3, 0x280

    const-string v5, "TOTAL(R$)"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 368
    iget-object v14, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    const/16 v4, 0x30c

    const-string v5, "AGUA"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v0, 0x30c

    .line 370
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v8, v9, v0, v1, v12}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->gerarLinhasTarifaAgua(Lcom/br/ipad/isc/bean/ConsumoHistorico;Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ImovelConta;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 371
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v1, v0, 0x0

    add-int/2addr v1, v11

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    mul-int/lit8 v14, v0, 0x19

    .line 377
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v8, v12, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->gerarLinhasTarifaPoco(ZLcom/br/ipad/isc/bean/ImovelConta;)Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_8

    move v2, v14

    const/4 v0, 0x0

    .line 380
    :goto_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 381
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StringBuilder;

    move-object/from16 v16, v2

    check-cast v16, [Ljava/lang/StringBuilder;

    add-int/lit8 v17, v0, 0x1

    mul-int/lit8 v2, v17, 0x19

    add-int v18, v14, v2

    add-int/lit8 v19, v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v11, :cond_3

    if-ne v0, v10, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x2

    .line 390
    :cond_3
    :goto_3
    aget-object v1, v16, v12

    if-eqz v1, :cond_4

    .line 391
    iget-object v7, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x35

    const/16 v4, 0x32a

    aget-object v5, v16, v12

    mul-int/lit8 v6, v0, 0xa

    move-object/from16 v0, p0

    move-object v12, v7

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 394
    :cond_4
    aget-object v0, v16, v11

    if-eqz v0, :cond_5

    .line 395
    iget-object v12, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x212

    const/16 v4, 0x32a

    aget-object v5, v16, v11

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 397
    :cond_5
    aget-object v0, v16, v10

    if-eqz v0, :cond_6

    .line 398
    iget-object v12, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x2a8

    const/16 v4, 0x32a

    aget-object v5, v16, v10

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_6
    move/from16 v0, v17

    move/from16 v2, v18

    move/from16 v1, v19

    const/4 v12, 0x0

    goto :goto_2

    :cond_7
    move v14, v2

    :cond_8
    const/16 v0, 0x64

    .line 411
    iget-object v2, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const/16 v12, 0x1d

    invoke-virtual {v8, v12, v1, v0, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->retornaIndicadorDiscriminar(IICLcom/br/ipad/isc/bean/ImovelConta;)I

    move-result v0

    .line 412
    iget-object v2, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v8, v0, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->gerarLinhasDebitosCobrados(ILcom/br/ipad/isc/bean/ImovelConta;)Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_d

    move v2, v14

    const/4 v0, 0x0

    .line 415
    :goto_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_c

    .line 416
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, [Ljava/lang/StringBuilder;

    add-int/lit8 v17, v0, 0x1

    mul-int/lit8 v0, v17, 0x22

    add-int v18, v14, v0

    add-int/lit8 v19, v1, 0x1

    const/4 v0, 0x0

    .line 419
    aget-object v1, v16, v0

    if-eqz v1, :cond_9

    .line 420
    iget-object v7, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x35

    const/16 v4, 0x32a

    aget-object v5, v16, v0

    const/4 v6, 0x0

    mul-int/lit8 v0, v17, 0x19

    add-int v20, v0, v14

    move-object/from16 v0, p0

    move-object v12, v7

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 422
    :cond_9
    aget-object v0, v16, v11

    if-eqz v0, :cond_a

    .line 423
    iget-object v12, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x212

    const/16 v4, 0x32a

    aget-object v5, v16, v11

    const/4 v6, 0x0

    mul-int/lit8 v0, v17, 0x19

    add-int v7, v0, v14

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 425
    :cond_a
    aget-object v0, v16, v10

    if-eqz v0, :cond_b

    .line 426
    iget-object v12, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x2a8

    const/16 v4, 0x32a

    aget-object v5, v16, v10

    const/4 v6, 0x0

    mul-int/lit8 v0, v17, 0x19

    add-int v7, v0, v14

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_b
    move/from16 v0, v17

    move/from16 v2, v18

    move/from16 v1, v19

    const/16 v12, 0x1d

    goto :goto_4

    :cond_c
    move v14, v2

    :cond_d
    const/16 v0, 0x63

    .line 431
    iget-object v2, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const/16 v3, 0x1d

    invoke-virtual {v8, v3, v1, v0, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->retornaIndicadorDiscriminar(IICLcom/br/ipad/isc/bean/ImovelConta;)I

    move-result v0

    .line 432
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v8, v0, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->gerarLinhasCreditosRealizados(ILcom/br/ipad/isc/bean/ImovelConta;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_11

    move v1, v14

    const/4 v0, 0x0

    .line 435
    :goto_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_10

    .line 436
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, [Ljava/lang/StringBuilder;

    add-int/lit8 v16, v0, 0x1

    mul-int/lit8 v0, v16, 0x22

    add-int v17, v14, v0

    const/4 v0, 0x0

    .line 439
    aget-object v1, v15, v0

    if-eqz v1, :cond_e

    .line 440
    iget-object v7, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x35

    const/16 v4, 0x32a

    aget-object v5, v15, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    mul-int/lit8 v0, v16, 0x19

    add-int v18, v0, v14

    move-object/from16 v0, p0

    move-object v10, v7

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 443
    :cond_e
    aget-object v0, v15, v11

    if-eqz v0, :cond_f

    .line 444
    iget-object v10, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x2a8

    const/16 v4, 0x32a

    aget-object v0, v15, v11

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    mul-int/lit8 v0, v16, 0x19

    add-int v7, v0, v14

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_f
    move/from16 v0, v16

    move/from16 v1, v17

    const/4 v10, 0x2

    goto :goto_5

    :cond_10
    move v14, v1

    .line 450
    :cond_11
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v8, v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->gerarLinhasImpostosRetidos(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_17

    const/4 v12, 0x0

    .line 452
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_17

    .line 453
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [Ljava/lang/String;

    if-eqz v12, :cond_13

    if-ne v12, v11, :cond_12

    goto :goto_7

    :cond_12
    const/4 v0, 0x1

    goto :goto_8

    :cond_13
    :goto_7
    move v0, v12

    :goto_8
    const/4 v1, 0x0

    .line 460
    aget-object v2, v15, v1

    if-eqz v2, :cond_14

    .line 461
    iget-object v7, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x35

    const/16 v5, 0x32a

    aget-object v6, v15, v1

    mul-int/lit8 v16, v0, 0xa

    add-int/lit8 v0, v12, 0x1

    mul-int/lit8 v0, v0, 0x19

    add-int v17, v0, v14

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v6, v16

    move-object v11, v7

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    .line 464
    :cond_14
    aget-object v0, v15, v11

    if-eqz v0, :cond_15

    .line 465
    iget-object v7, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x212

    const/16 v4, 0x32a

    aget-object v5, v15, v11

    const/4 v6, 0x0

    add-int/lit8 v0, v12, 0x1

    mul-int/lit8 v0, v0, 0x19

    add-int v16, v0, v14

    move-object/from16 v0, p0

    move-object v11, v7

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_15
    const/4 v11, 0x2

    .line 467
    aget-object v0, v15, v11

    if-eqz v0, :cond_16

    .line 468
    iget-object v7, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x2a8

    const/16 v4, 0x32a

    aget-object v5, v15, v11

    const/4 v6, 0x0

    add-int/lit8 v0, v12, 0x1

    mul-int/lit8 v0, v0, 0x19

    add-int v15, v0, v14

    move-object/from16 v0, p0

    move-object v11, v7

    move v7, v15

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_16
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x1

    goto/16 :goto_6

    .line 474
    :cond_17
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v0

    if-eqz v0, :cond_1c

    if-eqz v9, :cond_19

    .line 477
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_9

    :cond_18
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_19
    if-eqz p2, :cond_1b

    .line 479
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_a

    :cond_1a
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    :cond_1b
    :goto_b
    iget-object v12, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x2d

    const/16 v4, 0x550

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "CONSUMO RATEIO (m3):"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 482
    iget-object v12, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v3, 0x12c

    move-object/from16 v0, p0

    move-object v5, v10

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1c
    if-eqz v9, :cond_26

    .line 493
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v0

    const-string v14, "Leitura Faturada de \u00c1gua:  "

    const/16 v15, 0x12

    if-eqz v0, :cond_21

    .line 494
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 495
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getDescricaoAnormalidadeLeitura()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 496
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getDescricaoAnormalidadeLeitura()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_1d

    .line 497
    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_c

    :cond_1d
    move-object/from16 v16, v11

    .line 500
    :goto_c
    iget-object v7, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eqz v13, :cond_1e

    const/16 v3, 0x23

    goto :goto_d

    :cond_1e
    const/16 v3, 0x2d

    :goto_d
    const/16 v4, 0x578

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "Ocorrencia de Anormalidade de Leitura de \u00c1gua: "

    if-le v5, v15, :cond_1f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    .line 501
    invoke-virtual {v0, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_1f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    const/4 v6, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v10, v7

    move/from16 v7, v17

    .line 500
    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 502
    iget-object v10, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eqz v13, :cond_20

    const/16 v3, 0x23

    goto :goto_f

    :cond_20
    const/16 v3, 0x2d

    :goto_f
    const/16 v4, 0x591

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_21
    move-object/from16 v16, v11

    .line 505
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getDescricao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 506
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getDescricao()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_22

    .line 507
    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    .line 510
    :cond_22
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eqz v13, :cond_23

    const/16 v3, 0x23

    goto :goto_11

    :cond_23
    const/16 v3, 0x2d

    :goto_11
    const/16 v4, 0x6d6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "Ocorrencia de Anormalidade de Consumo de \u00c1gua: "

    if-le v5, v15, :cond_24

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    .line 511
    invoke-virtual {v0, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_12
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    .line 510
    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 512
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eqz v13, :cond_25

    const/16 v3, 0x23

    goto :goto_13

    :cond_25
    const/16 v3, 0x2d

    :goto_13
    const/16 v4, 0x6ef

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_26
    if-eqz p2, :cond_32

    .line 517
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v0

    const-string v9, "Leitura Faturada de Esgoto:  "

    const/16 v10, 0x8

    const/4 v14, 0x3

    const/16 v15, 0xe

    if-eqz v0, :cond_2c

    .line 518
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 519
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getDescricaoAnormalidadeLeitura()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 520
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getDescricaoAnormalidadeLeitura()Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_27

    .line 521
    invoke-virtual/range {p4 .. p4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 524
    :cond_27
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigEsgoto()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigEsgoto()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 525
    :cond_28
    iget-object v7, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eqz v13, :cond_29

    const/16 v3, 0x23

    goto :goto_14

    :cond_29
    const/16 v3, 0x2d

    :goto_14
    const/16 v4, 0x70d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "Ocorrencia de Anormalidade de Leitura de Esgoto: "

    if-le v5, v15, :cond_2a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    .line 526
    invoke-virtual {v0, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_2a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    const/4 v6, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v12, v7

    move/from16 v7, v16

    .line 525
    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 527
    iget-object v12, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eqz v13, :cond_2b

    const/16 v3, 0x23

    goto :goto_16

    :cond_2b
    const/16 v3, 0x2d

    :goto_16
    const/16 v4, 0x726

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v5, v11

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 531
    :cond_2c
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getDescricao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 532
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getDescricao()Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_2d

    .line 533
    invoke-virtual/range {p4 .. p4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    .line 536
    :cond_2d
    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigEsgoto()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigEsgoto()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 537
    :cond_2e
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eqz v13, :cond_2f

    const/16 v3, 0x23

    goto :goto_17

    :cond_2f
    const/16 v3, 0x2d

    :goto_17
    const/16 v4, 0x613

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "Ocorrencia de Anormalidade de Consumo de Esgoto: "

    if-le v5, v15, :cond_30

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    .line 538
    invoke-virtual {v0, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_30
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_18
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    .line 537
    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 539
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eqz v13, :cond_31

    const/16 v3, 0x23

    goto :goto_19

    :cond_31
    const/16 v3, 0x2d

    :goto_19
    const/16 v4, 0x62c

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v5, v11

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 544
    :cond_32
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x3170a

    if-ne v0, v1, :cond_33

    .line 545
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x1e

    const/16 v4, 0x5a0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "Informamos que, conforme previsto na legisla\u00e7\u00e3o vigente"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 546
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v4, 0x5be

    const-string v5, "(art. 7\u00ba da Lei n\u00ba 6.294/15), os valores dos servi\u00e7os de"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 547
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v4, 0x5dc

    const-string v5, "\u00e1gua, esgoto e servi\u00e7o b\u00e1sico, bem como os demais servi\u00e7os "

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 548
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v4, 0x5fa

    const-string v5, "prestados pelo SANEP, e a Taxa de Lixo ser\u00e3o reajustados a "

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 549
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v4, 0x618

    const-string v5, "partir da compet\u00eancia 07/2025. O reajuste ser\u00e1 de 5,53% "

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 550
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v4, 0x636

    const-string v5, "para as tarifas de \u00e1gua, esgoto e servi\u00e7o b\u00e1sico e demais "

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 551
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v4, 0x654

    const-string v5, "servi\u00e7os prestados pelo SANEP. A Taxa de Lixo ser\u00e1 reajustada"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 552
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v4, 0x672

    const-string v5, "com base na Unidade de Refer\u00eancia Municipal (URM) tribut\u00e1ria"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 553
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v4, 0x690

    const-string v5, "vigente em janeiro do ano de 2025. "

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 556
    :cond_33
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0xa0

    const/16 v4, 0x73a

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 558
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorContaAguaEsgoto(Ljava/lang/Integer;)D

    move-result-wide v0

    .line 559
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v3, Ljava/math/BigDecimal;

    const-string v4, "0.65"

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    new-instance v3, Ljava/math/BigDecimal;

    const-string v4, "100"

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 559
    invoke-static {v2, v3}, Lcom/br/ipad/isc/util/Util;->dividirArredondando(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 561
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "3.00"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v3, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 561
    invoke-static {v0, v1}, Lcom/br/ipad/isc/util/Util;->dividirArredondando(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 563
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 564
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 565
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x140

    const/16 v4, 0x74d

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->formatarMoedaReal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private formatarHistoricoConsumo(II)V
    .locals 17

    move-object/from16 v8, p0

    .line 570
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoAnterioresPorImovelTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x2

    const-string v13, ""

    if-eqz v9, :cond_1

    const/4 v14, 0x0

    .line 572
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_1

    .line 573
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getTipoLigacao()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-ge v14, v10, :cond_0

    .line 575
    iget-object v15, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x1a4

    const/16 v4, 0x258

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnoMesReferencia()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    mul-int/lit8 v16, v14, 0x21

    move-object/from16 v0, p0

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 578
    iget-object v15, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v3, 0x1fe

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getConsumo()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/br/ipad/isc/util/Util;->adicionarZerosEsquerdaNumero(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 581
    :cond_0
    iget-object v15, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x280

    const/16 v4, 0x1f5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnoMesReferencia()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    mul-int/lit8 v16, v14, 0x21

    move-object/from16 v0, p0

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 584
    iget-object v15, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v3, 0x2da

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getConsumo()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/br/ipad/isc/util/Util;->adicionarZerosEsquerdaNumero(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 589
    :cond_1
    iget-object v14, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x280

    const/16 v4, 0x2bc

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "MEDIA:"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 590
    iget-object v14, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/16 v3, 0x2cb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "55"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/br/ipad/isc/util/Util;->adicionarZerosEsquerdaNumero(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v0, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoAnterioresPorImovelTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 595
    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const-string v15, "/"

    if-ge v11, v0, :cond_4

    .line 596
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getTipoLigacao()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v9, :cond_2

    .line 598
    iget-object v7, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x1a4

    const/16 v4, 0x258

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnoMesReferencia()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    mul-int/lit8 v16, v11, 0x21

    move-object/from16 v0, p0

    move-object v12, v7

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    if-ge v11, v10, :cond_3

    .line 602
    iget-object v12, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x221

    const/16 v4, 0x258

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getConsumo()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6, v5}, Lcom/br/ipad/isc/util/Util;->adicionarZerosEsquerdaNumero(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    mul-int/lit8 v7, v11, 0x21

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 605
    :cond_3
    iget-object v12, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x2fd

    const/16 v4, 0x1f5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getConsumo()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6, v5}, Lcom/br/ipad/isc/util/Util;->adicionarZerosEsquerdaNumero(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    mul-int/lit8 v7, v11, 0x21

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x2

    goto/16 :goto_2

    .line 609
    :cond_4
    iget-object v9, v8, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x2ee

    const/16 v4, 0x2bc

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6, v5}, Lcom/br/ipad/isc/util/Util;->adicionarZerosEsquerdaNumero(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_5
    return-void
.end method

.method public static getInstancia(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;
    .locals 1

    .line 119
    sget-object v0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->instancia:Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;

    invoke-direct {v0}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->instancia:Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;

    .line 122
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->instancia:Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;

    iput-object p0, v0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 123
    sget-object p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->instancia:Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;

    return-object p0
.end method

.method private imprimirContaLayoutNovo(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;II)V
    .locals 15

    move-object v9, p0

    move-object/from16 v10, p5

    .line 320
    iget-object v0, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    const-string v1, "! 0 816 816 2594 1\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->IMPRESSORA_ANTIGA:Ljava/lang/Integer;

    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorModeloImpressora()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 323
    iput-boolean v0, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->modeloImpressora:Z

    .line 327
    :cond_0
    iget-object v0, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorConta(Ljava/lang/Integer;)D

    move-result-wide v11

    .line 329
    iget-object v0, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataVencimento()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 331
    iget-object v0, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p0, v11, v12, v13, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formatarContaCabecalho(DLjava/lang/String;Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v14, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    iget-object v8, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v8}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formatarDadosHidrometroLeitura(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget-object v0, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formatarDadosQualidadeAgua(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget-object v0, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    move/from16 v2, p9

    move/from16 v3, p10

    invoke-virtual {p0, v2, v3, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formatarHistoricoConsumo(IILcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    .line 339
    invoke-direct {p0, v10, v0, v1, v2}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formatarDescricaoValorServicos(Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;)V

    .line 341
    invoke-direct {p0, v10}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formatarContaMensagem(Lcom/br/ipad/isc/bean/ConsumoHistorico;)V

    .line 343
    iget-object v0, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p0, v11, v12, v13, v1}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->formatarContaCanhoto(DLjava/lang/String;Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    iget-object v0, v9, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->comandoImpressao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method protected comandoImpressao()Ljava/lang/String;
    .locals 1

    .line 128
    invoke-super {p0}, Lcom/br/ipad/isc/impressao/ImpressaoSANEP;->comandoImpressao()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public imprimirConta(Z)Ljava/lang/StringBuilder;
    .locals 14

    .line 132
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->setImpressoraCPCL(Z)V

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "N\u00c3O MEDIDO"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 148
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v10

    .line 150
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 151
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v11

    .line 153
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 154
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v8

    .line 156
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 157
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v9}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v9

    const/4 v0, 0x0

    if-eqz v10, :cond_5

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v3, v10}, Lcom/br/ipad/isc/fachada/Fachada;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_11

    .line 170
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 172
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 176
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 181
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 185
    :cond_1
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 187
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 190
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    :cond_2
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 196
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 199
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 201
    :cond_4
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_5
    if-eqz v11, :cond_b

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    iget-object v3, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v3, v11}, Lcom/br/ipad/isc/fachada/Fachada;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_11

    .line 219
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 221
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 225
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 231
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 235
    :cond_7
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 236
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 239
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    :cond_8
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 245
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 248
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getQtdDiasAjustado()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 250
    :cond_a
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_b
    if-nez v10, :cond_11

    if-nez v11, :cond_11

    if-eqz v8, :cond_e

    .line 262
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 263
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    :cond_c
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4

    :cond_d
    const/4 p1, 0x0

    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 267
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 270
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_e
    if-eqz v9, :cond_11

    .line 275
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 276
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    :cond_f
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_5

    :cond_10
    const/4 p1, 0x0

    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 280
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 283
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getDiasConsumo()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_11
    :goto_6
    if-eqz v10, :cond_12

    .line 294
    invoke-virtual {v10}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getConsumoMedio()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_7
    move v12, p1

    goto :goto_8

    :cond_12
    if-eqz v8, :cond_13

    .line 297
    iget-object p1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioLigacaoAgua()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_7

    :cond_13
    const/4 v12, 0x0

    :goto_8
    if-eqz v11, :cond_14

    .line 301
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getConsumoMedio()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_9
    move v13, p1

    goto :goto_a

    :cond_14
    if-eqz v9, :cond_15

    .line 304
    iget-object p1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioEsgoto()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_9

    :cond_15
    const/4 v13, 0x0

    .line 308
    :goto_a
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p1

    if-eqz p1, :cond_16

    move-object v3, p0

    .line 310
    invoke-direct/range {v3 .. v13}, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->imprimirContaLayoutNovo(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;II)V

    .line 314
    :cond_16
    iget-object p1, p0, Lcom/br/ipad/isc/impressao/ImpressaoContaSANEP;->buffer:Ljava/lang/StringBuilder;

    return-object p1
.end method
