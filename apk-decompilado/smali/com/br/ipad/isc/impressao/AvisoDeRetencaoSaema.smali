.class public Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;
.super Lcom/br/ipad/isc/impressao/ImpressaoSAEMA;
.source "AvisoDeRetencaoSaema.java"


# static fields
.field private static codigoFebraban:Ljava/lang/String;

.field private static instancia:Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;


# instance fields
.field private existeDebito:Z

.field private isImpressoraCPCL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/br/ipad/isc/impressao/ImpressaoSAEMA;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->existeDebito:Z

    return-void
.end method

.method public static getInstancia(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/String;)Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;
    .locals 1

    .line 21
    sget-object v0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->instancia:Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;

    invoke-direct {v0}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->instancia:Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;

    .line 25
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->instancia:Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;

    iput-object p0, v0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 26
    sput-object p1, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->codigoFebraban:Ljava/lang/String;

    .line 27
    sget-object p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->instancia:Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;

    return-object p0
.end method


# virtual methods
.method public imprimirConta(Z)Ljava/lang/StringBuilder;
    .locals 13

    const-string v0, ""

    const-string v9, "\n"

    .line 34
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->setImpressoraCPCL(Z)V

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->buffer:Ljava/lang/StringBuilder;

    :try_start_0
    const-string v1, "! 0 816 0 2594 1\n"

    .line 39
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/16 v4, 0xc8

    const/16 v5, 0xc4

    .line 42
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v6, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/br/ipad/isc/fachada/Fachada;->formatarInscricao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->appendTexto(Ljava/lang/String;)V

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T 7 0 675 50 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->appendTexto(Ljava/lang/String;)V

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T 7 1 50 115 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0xc8

    const/16 v5, 0x73

    .line 52
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNomeUsuario()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0xc8

    const/16 v5, 0x88

    .line 53
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getEndereco()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x32

    const/16 v8, 0x14

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->dividirLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->appendTexto(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoDebitoAutomatico()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoDebitoAutomatico()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xd

    .line 55
    iget-object v2, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoDebitoAutomatico()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/br/ipad/isc/util/Util;->adicionarZerosEsquerdaNumero(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "T 7 0 200 216 C\u00f3digo D\u00e9bito Autom\u00e1tico: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->appendTexto(Ljava/lang/String;)V

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getSequencialRota()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/br/ipad/isc/util/Util;->formatarGrupoRotaESequencial(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->appendTexto(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->gerarCategoriaSubcategoria(Ljava/lang/Integer;)V

    const-string v1, "N\u00c3O MEDIDO"

    .line 64
    iget-object v2, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v3, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 65
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v2

    .line 66
    iget-object v3, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v4, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 67
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 72
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    move-object v6, v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x2a

    const/16 v5, 0x1c2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 74
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->appendTexto(Ljava/lang/String;)V

    const-string v9, "PREZADO(A) CLIENTE,"

    const-string v10, "A SUA CONTA DE AGUA DESTE MES FICOU RETIDA PARA ANALISE NO SANEP"

    const-string v11, "AGUARDE QUE SUA CONTA SERA ENTREGUE, ANTES DO VENCIMENTO"

    const-string v12, "EVITE DESPERDICIOS, VERIFICANDO POSSIVEIS VAZAMENTOS NAS SUAS INSTALACOES INTERNAS"

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/16 v4, 0xc8

    const-string v6, "AVISO DE RETENCAO DE CONTA"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v5, 0x2f8

    move-object v1, p0

    .line 86
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->appendTexto(Ljava/lang/String;)V

    const/16 v5, 0x32a

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/16 v4, 0x28

    const/16 v7, 0x2d

    const/16 v8, 0x19

    move-object v1, p0

    move-object v6, v9

    .line 88
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->dividirLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->appendTexto(Ljava/lang/String;)V

    const/16 v5, 0x35c

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/16 v4, 0x28

    const/16 v7, 0x2f

    const/16 v8, 0x19

    move-object v1, p0

    move-object v6, v10

    .line 90
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->dividirLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->appendTexto(Ljava/lang/String;)V

    const/16 v5, 0x3a2

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/16 v4, 0x28

    const/16 v7, 0x2e

    const/16 v8, 0x19

    move-object v1, p0

    move-object v6, v11

    .line 93
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->dividirLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->appendTexto(Ljava/lang/String;)V

    const/16 v5, 0x3e8

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/16 v4, 0x28

    const/16 v7, 0x2a

    const/16 v8, 0x19

    move-object v1, p0

    move-object v6, v12

    .line 95
    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->dividirLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->appendTexto(Ljava/lang/String;)V

    const/16 v9, 0x8f7

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/16 v4, 0xf0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAno(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v5, 0x8f7

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->appendTexto(Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/16 v4, 0x3c

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v5, v9

    invoke-virtual/range {v1 .. v8}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->formarLinha(IIIILjava/lang/String;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->appendTexto(Ljava/lang/String;)V

    const-string v0, "FORM\nPRINT "

    .line 109
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->appendTexto(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ERRO na gera\u00e7\u00e3o da conta."

    .line 114
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_1
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->buffer:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method protected setImpressoraCPCL(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/br/ipad/isc/impressao/AvisoDeRetencaoSaema;->isImpressoraCPCL:Z

    return-void
.end method
