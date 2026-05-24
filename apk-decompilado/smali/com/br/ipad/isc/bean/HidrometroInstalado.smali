.class public Lcom/br/ipad/isc/bean/HidrometroInstalado;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "HidrometroInstalado.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;,
        Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstalados;
    }
.end annotation


# static fields
.field private static anormalidadeFaturadaCaern:Ljava/lang/Integer; = null

.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private anormalidade:Ljava/lang/Integer;

.field private codigoSituacaoLeituraAnterior:Ljava/lang/Integer;

.field private consumoMedio:Ljava/lang/Integer;

.field private consumoMinimoContratadoContratoDemanda:Ljava/lang/Integer;

.field private dataInstalacaoHidrometro:Ljava/util/Date;

.field private dataLeitura:Ljava/util/Date;

.field private dataLeituraAnterior:Ljava/util/Date;

.field private id:Ljava/lang/Integer;

.field private indcParalizacaoLeitura:Ljava/lang/Integer;

.field private leitura:Ljava/lang/Integer;

.field private leituraAnteriorDigitada:Ljava/lang/Integer;

.field private leituraAnteriorFaturamento:Ljava/lang/Integer;

.field private leituraAnteriorInformada:Ljava/lang/Integer;

.field private leituraAtualFaturamento:Ljava/lang/Integer;

.field private leituraAtualFaturamentoHelper:Ljava/lang/Integer;

.field private leituraHidrometoInstalada:Ljava/lang/Integer;

.field private leituraLimiteInferior:Ljava/lang/Integer;

.field private leituraLimiteSuperior:Ljava/lang/Integer;

.field private localInstalacao:Ljava/lang/String;

.field private matricula:Lcom/br/ipad/isc/bean/ImovelConta;

.field private numDigitosLeituraHidrometro:Ljava/lang/Integer;

.field private numeroHidrometro:Ljava/lang/String;

.field private percentualDescontoContratoDemanda:Ljava/lang/Integer;

.field private qtdDiasAjustado:Ljava/lang/Integer;

.field private tipoMedicao:Ljava/lang/Integer;

.field private tipoRateio:Ljava/lang/Integer;

.field private tombamento:Ljava/lang/String;

.field private ultimaAlteracao:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "HIIN_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "IMOV_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MEDT_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "HIIN_NNHIDROMETRO"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "HIIN_DTINSTALACAOHIDROMETRO"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "HIIN_NNDIGITOSLEITURA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "HIIN_NNLEITANTFATURAMENTO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "HIIN_DTLEITANTFATURAMENTO"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LTST_IDANTERIOR"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "HIIN_NNLEITLIMITEINFERIOR"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "HIIN_NNLEITLIMITESUPERIOR"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "HIIN_NNCONSUMOMEDIO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "HILI_DSHIDMTLOCALINSTALACAO"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "HIIN_NNLEITANTINFORMADA"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "RTTP_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "HIDI_NNLEITINSTALACAOHIDMT"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "HIIN_ICPARALISARLEITURA"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "HIIN_NNCONSUMOMINCONTRATADO"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "HIIN_PCDESCONTOCONTRATODEMA"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "HIIN_NNTOMBAMENTO"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "HIIN_NNLEITURACAMPO"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "LTAN_IDANORMALIDADECAMPO"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "HIIN_DTLEITURACAMPO"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "HIIN_NNLEITURAATUALFATURAMENTO"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "HIIN_NNLEITURAATUALFATURAMENTOHELPER"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "HIIN_NNLEITURAANTERIORDIGITADA"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "HIIN_TMULTIMAALTERCAO"

    aput-object v2, v0, v1

    .line 253
    sput-object v0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leitura:Ljava/lang/Integer;

    .line 56
    iput-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->anormalidade:Ljava/lang/Integer;

    .line 57
    iput-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraAnteriorDigitada:Ljava/lang/Integer;

    .line 58
    iput-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->dataLeitura:Ljava/util/Date;

    .line 60
    iput-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->qtdDiasAjustado:Ljava/lang/Integer;

    .line 62
    iput-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraAtualFaturamento:Ljava/lang/Integer;

    .line 63
    iput-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraAtualFaturamentoHelper:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leitura:Ljava/lang/Integer;

    .line 56
    iput-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->anormalidade:Ljava/lang/Integer;

    .line 57
    iput-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraAnteriorDigitada:Ljava/lang/Integer;

    .line 58
    iput-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->dataLeitura:Ljava/util/Date;

    .line 60
    iput-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->qtdDiasAjustado:Ljava/lang/Integer;

    .line 62
    iput-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraAtualFaturamento:Ljava/lang/Integer;

    .line 63
    iput-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraAtualFaturamentoHelper:Ljava/lang/Integer;

    .line 28
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->insertFromFile(Ljava/util/ArrayList;)V

    return-void
