.class public Lcom/br/ipad/isc/bean/ConsumoAnormalidade;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "ConsumoAnormalidade.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/ConsumoAnormalidade$ConsumoAnormalidadesTipos;,
        Lcom/br/ipad/isc/bean/ConsumoAnormalidade$ConsumoAnormalidades;
    }
.end annotation


# static fields
.field public static final CONSUMO_ANORM_HIDROMETRO_PARADO:I = 0x1f

.field public static final CONSUMO_ANORM_LEITURA:I = 0x11

.field public static final CONSUMO_FORA_FAIXA:I = 0xd

.field public static final ESTOURO_CONSUMO:I = 0x5

.field public static final HIDROMETRO_PARADO_HP:Ljava/lang/Integer;

.field public static final HIDROMETRO_SUBSTITUIDO_INFORMADO:Ljava/lang/Integer;

.field public static final HIDROMETRO_SUBSTITUIDO_NAO_INFORMADO:Ljava/lang/Integer;

.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private descricao:Ljava/lang/String;

.field private id:Ljava/lang/Integer;

.field private indicadorFotoAbrigatoria:Ljava/lang/Integer;

.field private indicadorImprimeConta:Ljava/lang/Integer;

.field private indicadorImprimeRetencao:Ljava/lang/Integer;

.field private indicadorRegraImovelCondominio:Ljava/lang/Integer;

.field private mensagemConta:Ljava/lang/String;

.field private ultimaAlteracao:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->HIDROMETRO_SUBSTITUIDO_INFORMADO:Ljava/lang/Integer;

    const/16 v0, 0xe

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->HIDROMETRO_SUBSTITUIDO_NAO_INFORMADO:Ljava/lang/Integer;

    const/16 v0, 0x1f

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->HIDROMETRO_PARADO_HP:Ljava/lang/Integer;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CSAN_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CSAN_DSMENSAGEMCONTA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CSAN_DSCONSUMOANORMALIDADE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CSAN_TMULTIMAALTERACAO"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CSAN_ICREGRAIMOVCONDOMINIO"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CSAN_ICFOTOOBRIGATORIA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CSAN_ICIMPRIMECONTA"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CSAN_ICIMPRIMERETENCNT"

    aput-object v2, v0, v1

    .line 117
    sput-object v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->id:Ljava/lang/Integer;

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

    .line 24
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 25
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->insertFromFile(Ljava/util/ArrayList;)V

    return-void
.end method

.method private insertFromFile(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 140
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setIdString(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 141
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setMensagemConta(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 142
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setDescricao(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setUltimaAlteracao(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 145
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setIndicadorRegraImovelCondominio(Ljava/lang/Integer;)V

    const/4 v0, 0x5

    .line 146
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setIndicadorFotoAbrigatoria(Ljava/lang/Integer;)V

    const/4 v0, 0x6

    .line 147
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setIndicadorImprimeConta(Ljava/lang/Integer;)V

    const/4 v0, 0x7

    .line 148
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setIndicadorImprimeRetencao(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public exibeMensagem()Z
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->id:Ljava/lang/Integer;

    sget-object v1, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->HIDROMETRO_SUBSTITUIDO_INFORMADO:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->id:Ljava/lang/Integer;

    sget-object v1, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->HIDROMETRO_SUBSTITUIDO_NAO_INFORMADO:Ljava/lang/Integer;

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->id:Ljava/lang/Integer;

    sget-object v1, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->HIDROMETRO_PARADO_HP:Ljava/lang/Integer;

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 124
    sget-object v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getDescricao()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->descricao:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorFotoAbrigatoria()Ljava/lang/Integer;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->indicadorFotoAbrigatoria:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorImprimeConta()Ljava/lang/Integer;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->indicadorImprimeConta:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorImprimeRetencao()Ljava/lang/Integer;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->indicadorImprimeRetencao:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorRegraImovelCondominio()Ljava/lang/Integer;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->indicadorRegraImovelCondominio:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMensagemConta()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->mensagemConta:Ljava/lang/String;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "consumo_anormalidade"

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->ultimaAlteracao:Ljava/util/Date;

    return-object v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoAnormalidade;",
            ">;"
        }
    .end annotation

    const-string v0, "CSAN_ID"

    .line 193
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "CSAN_DSMENSAGEMCONTA"

    .line 194
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "CSAN_DSCONSUMOANORMALIDADE"

    .line 195
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "CSAN_TMULTIMAALTERACAO"

    .line 196
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "CSAN_ICREGRAIMOVCONDOMINIO"

    .line 197
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "CSAN_ICFOTOOBRIGATORIA"

    .line 198
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "CSAN_ICIMPRIMECONTA"

    .line 199
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "CSAN_ICIMPRIMERETENCNT"

    .line 200
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 202
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 204
    :cond_0
    new-instance v9, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {v9}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    .line 205
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setId(Ljava/lang/Integer;)V

    .line 206
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setMensagemConta(Ljava/lang/String;)V

    .line 207
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setDescricao(Ljava/lang/String;)V

    .line 208
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setUltimaAlteracao(Ljava/lang/String;)V

    .line 209
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setIndicadorRegraImovelCondominio(Ljava/lang/Integer;)V

    .line 210
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setIndicadorFotoAbrigatoria(Ljava/lang/Integer;)V

    .line 211
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setIndicadorImprimeConta(Ljava/lang/Integer;)V

    .line 212
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setIndicadorImprimeRetencao(Ljava/lang/Integer;)V

    .line 214
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    return-object v8
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 176
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 178
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSAN_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getMensagemConta()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSAN_DSMENSAGEMCONTA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getDescricao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSAN_DSCONSUMOANORMALIDADE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSAN_TMULTIMAALTERACAO"

    .line 182
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorRegraImovelCondominio()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSAN_ICREGRAIMOVCONDOMINIO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorFotoAbrigatoria()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSAN_ICFOTOOBRIGATORIA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorImprimeConta()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSAN_ICIMPRIMECONTA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorImprimeRetencao()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSAN_ICIMPRIMERETENCNT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public setDescricao(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->descricao:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorFotoAbrigatoria(Ljava/lang/Integer;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->indicadorFotoAbrigatoria:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorImprimeConta(Ljava/lang/Integer;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->indicadorImprimeConta:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorImprimeRetencao(Ljava/lang/Integer;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->indicadorImprimeRetencao:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorRegraImovelCondominio(Ljava/lang/Integer;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->indicadorRegraImovelCondominio:Ljava/lang/Integer;

    return-void
.end method

.method public setMensagemConta(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->mensagemConta:Ljava/lang/String;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method
