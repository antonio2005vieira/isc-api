.class public Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "ConsumoAnormalidadeAcao.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;,
        Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoes;
    }
.end annotation


# static fields
.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private codigoMesConsecutivo:Ljava/lang/Integer;

.field private consumoAnormalidade:Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

.field private fatorConsumo:Ljava/math/BigDecimal;

.field private fatorConsumoSegundoMes:Ljava/math/BigDecimal;

.field private fatorConsumoTerceiroMes:Ljava/math/BigDecimal;

.field private id:Ljava/lang/Integer;

.field private idCategoria:Ljava/lang/Integer;

.field private idLeituraAnormalidadeConsumo:Ljava/lang/Integer;

.field private idLeituraAnormalidadeConsumoSegundoMes:Ljava/lang/Integer;

.field private idLeituraAnormalidadeConsumoTerceiroMes:Ljava/lang/Integer;

.field private idPerfil:Ljava/lang/Integer;

.field private indicadorCobrancaConsumoNormal:Ljava/lang/Short;

.field private indicadorGeracaoCartaMes1:Ljava/lang/Short;

.field private indicadorGeracaoCartaMes2:Ljava/lang/Short;

.field private indicadorGeracaoCartaMes3:Ljava/lang/Short;

.field private mensagemConta:Ljava/lang/String;

.field private mensagemContaSegundoMes:Ljava/lang/String;

.field private mensagemContaTerceiroMes:Ljava/lang/String;

