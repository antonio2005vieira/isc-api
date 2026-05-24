.class public final Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;
.super Ljava/lang/Object;
.source "ConsumoHistorico.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ConsumoHistorico;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConsumosHistoricosTipos"
.end annotation


# instance fields
.field public final ANORMALIDADECONSUMO:Ljava/lang/String;

.field public final ANORMLEITURAFATURADA:Ljava/lang/String;

.field public final CONSUMOCOBRADOMICRO:Ljava/lang/String;

.field public final CONSUMOCOBRADOORIGINAL:Ljava/lang/String;

.field public final CONSUMOCOBSEMCONTRATODEMANDA:Ljava/lang/String;

.field public final CONSUMOMEDIDO:Ljava/lang/String;

.field public final CONSUMORATEIO:Ljava/lang/String;

.field public final COSNUMOCOBRADO:Ljava/lang/String;

.field public final DIASCONSUMO:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final LEITURAATUAL:Ljava/lang/String;

.field public final MATRICULA:Ljava/lang/String;

.field public final MESMOTIVOREVISAO:Ljava/lang/String;

.field public final TIPOCONSUMO:Ljava/lang/String;

.field public final TIPOLIGACAO:Ljava/lang/String;

.field public final ULTIMAALTERACAO:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/ConsumoHistorico;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/ConsumoHistorico;)V
    .locals 7

    .line 206
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;->this$0:Lcom/br/ipad/isc/bean/ConsumoHistorico;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT"

    .line 207
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;->ID:Ljava/lang/String;

    const-string v0, " INTEGER CONSTRAINT [FK1_CONSUMO_HISTORICO] REFERENCES [imovel_conta]([IMOV_ID]) ON DELETE RESTRICT ON UPDATE RESTRICT"

    .line 208
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;->MATRICULA:Ljava/lang/String;

    const-string v1, " INTEGER NOT NULL"

    .line 209
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;->TIPOLIGACAO:Ljava/lang/String;

    const-string v2, " INTEGER NULL"

    .line 210
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;->CONSUMOMEDIDO:Ljava/lang/String;

    .line 211
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;->COSNUMOCOBRADO:Ljava/lang/String;

    .line 212
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;->CONSUMOCOBRADOMICRO:Ljava/lang/String;

    .line 213
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;->CONSUMORATEIO:Ljava/lang/String;

    .line 214
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;->CONSUMOCOBSEMCONTRATODEMANDA:Ljava/lang/String;

    .line 215
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;->CONSUMOCOBRADOORIGINAL:Ljava/lang/String;

    .line 216
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;->LEITURAATUAL:Ljava/lang/String;

    .line 217
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;->TIPOCONSUMO:Ljava/lang/String;

    const-string v3, " INTEGER CONSTRAINT [FK2_CONSUMO_HISTORICO] REFERENCES [consumo_anormalidade]([CSAN_ID]) ON DELETE RESTRICT ON UPDATE RESTRICT"

    .line 218
    iput-object v3, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;->ANORMALIDADECONSUMO:Ljava/lang/String;

    .line 219
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;->DIASCONSUMO:Ljava/lang/String;

    const-string v4, " CONSTRAINT [FK2_CONSUMO_HISTORICO] REFERENCES [leitura_anormalidade]([LTAN_ID]) ON DELETE RESTRICT ON UPDATE RESTRICT"

    .line 220
    iput-object v4, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;->ANORMLEITURAFATURADA:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;->ULTIMAALTERACAO:Ljava/lang/String;

    .line 222
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;->MESMOTIVOREVISAO:Ljava/lang/String;

    const/16 v5, 0x10

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 p1, 0x1

    aput-object v0, v5, p1

    const/4 p1, 0x2

    aput-object v1, v5, p1

    const/4 p1, 0x3

    aput-object v2, v5, p1

    const/4 p1, 0x4

    aput-object v1, v5, p1

    const/4 p1, 0x5

    aput-object v2, v5, p1

    const/4 p1, 0x6

    aput-object v2, v5, p1

    const/4 p1, 0x7

    aput-object v2, v5, p1

    const/16 p1, 0x8

    aput-object v1, v5, p1

    const/16 p1, 0x9

    aput-object v2, v5, p1

    const/16 p1, 0xa

    aput-object v1, v5, p1

    const/16 p1, 0xb

    aput-object v3, v5, p1

    const/16 p1, 0xc

    aput-object v2, v5, p1

    const/16 p1, 0xd

    aput-object v4, v5, p1

    const/16 p1, 0xe

    aput-object v1, v5, p1

    const/16 p1, 0xf

    aput-object v2, v5, p1

    .line 224
    iput-object v5, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricosTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