.end method

.method private insertFromFile(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 299
    new-instance v0, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    const/4 v1, 0x1

    .line 300
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setId(Ljava/lang/Integer;)V

    .line 301
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    const/4 v0, 0x4

    .line 303
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 304
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setTipoMedicao(Ljava/lang/Integer;)V

    :cond_0
    const/4 v1, 0x3

    .line 306
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setNumeroHidrometro(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->convertDateStrToDate1(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 309
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setDataInstalacaoHidrometro(Ljava/util/Date;)V

    :cond_1
    const/4 v0, 0x5

    .line 311
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setNumDigitosLeituraHidrometro(Ljava/lang/Integer;)V

    :cond_2
    const/4 v0, 0x6

    .line 314
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 315
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAnteriorFaturamento(Ljava/lang/Integer;)V

    :cond_3
    const/4 v0, 0x7

    .line 317
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 318
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->convertDateStrToDate1(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 319
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setDataLeituraAnterior(Ljava/util/Date;)V

    :cond_4
    const/16 v0, 0x8

    .line 321
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 322
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setCodigoSituacaoLeituraAnterior(Ljava/lang/Integer;)V

    :cond_5
    const/16 v0, 0x9

    .line 324
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 325
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraLimiteInferior(Ljava/lang/Integer;)V

    :cond_6
    const/16 v0, 0xa

    .line 327
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 328
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraLimiteSuperior(Ljava/lang/Integer;)V

    :cond_7
    const/16 v0, 0xb

    .line 330
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    .line 331
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setConsumoMedio(Ljava/lang/Integer;)V

    :cond_8
    const/16 v0, 0xc

    .line 333
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLocalInstalacao(Ljava/lang/String;)V

    const/16 v0, 0xd

    .line 334
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    .line 335
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAnteriorInformada(Ljava/lang/Integer;)V

    :cond_9
    const/16 v0, 0xe

    .line 337
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    .line 338
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setTipoRateio(Ljava/lang/Integer;)V

    :cond_a
    const/16 v0, 0xf

    .line 340
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b

    .line 341
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraHidrometoInstalada(Ljava/lang/Integer;)V

    :cond_b
    const/16 v0, 0x10

    .line 343
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_c

    .line 344
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setIndcParalizacaoLeitura(Ljava/lang/Integer;)V

    :cond_c
    const/16 v0, 0x11

    .line 347
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_d

    .line 348
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setConsumoMinimoContratadoContratoDemanda(Ljava/lang/Integer;)V

    :cond_d
    const/16 v0, 0x12

    .line 350
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_e

    .line 351
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setPercentualDescontoContratoDemanda(Ljava/lang/Integer;)V

    :cond_e
    const/16 v0, 0x13

    .line 353
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_f

    .line 354
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setTombamento(Ljava/lang/String;)V

    .line 365
    :cond_f
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setUltimaAlteracao(Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method public getAnormalidade()Ljava/lang/Integer;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->anormalidade:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAnormalidadeFaturadaCaern()Ljava/lang/Integer;
    .locals 1

    .line 246
    sget-object v0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->anormalidadeFaturadaCaern:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCodigoSituacaoLeituraAnterior()Ljava/lang/Integer;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->codigoSituacaoLeituraAnterior:Ljava/lang/Integer;

    return-object v0
.end method

.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 263
    sget-object v0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getConsumoMedio()Ljava/lang/Integer;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->consumoMedio:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConsumoMinimoContratadoContratoDemanda()Ljava/lang/Integer;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->consumoMinimoContratadoContratoDemanda:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDataInstalacaoHidrometro()Ljava/util/Date;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->dataInstalacaoHidrometro:Ljava/util/Date;

    return-object v0
.end method

.method public getDataLeitura()Ljava/util/Date;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->dataLeitura:Ljava/util/Date;

    return-object v0
.end method

.method public getDataLeituraAnterior()Ljava/util/Date;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->dataLeituraAnterior:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndcParalizacaoLeitura()Ljava/lang/Integer;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->indcParalizacaoLeitura:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLeitura()Ljava/lang/Integer;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leitura:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLeituraAnteriorDigitada()Ljava/lang/Integer;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraAnteriorDigitada:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLeituraAnteriorFaturamento()Ljava/lang/Integer;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraAnteriorFaturamento:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLeituraAnteriorInformada()Ljava/lang/Integer;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraAnteriorInformada:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLeituraAtualFaturamento()Ljava/lang/Integer;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraAtualFaturamento:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLeituraAtualFaturamentoHelper()Ljava/lang/Integer;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraAtualFaturamentoHelper:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLeituraHidrometoInstalada()Ljava/lang/Integer;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraHidrometoInstalada:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLeituraLimiteInferior()Ljava/lang/Integer;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraLimiteInferior:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLeituraLimiteSuperior()Ljava/lang/Integer;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraLimiteSuperior:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLocalInstalacao()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->localInstalacao:Ljava/lang/String;

    return-object v0
.end method

.method public getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "hidrometro_instalado"

    return-object v0
.end method

.method public getNumDigitosLeituraHidrometro()Ljava/lang/Integer;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->numDigitosLeituraHidrometro:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNumeroHidrometro()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->numeroHidrometro:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentualDescontoContratoDemanda()Ljava/lang/Integer;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->percentualDescontoContratoDemanda:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQtdDiasAjustado()Ljava/lang/Integer;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->qtdDiasAjustado:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTipoMedicao()Ljava/lang/Integer;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->tipoMedicao:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTipoRateio()Ljava/lang/Integer;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->tipoRateio:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTombamento()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->tombamento:Ljava/lang/String;

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->ultimaAlteracao:Ljava/util/Date;

    return-object v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 57
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/HidrometroInstalado;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    const-string v0, "HIIN_ID"

    .line 459
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "HIIN_NNCONSUMOMEDIO"

    .line 460
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "HIIN_NNCONSUMOMINCONTRATADO"

    .line 461
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "HIIN_DTINSTALACAOHIDROMETRO"

    .line 462
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "HIIN_DTLEITANTFATURAMENTO"

    .line 463
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "HIIN_DTLEITURACAMPO"

    .line 464
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "HILI_DSHIDMTLOCALINSTALACAO"

    .line 465
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "LTAN_IDANORMALIDADECAMPO"

    .line 466
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v16, v14

    const-string v14, "LTST_IDANTERIOR"

    move/from16 v17, v15

    .line 467
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v18, v14

    const-string v14, "HIIN_ICPARALISARLEITURA"

    move/from16 v19, v15

    .line 468
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v20, v14

    const-string v14, "HIIN_NNLEITANTFATURAMENTO"

    move/from16 v21, v15

    .line 469
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v22, v14

    const-string v14, "HIIN_NNLEITURACAMPO"

    move/from16 v23, v15

    .line 470
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v24, v14

    const-string v14, "HIIN_NNLEITANTINFORMADA"

    move/from16 v25, v15

    .line 471
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v26, v14

    const-string v14, "HIIN_NNLEITURAANTERIORDIGITADA"

    move/from16 v27, v15

    .line 472
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v28, v14

    const-string v14, "HIDI_NNLEITINSTALACAOHIDMT"

    move/from16 v29, v15

    .line 473
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v30, v14

    const-string v14, "HIIN_NNLEITLIMITEINFERIOR"

    move/from16 v31, v15

    .line 474
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v32, v14

    const-string v14, "HIIN_NNLEITLIMITESUPERIOR"

    move/from16 v33, v15

    .line 475
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v0, "IMOV_ID"

    move-object/from16 v34, v14

    .line 476
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move/from16 v35, v15

    const-string v15, "MEDT_ID"

    move/from16 v36, v13

    .line 477
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v37, v13

    const-string v13, "HIIN_NNDIGITOSLEITURA"

    move-object/from16 v38, v15

    .line 478
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v0, "HIIN_NNHIDROMETRO"

    move-object/from16 v39, v13

    .line 479
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v40, v13

    const-string v13, "HIIN_PCDESCONTOCONTRATODEMA"

    move/from16 v41, v15

    .line 480
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v42, v13

    const-string v13, "RTTP_ID"

    move/from16 v43, v15

    .line 481
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v0, "HIIN_NNTOMBAMENTO"

    move-object/from16 v44, v13

    .line 482
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v45, v13

    const-string v13, "HIIN_NNLEITURAATUALFATURAMENTO"

    move/from16 v46, v15

    .line 483
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v47, v13

    const-string v13, "HIIN_NNLEITURAATUALFATURAMENTOHELPER"

    move/from16 v48, v15

    .line 484
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v0, "HIIN_TMULTIMAALTERCAO"

    move-object/from16 v49, v13

    .line 485
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v50, v13

    .line 487
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v51, v13

    .line 490
    :goto_0
    new-instance v13, Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-direct {v13}, Lcom/br/ipad/isc/bean/HidrometroInstalado;-><init>()V

    .line 493
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    move-result-object v0

    .line 494
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v52
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v53, v14

    :try_start_1
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14
    :try_end_1
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v52, v15

    :try_start_2
    new-instance v15, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v15}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    invoke-virtual {v0, v14, v15}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 495
    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V
    :try_end_2
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move/from16 v53, v14

    :goto_1
    move/from16 v52, v15

    .line 497
    :goto_2
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ISC"

    invoke-static {v15, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 500
    :goto_3
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setId(Ljava/lang/Integer;)V

    .line 501
    invoke-static {v1, v3, v4}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setConsumoMedio(Ljava/lang/Integer;)V

    .line 502
    invoke-static {v1, v5, v6}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setConsumoMinimoContratadoContratoDemanda(Ljava/lang/Integer;)V

    .line 505
    invoke-static {v1, v7, v8}, Lcom/br/ipad/isc/util/Util;->getDataBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setDataInstalacaoHidrometro(Ljava/util/Date;)V

    .line 508
    invoke-static {v1, v9, v10}, Lcom/br/ipad/isc/util/Util;->getDataBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setDataLeituraAnterior(Ljava/util/Date;)V

    .line 511
    invoke-static {v1, v11, v12}, Lcom/br/ipad/isc/util/Util;->getDataBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setDataLeitura(Ljava/util/Date;)V

    move/from16 v14, v36

    .line 513
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLocalInstalacao(Ljava/lang/String;)V

    move/from16 v15, v17

    move-object/from16 v56, v16

    move/from16 v16, v2

    move-object/from16 v2, v56

    .line 514
    invoke-static {v1, v2, v15}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setAnormalidade(Ljava/lang/Integer;)V

    move-object/from16 v17, v2

    move/from16 v2, v19

    move-object/from16 v56, v18

    move-object/from16 v18, v3

    move-object/from16 v3, v56

    .line 515
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setCodigoSituacaoLeituraAnterior(Ljava/lang/Integer;)V

    move/from16 v2, v21

    move-object/from16 v56, v20

    move-object/from16 v20, v3

    move-object/from16 v3, v56

    .line 516
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setIndcParalizacaoLeitura(Ljava/lang/Integer;)V

    move/from16 v2, v25

    move-object/from16 v56, v24

    move-object/from16 v24, v3

    move-object/from16 v3, v56

    .line 517
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeitura(Ljava/lang/Integer;)V

    move/from16 v2, v27

    move-object/from16 v56, v26

    move-object/from16 v26, v3

    move-object/from16 v3, v56

    .line 518
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAnteriorInformada(Ljava/lang/Integer;)V

    move/from16 v2, v31

    move-object/from16 v56, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v56

    .line 519
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraHidrometoInstalada(Ljava/lang/Integer;)V

    move/from16 v2, v33

    move-object/from16 v56, v32

    move-object/from16 v32, v3

    move-object/from16 v3, v56

    .line 520
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraLimiteInferior(Ljava/lang/Integer;)V

    move/from16 v2, v35

    move-object/from16 v56, v34

    move-object/from16 v34, v3

    move-object/from16 v3, v56

    .line 521
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraLimiteSuperior(Ljava/lang/Integer;)V

    move-object/from16 v36, v3

    move/from16 v2, v37

    move-object/from16 v3, v38

    .line 522
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setTipoMedicao(Ljava/lang/Integer;)V

    move-object/from16 v3, v39

    move/from16 v2, v41

    .line 523
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setNumDigitosLeituraHidrometro(Ljava/lang/Integer;)V

    move/from16 v2, v40

    .line 524
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setNumeroHidrometro(Ljava/lang/String;)V

    move-object/from16 v3, v42

    move/from16 v2, v43

    .line 525
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setPercentualDescontoContratoDemanda(Ljava/lang/Integer;)V

    move-object/from16 v3, v44

    move/from16 v2, v46

    .line 526
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setTipoRateio(Ljava/lang/Integer;)V

    move/from16 v2, v45

    .line 527
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setTombamento(Ljava/lang/String;)V

    move-object/from16 v3, v22

    move/from16 v2, v23

    .line 528
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAnteriorFaturamento(Ljava/lang/Integer;)V

    move-object/from16 v3, v47

    move/from16 v2, v48

    .line 529
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamento(Ljava/lang/Integer;)V

    move-object/from16 v3, v49

    move/from16 v2, v52

    .line 530
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAtualFaturamentoHelper(Ljava/lang/Integer;)V

    move-object/from16 v3, v28

    move/from16 v2, v29

    .line 531
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAnteriorDigitada(Ljava/lang/Integer;)V

    move/from16 v2, v50

    .line 533
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setUltimaAlteracao(Ljava/lang/Long;)V

    move-object/from16 v1, v51

    .line 536
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    move-object/from16 v51, v1

    move/from16 v50, v2

    move-object/from16 v28, v3

    move/from16 v2, v16

    move-object/from16 v16, v17

    move-object/from16 v3, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v30

    move-object/from16 v30, v32

    move-object/from16 v32, v34

    move-object/from16 v34, v36

    move-object/from16 v1, p1

    move/from16 v36, v14

    move/from16 v17, v15

    move/from16 v15, v52

    move/from16 v14, v53

    goto/16 :goto_0
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 417
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 419
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getConsumoMedio()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HIIN_NNCONSUMOMEDIO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 420
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getConsumoMinimoContratadoContratoDemanda()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HIIN_NNCONSUMOMINCONTRATADO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataInstalacaoHidrometro()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataInstalacaoHidrometro()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "HIIN_DTINSTALACAOHIDROMETRO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 425
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "HIIN_DTLEITANTFATURAMENTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 427
    :cond_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 428
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "HIIN_DTLEITURACAMPO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 430
    :cond_2
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLocalInstalacao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HILI_DSHIDMTLOCALINSTALACAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LTAN_IDANORMALIDADECAMPO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 432
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getCodigoSituacaoLeituraAnterior()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LTST_IDANTERIOR"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getIndcParalizacaoLeitura()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HIIN_ICPARALISARLEITURA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorFaturamento()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HIIN_NNLEITANTFATURAMENTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 435
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorInformada()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HIIN_NNLEITANTINFORMADA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorDigitada()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HIIN_NNLEITURAANTERIORDIGITADA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HIIN_NNLEITURACAMPO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 438
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraHidrometoInstalada()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HIDI_NNLEITINSTALACAOHIDMT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraLimiteInferior()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HIIN_NNLEITLIMITEINFERIOR"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 440
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraLimiteSuperior()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HIIN_NNLEITLIMITESUPERIOR"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 441
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMOV_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 442
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumDigitosLeituraHidrometro()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HIIN_NNDIGITOSLEITURA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getNumeroHidrometro()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HIIN_NNHIDROMETRO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDT_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getPercentualDescontoContratoDemanda()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HIIN_PCDESCONTOCONTRATODEMA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoRateio()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RTTP_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTombamento()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HIIN_NNTOMBAMENTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamento()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HIIN_NNLEITURAATUALFATURAMENTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 450
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAtualFaturamentoHelper()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HIIN_NNLEITURAATUALFATURAMENTOHELPER"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "HIIN_TMULTIMAALTERCAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public setAnormalidade(Ljava/lang/Integer;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->anormalidade:Ljava/lang/Integer;

    return-void
.end method

.method public setAnormalidadeFaturadaCaern(Ljava/lang/Integer;)V
    .locals 0

    .line 250
    sput-object p1, Lcom/br/ipad/isc/bean/HidrometroInstalado;->anormalidadeFaturadaCaern:Ljava/lang/Integer;

    return-void
.end method

.method public setCodigoSituacaoLeituraAnterior(Ljava/lang/Integer;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->codigoSituacaoLeituraAnterior:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoMedio(Ljava/lang/Integer;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->consumoMedio:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoMinimoContratadoContratoDemanda(Ljava/lang/Integer;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->consumoMinimoContratadoContratoDemanda:Ljava/lang/Integer;

    return-void
.end method

.method public setDataInstalacaoHidrometro(Ljava/util/Date;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->dataInstalacaoHidrometro:Ljava/util/Date;

    return-void
.end method

.method public setDataLeitura(Ljava/util/Date;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->dataLeitura:Ljava/util/Date;

    return-void
.end method

.method public setDataLeituraAnterior(Ljava/util/Date;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->dataLeituraAnterior:Ljava/util/Date;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIndcParalizacaoLeitura(Ljava/lang/Integer;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->indcParalizacaoLeitura:Ljava/lang/Integer;

    return-void
.end method

.method public setLeitura(Ljava/lang/Integer;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leitura:Ljava/lang/Integer;

    return-void
.end method

.method public setLeituraAnteriorDigitada(Ljava/lang/Integer;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraAnteriorDigitada:Ljava/lang/Integer;

    return-void
.end method

.method public setLeituraAnteriorFaturamento(Ljava/lang/Integer;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraAnteriorFaturamento:Ljava/lang/Integer;

    return-void
.end method

.method public setLeituraAnteriorInformada(Ljava/lang/Integer;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraAnteriorInformada:Ljava/lang/Integer;

    return-void
.end method

.method public setLeituraAtualFaturamento(Ljava/lang/Integer;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraAtualFaturamento:Ljava/lang/Integer;

    return-void
.end method

.method public setLeituraAtualFaturamentoHelper(Ljava/lang/Integer;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraAtualFaturamentoHelper:Ljava/lang/Integer;

    return-void
.end method

.method public setLeituraHidrometoInstalada(Ljava/lang/Integer;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraHidrometoInstalada:Ljava/lang/Integer;

    return-void
.end method

.method public setLeituraLimiteInferior(Ljava/lang/Integer;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraLimiteInferior:Ljava/lang/Integer;

    return-void
.end method

.method public setLeituraLimiteSuperior(Ljava/lang/Integer;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->leituraLimiteSuperior:Ljava/lang/Integer;

    return-void
.end method

.method public setLocalInstalacao(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->localInstalacao:Ljava/lang/String;

    return-void
.end method

.method public setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    return-void
.end method

.method public setNumDigitosLeituraHidrometro(Ljava/lang/Integer;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->numDigitosLeituraHidrometro:Ljava/lang/Integer;

    return-void
.end method

.method public setNumeroHidrometro(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->numeroHidrometro:Ljava/lang/String;

    return-void
.end method

.method public setPercentualDescontoContratoDemanda(Ljava/lang/Integer;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->percentualDescontoContratoDemanda:Ljava/lang/Integer;

    return-void
.end method

.method public setQtdDiasAjustado(Ljava/lang/Integer;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->qtdDiasAjustado:Ljava/lang/Integer;

    return-void
.end method

.method public setTipoMedicao(Ljava/lang/Integer;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->tipoMedicao:Ljava/lang/Integer;

    return-void
.end method

.method public setTipoRateio(Ljava/lang/Integer;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->tipoRateio:Ljava/lang/Integer;

    return-void
.end method

.method public setTombamento(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->tombamento:Ljava/lang/String;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/Long;)V
    .locals 3

    .line 224
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/util/Date;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method