.field private ultimaAlteracao:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CSAA_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CSAN_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CATG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "IPER_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "LACS_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "LACS_IDMES2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "LACS_IDMES3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CSAA_NNFATORCONSUMO"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CSAA_NNFATORCONSUMOMES2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "CSAA_NNFATORCONSUMOMES3"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CSAA_DSMENSAGEMCONTA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CSAA_DSMENSAGEMCONTAMES2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CSAA_DSMENSAGEMCONTAMES3"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CSAA_CDMESESCONSECUTIVOS"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CSAA_TMULTIMAALTERACAO"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "CSAA_ICGERACAOCARTAMES1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "CSAA_ICGERACAOCARTAMES2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "CSAA_ICGERACAOCARTAMES3"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "CSAA_ICCOBRCONSUMONORMAL"

    aput-object v2, v0, v1

    .line 178
    sput-object v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 30
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->insertFromFile(Ljava/util/ArrayList;)V

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

    .line 224
    new-instance v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    const/4 v1, 0x1

    .line 225
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setIdString(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    const/4 v0, 0x2

    .line 228
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setIdCategoria(Ljava/lang/Integer;)V

    :cond_0
    const/4 v0, 0x3

    .line 231
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setIdPerfil(Ljava/lang/Integer;)V

    :cond_1
    const/4 v0, 0x4

    .line 234
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setIdLeituraAnormalidadeConsumo(Ljava/lang/Integer;)V

    :cond_2
    const/4 v0, 0x5

    .line 237
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 238
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setIdLeituraAnormalidadeConsumoSegundoMes(Ljava/lang/Integer;)V

    :cond_3
    const/4 v0, 0x6

    .line 240
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 241
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setIdLeituraAnormalidadeConsumoTerceiroMes(Ljava/lang/Integer;)V

    :cond_4
    const/4 v0, 0x7

    .line 243
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 244
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setFatorConsumo(Ljava/math/BigDecimal;)V

    :cond_5
    const/16 v0, 0x8

    .line 247
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 248
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setFatorConsumoSegundoMes(Ljava/math/BigDecimal;)V

    :cond_6
    const/16 v0, 0x9

    .line 251
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 252
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setFatorConsumoTerceiroMes(Ljava/math/BigDecimal;)V

    :cond_7
    const/16 v0, 0xa

    .line 256
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setMensagemConta(Ljava/lang/String;)V

    const/16 v0, 0xb

    .line 257
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setMensagemContaSegundoMes(Ljava/lang/String;)V

    const/16 v0, 0xc

    .line 258
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setMensagemContaTerceiroMes(Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setUltimaAlteracao(Ljava/lang/String;)V

    const/16 v0, 0xd

    .line 262
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    .line 263
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setCodigoMesConsecutivo(Ljava/lang/Integer;)V

    :cond_8
    const/16 v0, 0xe

    .line 266
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setIndicadorGeracaoCartaMes1(Ljava/lang/Short;)V

    const/16 v0, 0xf

    .line 267
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setIndicadorGeracaoCartaMes2(Ljava/lang/Short;)V

    const/16 v0, 0x10

    .line 268
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setIndicadorGeracaoCartaMes3(Ljava/lang/Short;)V

    const/16 v0, 0x11

    .line 269
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setIndicadorCobrancaConsumoNormal(Ljava/lang/Short;)V

    return-void
.end method


# virtual methods
.method public getCodigoMesConsecutivo()Ljava/lang/Integer;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->codigoMesConsecutivo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 193
    sget-object v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->consumoAnormalidade:Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    return-object v0
.end method

.method public getFatorConsumo()Ljava/math/BigDecimal;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->fatorConsumo:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getFatorConsumoSegundoMes()Ljava/math/BigDecimal;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->fatorConsumoSegundoMes:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getFatorConsumoTerceiroMes()Ljava/math/BigDecimal;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->fatorConsumoTerceiroMes:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdCategoria()Ljava/lang/Integer;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->idCategoria:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdLeituraAnormalidadeConsumo()Ljava/lang/Integer;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->idLeituraAnormalidadeConsumo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdLeituraAnormalidadeConsumoSegundoMes()Ljava/lang/Integer;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->idLeituraAnormalidadeConsumoSegundoMes:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdLeituraAnormalidadeConsumoTerceiroMes()Ljava/lang/Integer;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->idLeituraAnormalidadeConsumoTerceiroMes:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdPerfil()Ljava/lang/Integer;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->idPerfil:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorCobrancaConsumoNormal()Ljava/lang/Short;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->indicadorCobrancaConsumoNormal:Ljava/lang/Short;

    return-object v0
.end method

.method public getIndicadorGeracaoCartaMes1()Ljava/lang/Short;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->indicadorGeracaoCartaMes1:Ljava/lang/Short;

    return-object v0
.end method

.method public getIndicadorGeracaoCartaMes2()Ljava/lang/Short;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->indicadorGeracaoCartaMes2:Ljava/lang/Short;

    return-object v0
.end method

.method public getIndicadorGeracaoCartaMes3()Ljava/lang/Short;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->indicadorGeracaoCartaMes3:Ljava/lang/Short;

    return-object v0
.end method

.method public getMensagemConta()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->mensagemConta:Ljava/lang/String;

    return-object v0
.end method

.method public getMensagemContaSegundoMes()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->mensagemContaSegundoMes:Ljava/lang/String;

    return-object v0
.end method

.method public getMensagemContaTerceiroMes()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->mensagemContaTerceiroMes:Ljava/lang/String;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "consumo_anormalidade_acao"

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->ultimaAlteracao:Ljava/util/Date;

    return-object v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    const-string v0, "CSAA_ID"

    .line 339
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "CSAN_ID"

    .line 340
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "CSAA_NNFATORCONSUMO"

    .line 341
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "CSAA_NNFATORCONSUMOMES2"

    .line 342
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "CSAA_NNFATORCONSUMOMES3"

    .line 343
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "CATG_ID"

    .line 344
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "LACS_ID"

    .line 345
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "LACS_IDMES2"

    move-object/from16 v16, v13

    .line 346
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v17, v13

    const-string v13, "LACS_IDMES3"

    move-object/from16 v18, v15

    .line 347
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v19, v13

    const-string v13, "IPER_ID"

    move/from16 v20, v15

    .line 348
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v0, "CSAA_DSMENSAGEMCONTA"

    move-object/from16 v21, v13

    .line 349
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v0, "CSAA_DSMENSAGEMCONTAMES2"

    move/from16 v22, v13

    .line 350
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v0, "CSAA_DSMENSAGEMCONTAMES3"

    move/from16 v23, v13

    .line 351
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v0, "CSAA_TMULTIMAALTERACAO"

    move/from16 v24, v13

    .line 352
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v25, v13

    const-string v13, "CSAA_CDMESESCONSECUTIVOS"

    move/from16 v26, v15

    .line 353
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v0, "CSAA_ICGERACAOCARTAMES1"

    move-object/from16 v27, v13

    .line 354
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v0, "CSAA_ICGERACAOCARTAMES2"

    move/from16 v28, v13

    .line 355
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v0, "CSAA_ICGERACAOCARTAMES3"

    move/from16 v29, v13

    .line 356
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v0, "CSAA_ICCOBRCONSUMONORMAL"

    move/from16 v30, v13

    .line 357
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v31, v13

    .line 359
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v32, v13

    .line 361
    :goto_0
    new-instance v13, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    invoke-direct {v13}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;-><init>()V

    .line 362
    invoke-static {v1, v3, v4}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    move-result-object v0

    .line 366
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v33
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v34, v3

    :try_start_1
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_1
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v33, v4

    :try_start_2
    new-instance v4, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    .line 367
    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V
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

    move-object/from16 v34, v3

    :goto_1
    move/from16 v33, v4

    .line 369
    :goto_2
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ISC"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    goto :goto_3

    :cond_0
    move-object/from16 v34, v3

    move/from16 v33, v4

    .line 373
    :goto_3
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setId(Ljava/lang/Integer;)V

    .line 374
    invoke-static {v1, v5, v6}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setFatorConsumo(Ljava/math/BigDecimal;)V

    .line 375
    invoke-static {v1, v7, v8}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setFatorConsumoSegundoMes(Ljava/math/BigDecimal;)V

    .line 376
    invoke-static {v1, v9, v10}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setFatorConsumoTerceiroMes(Ljava/math/BigDecimal;)V

    .line 377
    invoke-static {v1, v11, v12}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setIdCategoria(Ljava/lang/Integer;)V

    move-object/from16 v3, v16

    .line 378
    invoke-static {v1, v3, v14}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setIdLeituraAnormalidadeConsumo(Ljava/lang/Integer;)V

    move/from16 v16, v2

    move/from16 v4, v17

    move-object/from16 v2, v18

    .line 379
    invoke-static {v1, v2, v4}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setIdLeituraAnormalidadeConsumoSegundoMes(Ljava/lang/Integer;)V

    move-object/from16 v17, v3

    move-object/from16 v3, v19

    move/from16 v2, v20

    .line 380
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setIdLeituraAnormalidadeConsumoTerceiroMes(Ljava/lang/Integer;)V

    move-object/from16 v3, v21

    move/from16 v2, v26

    .line 381
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setIdPerfil(Ljava/lang/Integer;)V

    move/from16 v2, v22

    .line 382
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setMensagemConta(Ljava/lang/String;)V

    move/from16 v2, v23

    .line 383
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setMensagemContaSegundoMes(Ljava/lang/String;)V

    move/from16 v2, v24

    .line 384
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setMensagemContaTerceiroMes(Ljava/lang/String;)V

    move-object/from16 v2, v27

    .line 385
    invoke-static {v1, v2, v15}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setCodigoMesConsecutivo(Ljava/lang/Integer;)V

    move/from16 v2, v25

    .line 386
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setUltimaAlteracao(Ljava/lang/String;)V

    move/from16 v2, v28

    .line 387
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setIndicadorGeracaoCartaMes1(Ljava/lang/Short;)V

    move/from16 v2, v29

    .line 388
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setIndicadorGeracaoCartaMes2(Ljava/lang/Short;)V

    move/from16 v2, v30

    .line 389
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setIndicadorGeracaoCartaMes3(Ljava/lang/Short;)V

    move/from16 v2, v31

    .line 390
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->setIndicadorCobrancaConsumoNormal(Ljava/lang/Short;)V

    move-object/from16 v1, v32

    .line 392
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    move-object/from16 v32, v1

    move/from16 v31, v2

    move-object/from16 v21, v3

    move/from16 v2, v16

    move-object/from16 v16, v17

    move-object/from16 v3, v34

    move-object/from16 v1, p1

    move/from16 v17, v4

    move/from16 v4, v33

    goto/16 :goto_0
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 310
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 312
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSAN_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getFatorConsumo()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSAA_NNFATORCONSUMO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getFatorConsumoSegundoMes()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSAA_NNFATORCONSUMOMES2"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getFatorConsumoTerceiroMes()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSAA_NNFATORCONSUMOMES3"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getIdLeituraAnormalidadeConsumo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LACS_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getIdLeituraAnormalidadeConsumoSegundoMes()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LACS_IDMES2"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 318
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getIdLeituraAnormalidadeConsumoTerceiroMes()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LACS_IDMES3"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getIdPerfil()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IPER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getIdCategoria()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CATG_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getMensagemConta()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSAA_DSMENSAGEMCONTA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getMensagemContaSegundoMes()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSAA_DSMENSAGEMCONTAMES2"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getMensagemContaTerceiroMes()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSAA_DSMENSAGEMCONTAMES3"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getCodigoMesConsecutivo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSAA_CDMESESCONSECUTIVOS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSAA_TMULTIMAALTERACAO"

    .line 327
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getIndicadorGeracaoCartaMes1()Ljava/lang/Short;

    move-result-object v1

    const-string v2, "CSAA_ICGERACAOCARTAMES1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 330
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getIndicadorGeracaoCartaMes2()Ljava/lang/Short;

    move-result-object v1

    const-string v2, "CSAA_ICGERACAOCARTAMES2"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 331
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getIndicadorGeracaoCartaMes3()Ljava/lang/Short;

    move-result-object v1

    const-string v2, "CSAA_ICGERACAOCARTAMES3"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 332
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getIndicadorCobrancaConsumoNormal()Ljava/lang/Short;

    move-result-object v1

    const-string v2, "CSAA_ICCOBRCONSUMONORMAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    return-object v0
.end method

.method public setCodigoMesConsecutivo(Ljava/lang/Integer;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->codigoMesConsecutivo:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->consumoAnormalidade:Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    return-void
.end method

.method public setFatorConsumo(Ljava/math/BigDecimal;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->fatorConsumo:Ljava/math/BigDecimal;

    return-void
.end method

.method public setFatorConsumoSegundoMes(Ljava/math/BigDecimal;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->fatorConsumoSegundoMes:Ljava/math/BigDecimal;

    return-void
.end method

.method public setFatorConsumoTerceiroMes(Ljava/math/BigDecimal;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->fatorConsumoTerceiroMes:Ljava/math/BigDecimal;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdCategoria(Ljava/lang/Integer;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->idCategoria:Ljava/lang/Integer;

    return-void
.end method

.method public setIdLeituraAnormalidadeConsumo(Ljava/lang/Integer;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->idLeituraAnormalidadeConsumo:Ljava/lang/Integer;

    return-void
.end method

.method public setIdLeituraAnormalidadeConsumoSegundoMes(Ljava/lang/Integer;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->idLeituraAnormalidadeConsumoSegundoMes:Ljava/lang/Integer;

    return-void
.end method

.method public setIdLeituraAnormalidadeConsumoTerceiroMes(Ljava/lang/Integer;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->idLeituraAnormalidadeConsumoTerceiroMes:Ljava/lang/Integer;

    return-void
.end method

.method public setIdPerfil(Ljava/lang/Integer;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->idPerfil:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorCobrancaConsumoNormal(Ljava/lang/Short;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->indicadorCobrancaConsumoNormal:Ljava/lang/Short;

    return-void
.end method

.method public setIndicadorGeracaoCartaMes1(Ljava/lang/Short;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->indicadorGeracaoCartaMes1:Ljava/lang/Short;

    return-void
.end method

.method public setIndicadorGeracaoCartaMes2(Ljava/lang/Short;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->indicadorGeracaoCartaMes2:Ljava/lang/Short;

    return-void
.end method

.method public setIndicadorGeracaoCartaMes3(Ljava/lang/Short;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->indicadorGeracaoCartaMes3:Ljava/lang/Short;

    return-void
.end method

.method public setMensagemConta(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->mensagemConta:Ljava/lang/String;

    return-void
.end method

.method public setMensagemContaSegundoMes(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->mensagemContaSegundoMes:Ljava/lang/String;

    return-void
.end method

.method public setMensagemContaTerceiroMes(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->mensagemContaTerceiroMes:Ljava/lang/String;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/String;)V
    .locals 0

    .line 151
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method
