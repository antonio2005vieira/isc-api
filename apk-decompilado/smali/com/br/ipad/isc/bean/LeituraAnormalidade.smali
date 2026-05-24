.class public Lcom/br/ipad/isc/bean/LeituraAnormalidade;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "LeituraAnormalidade.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;,
        Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidades;
    }
.end annotation


# static fields
.field public static final DUAS_OPCOES:I = 0x0

.field public static final NAO_INFORMADA:I = 0x0

.field public static final NAO_TER_LEITURA:I = 0x2

.field public static final TER_LEITURA:I = 0x1

.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private descricaoAnormalidadeLeitura:Ljava/lang/String;

.field private descricaoMensagemConta:Ljava/lang/String;

.field private id:Ljava/lang/Integer;

.field private idConsumoACobrarComLeitura:Ljava/lang/Integer;

.field private idConsumoACobrarSemLeitura:Ljava/lang/Integer;

.field private idLeituraAnormLeituraComLeitura:Ljava/lang/Integer;

.field private idLeituraAnormLeituraSemLeitura:Ljava/lang/Integer;

.field private indicadorAceitaLeitura:Ljava/lang/Integer;

.field private indicadorCalcadaMensagem:Ljava/lang/Integer;

.field private indicadorFotoObrigatoria:Ljava/lang/Integer;

.field private indicadorHidrometroMensagem:Ljava/lang/Integer;

.field private indicadorNaoImpressaoConta:Ljava/lang/Integer;

.field private indicadorNotificaCliente:Ljava/lang/Integer;

.field private indicadorUso:Ljava/lang/Integer;

.field private indicadorUsoSistema:Ljava/lang/Integer;

.field private numeroFatorComLeitura:Ljava/math/BigDecimal;

.field private numeroFatorSemLeitura:Ljava/math/BigDecimal;

