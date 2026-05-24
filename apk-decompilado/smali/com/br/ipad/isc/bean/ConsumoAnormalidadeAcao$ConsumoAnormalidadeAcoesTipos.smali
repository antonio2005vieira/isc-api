.class public final Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;
.super Ljava/lang/Object;
.source "ConsumoAnormalidadeAcao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConsumoAnormalidadeAcoesTipos"
.end annotation


# instance fields
.field public final CDMESCONSECUTIVOS:Ljava/lang/String;

.field public final CONSUMOANORMALIDADE:Ljava/lang/String;

.field public final FATORCONSUMO:Ljava/lang/String;

.field public final FATORCONSUMOSEGMES:Ljava/lang/String;

.field public final FATORCONSUMOTERMES:Ljava/lang/String;

.field public final ICCOBRANCACONSUMONORMAL:Ljava/lang/String;

.field public final ICGERACAOCARTAMES1:Ljava/lang/String;

.field public final ICGERACAOCARTAMES2:Ljava/lang/String;

.field public final ICGERACAOCARTAMES3:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final IDCATEGORIA:Ljava/lang/String;

.field public final IDLEITURAANORMCONSUMO:Ljava/lang/String;

.field public final IDLEITURAANORMCONSUMOSEGMES:Ljava/lang/String;

.field public final IDLEITURAANORMCONSUMOTERMES:Ljava/lang/String;

.field public final IDPERFIL:Ljava/lang/String;

.field public final MENSAGEMCONTA:Ljava/lang/String;

.field public final MENSAGEMCONTASEGMES:Ljava/lang/String;

.field public final MENSAGEMCONTATERMES:Ljava/lang/String;

.field public final ULTIMAALTERACAO:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;)V
    .locals 8

    .line 272
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->this$0:Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT"

    .line 273
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->ID:Ljava/lang/String;

    const-string v0, " INTEGER NOT NULL"

    .line 274
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->CONSUMOANORMALIDADE:Ljava/lang/String;

    const-string v1, " INTEGER  NULL"

    .line 275
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->IDCATEGORIA:Ljava/lang/String;

    .line 276
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->IDPERFIL:Ljava/lang/String;

    .line 277
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->IDLEITURAANORMCONSUMO:Ljava/lang/String;

    .line 278
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->IDLEITURAANORMCONSUMOSEGMES:Ljava/lang/String;

    .line 279
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->IDLEITURAANORMCONSUMOTERMES:Ljava/lang/String;

    const-string v2, " NUMERIC(5,2) NULL"

    .line 280
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->FATORCONSUMO:Ljava/lang/String;

    .line 281
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->FATORCONSUMOSEGMES:Ljava/lang/String;

    .line 282
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->FATORCONSUMOTERMES:Ljava/lang/String;

    const-string v3, " VARCHAR(120) NULL"

    .line 283
    iput-object v3, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->MENSAGEMCONTA:Ljava/lang/String;

    .line 284
    iput-object v3, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->MENSAGEMCONTASEGMES:Ljava/lang/String;

    .line 285
    iput-object v3, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->MENSAGEMCONTATERMES:Ljava/lang/String;

    const-string v4, " INTEGER NULL"

    .line 286
    iput-object v4, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->CDMESCONSECUTIVOS:Ljava/lang/String;

    const-string v5, " TIMESTAMP NOT NULL"

    .line 287
    iput-object v5, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->ULTIMAALTERACAO:Ljava/lang/String;

    .line 288
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->ICGERACAOCARTAMES1:Ljava/lang/String;

    .line 289
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->ICGERACAOCARTAMES2:Ljava/lang/String;

    .line 290
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->ICGERACAOCARTAMES3:Ljava/lang/String;

    .line 291
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->ICCOBRANCACONSUMONORMAL:Ljava/lang/String;

    const/16 v6, 0x13

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 p1, 0x1

    aput-object v0, v6, p1

    const/4 p1, 0x2

    aput-object v1, v6, p1

    const/4 p1, 0x3

    aput-object v1, v6, p1

    const/4 p1, 0x4

    aput-object v1, v6, p1

    const/4 p1, 0x5

    aput-object v1, v6, p1

    const/4 p1, 0x6

    aput-object v1, v6, p1

    const/4 p1, 0x7

    aput-object v2, v6, p1

    const/16 p1, 0x8

    aput-object v2, v6, p1

    const/16 p1, 0x9

    aput-object v2, v6, p1

    const/16 p1, 0xa

    aput-object v3, v6, p1

    const/16 p1, 0xb

    aput-object v3, v6, p1

    const/16 p1, 0xc

    aput-object v3, v6, p1

    const/16 p1, 0xd

    aput-object v4, v6, p1

    const/16 p1, 0xe

    aput-object v5, v6, p1

    const/16 p1, 0xf

    aput-object v0, v6, p1

    const/16 p1, 0x10

    aput-object v0, v6, p1

    const/16 p1, 0x11

    aput-object v0, v6, p1

    const/16 p1, 0x12

    aput-object v0, v6, p1

    .line 293
    iput-object v6, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao$ConsumoAnormalidadeAcoesTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
