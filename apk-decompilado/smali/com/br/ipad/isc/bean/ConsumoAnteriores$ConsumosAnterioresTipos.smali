.class public final Lcom/br/ipad/isc/bean/ConsumoAnteriores$ConsumosAnterioresTipos;
.super Ljava/lang/Object;
.source "ConsumoAnteriores.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ConsumoAnteriores;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConsumosAnterioresTipos"
.end annotation


# instance fields
.field public final ANOMESREFERENCIA:Ljava/lang/String;

.field public final CONSUMOFATURADO:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final IDANORMALIDADECONSUMO:Ljava/lang/String;

.field public final IDANORMALIDADELEITURA:Ljava/lang/String;

.field public final MATRICULA:Ljava/lang/String;

.field public final TIPOLIGACAO:Ljava/lang/String;

.field public final ULTIMAALTERACAO:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/ConsumoAnteriores;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/ConsumoAnteriores;)V
    .locals 5

    .line 115
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores$ConsumosAnterioresTipos;->this$0:Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT "

    .line 116
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores$ConsumosAnterioresTipos;->ID:Ljava/lang/String;

    const-string v0, " CONSTRAINT [FK1_CONSUMO_ANTERIORES] REFERENCES [imovel_conta]([IMOV_ID]) ON DELETE RESTRICT ON UPDATE RESTRICT "

    .line 117
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores$ConsumosAnterioresTipos;->MATRICULA:Ljava/lang/String;

    const-string v1, " INTEGER  NOT NULL "

    .line 118
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores$ConsumosAnterioresTipos;->TIPOLIGACAO:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores$ConsumosAnterioresTipos;->ANOMESREFERENCIA:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores$ConsumosAnterioresTipos;->CONSUMOFATURADO:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores$ConsumosAnterioresTipos;->IDANORMALIDADELEITURA:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores$ConsumosAnterioresTipos;->IDANORMALIDADECONSUMO:Ljava/lang/String;

    const-string v2, " TIMESTAMP NOT NULL "

    .line 123
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores$ConsumosAnterioresTipos;->ULTIMAALTERACAO:Ljava/lang/String;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    const/4 p1, 0x2

    aput-object v1, v3, p1

    const/4 p1, 0x3

    aput-object v1, v3, p1

    const/4 p1, 0x4

    aput-object v1, v3, p1

    const/4 p1, 0x5

    aput-object v1, v3, p1

    const/4 p1, 0x6

    aput-object v1, v3, p1

    const/4 p1, 0x7

    aput-object v2, v3, p1

    .line 125
    iput-object v3, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores$ConsumosAnterioresTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnteriores$ConsumosAnterioresTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