.field private ultimaAlteracao:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LTAN_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "LTAN_DSLEITURAANORMALIDADE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "LTAN_ICLEITURA"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "LACS_IDCONSACOBRARCOMLEIT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "LACS_IDCONSACOBRARSEMLEIT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "LALT_IDLEITAFATURARCOMLEIT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "LALT_IDLEITAFATURARSEMLEIT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "LTAN_ICUSO"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LTAN_NNFATORSEMLEITURA"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LTAN_NNFATORCOMLEITURA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "LTAN_ICCALCADAMSG"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LTAN_ICSUBSHIDROMETRORMSG"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "LTAN_ICNAOIMPRIMIRCONTA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "LTAN_ICFOTOOBRIGATORIA"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "LTAN_TMULTIMAALTERACAO"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "LTAN_ICNOTIFICACLIENTE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "LTAN_DESCRICAOMENSAGEMCONTA"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "LTAN_ICUSOSISTEMA"

    aput-object v2, v0, v1

    .line 176
    sput-object v0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
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

    .line 25
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 26
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->insertFromFile(Ljava/util/ArrayList;)V

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

    const/4 v0, 0x1

    .line 213
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIdString(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 214
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setDescricaoAnormalidadeLeitura(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 215
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIndicadorAceitaLeitura(Ljava/lang/Integer;)V

    const/4 v0, 0x4

    .line 216
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIdConsumoACobrarComLeitura(Ljava/lang/Integer;)V

    const/4 v0, 0x5

    .line 217
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIdConsumoACobrarSemLeitura(Ljava/lang/Integer;)V

    const/4 v0, 0x6

    .line 218
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIdLeituraAnormLeituraComLeitura(Ljava/lang/Integer;)V

    const/4 v0, 0x7

    .line 219
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIdLeituraAnormLeituraSemLeitura(Ljava/lang/Integer;)V

    const/16 v0, 0x8

    .line 220
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIndicadorUso(Ljava/lang/Integer;)V

    const/16 v0, 0x9

    .line 221
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setNumeroFatorSemLeitura(Ljava/math/BigDecimal;)V

    :cond_0
    const/16 v0, 0xa

    .line 225
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setNumeroFatorComLeitura(Ljava/math/BigDecimal;)V

    :cond_1
    const/16 v0, 0xb

    .line 229
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIndicadorCalcadaMensagem(Ljava/lang/Integer;)V

    const/16 v0, 0xc

    .line 230
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIndicadorHidrometroMensagem(Ljava/lang/Integer;)V

    const/16 v0, 0xd

    .line 231
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIndicadorNaoImpressaoConta(Ljava/lang/Integer;)V

    const/16 v0, 0xe

    .line 232
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIndicadorFotoObrigatoria(Ljava/lang/Integer;)V

    .line 236
    :cond_2
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setUltimaAlteracao(Ljava/lang/String;)V

    const/16 v0, 0xf

    .line 239
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIndicadorNotificaCliente(Ljava/lang/Integer;)V

    const/16 v0, 0x11

    .line 240
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIndicadorUsoSistema(Ljava/lang/Integer;)V

    const-string p1, ""

    .line 242
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setDescricaoMensagemConta(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 185
    sget-object v0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getDescricaoAnormalidadeLeitura()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->descricaoAnormalidadeLeitura:Ljava/lang/String;

    return-object v0
.end method

.method public getDescricaoMensagemConta()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->descricaoMensagemConta:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdConsumoACobrarComLeitura()Ljava/lang/Integer;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->idConsumoACobrarComLeitura:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdConsumoACobrarSemLeitura()Ljava/lang/Integer;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->idConsumoACobrarSemLeitura:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdLeituraAnormLeituraComLeitura()Ljava/lang/Integer;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->idLeituraAnormLeituraComLeitura:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdLeituraAnormLeituraSemLeitura()Ljava/lang/Integer;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->idLeituraAnormLeituraSemLeitura:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorAceitaLeitura()Ljava/lang/Integer;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->indicadorAceitaLeitura:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorCalcadaMensagem()Ljava/lang/Integer;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->indicadorCalcadaMensagem:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorFotoObrigatoria()Ljava/lang/Integer;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->indicadorFotoObrigatoria:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorHidrometroMensagem()Ljava/lang/Integer;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->indicadorHidrometroMensagem:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorNaoImpressaoConta()Ljava/lang/Integer;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->indicadorNaoImpressaoConta:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorNotificaCliente()Ljava/lang/Integer;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->indicadorNotificaCliente:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorUso()Ljava/lang/Integer;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->indicadorUso:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorUsoSistema()Ljava/lang/Integer;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->indicadorUsoSistema:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "leitura_anormalidade"

    return-object v0
.end method

.method public getNumeroFatorComLeitura()Ljava/math/BigDecimal;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->numeroFatorComLeitura:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getNumeroFatorSemLeitura()Ljava/math/BigDecimal;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->numeroFatorSemLeitura:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->ultimaAlteracao:Ljava/util/Date;

    return-object v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/LeituraAnormalidade;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 314
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "LTAN_ID"

    .line 315
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "LTAN_DSLEITURAANORMALIDADE"

    .line 316
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "LACS_IDCONSACOBRARCOMLEIT"

    .line 317
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "LACS_IDCONSACOBRARSEMLEIT"

    .line 318
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "LALT_IDLEITAFATURARCOMLEIT"

    .line 319
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "LALT_IDLEITAFATURARSEMLEIT"

    .line 320
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "LTAN_ICCALCADAMSG"

    .line 321
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "LTAN_ICSUBSHIDROMETRORMSG"

    .line 322
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v16, v14

    const-string v14, "LTAN_ICLEITURA"

    move/from16 v17, v15

    .line 323
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v18, v12

    const-string v12, "LTAN_ICNAOIMPRIMIRCONTA"

    move/from16 v19, v13

    .line 324
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v20, v12

    const-string v12, "LTAN_ICUSO"

    move/from16 v21, v13

    .line 325
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v22, v12

    const-string v12, "LTAN_NNFATORCOMLEITURA"

    move/from16 v23, v13

    .line 326
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v24, v12

    const-string v12, "LTAN_NNFATORSEMLEITURA"

    move/from16 v25, v13

    .line 327
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v26, v12

    const-string v12, "LTAN_TMULTIMAALTERACAO"

    .line 328
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move/from16 v27, v12

    const-string v12, "LTAN_ICFOTOOBRIGATORIA"

    move/from16 v28, v13

    .line 329
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v29, v12

    const-string v12, "LTAN_ICNOTIFICACLIENTE"

    .line 330
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move/from16 v30, v12

    const-string v12, "LTAN_DESCRICAOMENSAGEMCONTA"

    .line 331
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move/from16 v31, v12

    const-string v12, "LTAN_ICUSOSISTEMA"

    move/from16 v32, v13

    .line 332
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v33, v12

    .line 334
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v34, v12

    .line 336
    :goto_0
    new-instance v12, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v12}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    move/from16 v35, v13

    .line 337
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setId(Ljava/lang/Integer;)V

    .line 338
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setDescricaoAnormalidadeLeitura(Ljava/lang/String;)V

    .line 339
    invoke-static {v0, v4, v5}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIdConsumoACobrarComLeitura(Ljava/lang/Integer;)V

    .line 340
    invoke-static {v0, v6, v7}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIdConsumoACobrarSemLeitura(Ljava/lang/Integer;)V

    .line 341
    invoke-static {v0, v8, v9}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIdLeituraAnormLeituraComLeitura(Ljava/lang/Integer;)V

    .line 342
    invoke-static {v0, v10, v11}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIdLeituraAnormLeituraSemLeitura(Ljava/lang/Integer;)V

    .line 343
    invoke-static {v0, v14, v15}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIndicadorAceitaLeitura(Ljava/lang/Integer;)V

    move/from16 v13, v19

    move/from16 v19, v2

    move-object/from16 v36, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v36

    .line 344
    invoke-static {v0, v1, v13}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIndicadorCalcadaMensagem(Ljava/lang/Integer;)V

    move/from16 v2, v17

    move/from16 v17, v3

    move-object/from16 v36, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v36

    .line 345
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIndicadorHidrometroMensagem(Ljava/lang/Integer;)V

    move/from16 v3, v21

    move/from16 v21, v2

    move-object/from16 v36, v20

    move-object/from16 v20, v1

    move-object/from16 v1, v36

    .line 346
    invoke-static {v0, v1, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIndicadorNaoImpressaoConta(Ljava/lang/Integer;)V

    move/from16 v2, v23

    move/from16 v23, v3

    move-object/from16 v36, v22

    move-object/from16 v22, v1

    move-object/from16 v1, v36

    .line 347
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIndicadorUso(Ljava/lang/Integer;)V

    move/from16 v3, v25

    move/from16 v25, v2

    move-object/from16 v36, v24

    move-object/from16 v24, v1

    move-object/from16 v1, v36

    .line 348
    invoke-static {v0, v1, v3}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setNumeroFatorComLeitura(Ljava/math/BigDecimal;)V

    move/from16 v2, v28

    move/from16 v28, v3

    move-object/from16 v36, v26

    move-object/from16 v26, v1

    move-object/from16 v1, v36

    .line 349
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setNumeroFatorSemLeitura(Ljava/math/BigDecimal;)V

    move/from16 v3, v27

    move-object/from16 v27, v1

    .line 350
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setUltimaAlteracao(Ljava/lang/String;)V

    move/from16 v1, v32

    move/from16 v32, v3

    move-object/from16 v36, v29

    move/from16 v29, v2

    move-object/from16 v2, v36

    .line 351
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIndicadorFotoObrigatoria(Ljava/lang/Integer;)V

    move/from16 v3, v30

    move/from16 v30, v1

    .line 352
    invoke-static {v0, v2, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIndicadorNotificaCliente(Ljava/lang/Integer;)V

    move/from16 v1, v31

    move-object/from16 v31, v2

    .line 353
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setDescricaoMensagemConta(Ljava/lang/String;)V

    move/from16 v2, v35

    move/from16 v35, v3

    move-object/from16 v36, v33

    move/from16 v33, v1

    move-object/from16 v1, v36

    .line 354
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setIndicadorUsoSistema(Ljava/lang/Integer;)V

    move-object/from16 v3, v34

    .line 356
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_0

    move-object v12, v3

    goto :goto_1

    :cond_0
    move-object/from16 v34, v3

    move/from16 v3, v17

    move/from16 v17, v21

    move/from16 v21, v23

    move/from16 v23, v25

    move/from16 v25, v28

    move/from16 v28, v29

    move-object/from16 v29, v31

    move/from16 v31, v33

    move-object/from16 v33, v1

    move-object/from16 v1, v18

    move-object/from16 v18, v16

    move-object/from16 v16, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v27

    move/from16 v27, v32

    move/from16 v32, v30

    move/from16 v30, v35

    move/from16 v36, v13

    move v13, v2

    move/from16 v2, v19

    move/from16 v19, v36

    goto/16 :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_1
    return-object v12
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 283
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 284
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LTAN_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getDescricaoAnormalidadeLeitura()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LTAN_DSLEITURAANORMALIDADE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarComLeitura()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LACS_IDCONSACOBRARCOMLEIT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdConsumoACobrarSemLeitura()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LACS_IDCONSACOBRARSEMLEIT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdLeituraAnormLeituraComLeitura()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LALT_IDLEITAFATURARCOMLEIT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIdLeituraAnormLeituraSemLeitura()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LALT_IDLEITAFATURARSEMLEIT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorCalcadaMensagem()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LTAN_ICCALCADAMSG"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorHidrometroMensagem()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LTAN_ICSUBSHIDROMETRORMSG"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorAceitaLeitura()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LTAN_ICLEITURA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorNaoImpressaoConta()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LTAN_ICNAOIMPRIMIRCONTA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorFotoObrigatoria()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LTAN_ICFOTOOBRIGATORIA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 295
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorUso()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LTAN_ICUSO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getNumeroFatorComLeitura()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getNumeroFatorComLeitura()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LTAN_NNFATORCOMLEITURA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getNumeroFatorSemLeitura()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getNumeroFatorSemLeitura()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LTAN_NNFATORSEMLEITURA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_1
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LTAN_TMULTIMAALTERACAO"

    .line 303
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorNotificaCliente()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LTAN_ICNOTIFICACLIENTE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getDescricaoMensagemConta()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LTAN_DESCRICAOMENSAGEMCONTA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorUsoSistema()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LTAN_ICUSOSISTEMA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public setDescricaoAnormalidadeLeitura(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->descricaoAnormalidadeLeitura:Ljava/lang/String;

    return-void
.end method

.method public setDescricaoMensagemConta(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->descricaoMensagemConta:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdConsumoACobrarComLeitura(Ljava/lang/Integer;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->idConsumoACobrarComLeitura:Ljava/lang/Integer;

    return-void
.end method

.method public setIdConsumoACobrarSemLeitura(Ljava/lang/Integer;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->idConsumoACobrarSemLeitura:Ljava/lang/Integer;

    return-void
.end method

.method public setIdLeituraAnormLeituraComLeitura(Ljava/lang/Integer;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->idLeituraAnormLeituraComLeitura:Ljava/lang/Integer;

    return-void
.end method

.method public setIdLeituraAnormLeituraSemLeitura(Ljava/lang/Integer;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->idLeituraAnormLeituraSemLeitura:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorAceitaLeitura(Ljava/lang/Integer;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->indicadorAceitaLeitura:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorCalcadaMensagem(Ljava/lang/Integer;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->indicadorCalcadaMensagem:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorFotoObrigatoria(Ljava/lang/Integer;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->indicadorFotoObrigatoria:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorHidrometroMensagem(Ljava/lang/Integer;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->indicadorHidrometroMensagem:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorNaoImpressaoConta(Ljava/lang/Integer;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->indicadorNaoImpressaoConta:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorNotificaCliente(Ljava/lang/Integer;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->indicadorNotificaCliente:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorUso(Ljava/lang/Integer;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->indicadorUso:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorUsoSistema(Ljava/lang/Integer;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->indicadorUsoSistema:Ljava/lang/Integer;

    return-void
.end method

.method public setNumeroFatorComLeitura(Ljava/math/BigDecimal;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->numeroFatorComLeitura:Ljava/math/BigDecimal;

    return-void
.end method

.method public setNumeroFatorSemLeitura(Ljava/math/BigDecimal;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->numeroFatorSemLeitura:Ljava/math/BigDecimal;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/String;)V
    .locals 0

    .line 173
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method
