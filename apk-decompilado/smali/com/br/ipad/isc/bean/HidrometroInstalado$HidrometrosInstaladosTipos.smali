.class public final Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;
.super Ljava/lang/Object;
.source "HidrometroInstalado.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/HidrometroInstalado;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HidrometrosInstaladosTipos"
.end annotation


# instance fields
.field public final CONSUMOMEDIO:Ljava/lang/String;

.field public final CONSUMOMINIMOCONTRATADO:Ljava/lang/String;

.field public final DATAINSTALACAOHIDROMETRO:Ljava/lang/String;

.field public final DATALEITURAANORMALIDADETFATURAMENTO:Ljava/lang/String;

.field public final DATALEITURACAMPO:Ljava/lang/String;

.field public final DESCRICAOHIDRLOCALINSTALACAO:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final IDANORMALIDADECAMPO:Ljava/lang/String;

.field public final IDSITUACAOLEITURAANTERIOR:Ljava/lang/String;

.field public final INDICADOPARALISARLEITURA:Ljava/lang/String;

.field public final LEITURAANORMALIDADETFATURAMENTO:Ljava/lang/String;

.field public final LEITURAANTERIORDIGITADA:Ljava/lang/String;

.field public final LEITURAANTERIORINFORMADA:Ljava/lang/String;

.field public final LEITURAATUALFATURAMENTO:Ljava/lang/String;

.field public final LEITURAATUALFATURAMENTOHELPER:Ljava/lang/String;

.field public final LEITURACAMPO:Ljava/lang/String;

.field public final LEITURAINSTALACAOHIDROMETRO:Ljava/lang/String;

.field public final LEITURALIMITEINFERIOR:Ljava/lang/String;

.field public final LEITURALIMITESUPERIOR:Ljava/lang/String;

.field public final MATRICULA:Ljava/lang/String;

.field public final MEDICAOTIPO:Ljava/lang/String;

.field public final NUMERODIGITOSLEITURA:Ljava/lang/String;

.field public final NUMEROHIDROMETRO:Ljava/lang/String;

.field public final PERCDESCONTOCONTRATODEMANDA:Ljava/lang/String;

.field public final RATEIOTIPO:Ljava/lang/String;

.field public final TOMBAMENTO:Ljava/lang/String;

.field public final ULTIMAALTERACAO:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/HidrometroInstalado;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/HidrometroInstalado;)V
    .locals 10

    .line 372
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->this$0:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT"

    .line 373
    iput-object p1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->ID:Ljava/lang/String;

    const-string v0, "  INTEGER  NOT NULL CONSTRAINT [FK1_HIDROMETRO_INSTALADO] REFERENCES [imovel_conta]([IMOV_ID]) ON DELETE RESTRICT ON UPDATE RESTRICT"

    .line 374
    iput-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->MATRICULA:Ljava/lang/String;

    const-string v1, " INTEGER  NOT NULL"

    .line 375
    iput-object v1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->MEDICAOTIPO:Ljava/lang/String;

    const-string v2, " VARCHAR(11) NULL"

    .line 376
    iput-object v2, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->NUMEROHIDROMETRO:Ljava/lang/String;

    const-string v3, " INTEGER NOT NULL"

    .line 377
    iput-object v3, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->DATAINSTALACAOHIDROMETRO:Ljava/lang/String;

    const-string v4, " INTEGER  NULL"

    .line 378
    iput-object v4, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->NUMERODIGITOSLEITURA:Ljava/lang/String;

    .line 379
    iput-object v1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->LEITURAANORMALIDADETFATURAMENTO:Ljava/lang/String;

    .line 380
    iput-object v3, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->DATALEITURAANORMALIDADETFATURAMENTO:Ljava/lang/String;

    .line 381
    iput-object v4, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->IDSITUACAOLEITURAANTERIOR:Ljava/lang/String;

    .line 382
    iput-object v1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->LEITURALIMITEINFERIOR:Ljava/lang/String;

    .line 383
    iput-object v1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->LEITURALIMITESUPERIOR:Ljava/lang/String;

    .line 384
    iput-object v1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->CONSUMOMEDIO:Ljava/lang/String;

    const-string v5, " VARCHAR(20) NOT NULL"

    .line 385
    iput-object v5, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->DESCRICAOHIDRLOCALINSTALACAO:Ljava/lang/String;

    .line 386
    iput-object v4, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->LEITURAANTERIORINFORMADA:Ljava/lang/String;

    .line 387
    iput-object v4, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->RATEIOTIPO:Ljava/lang/String;

    .line 388
    iput-object v4, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->LEITURAINSTALACAOHIDROMETRO:Ljava/lang/String;

    .line 389
    iput-object v1, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->INDICADOPARALISARLEITURA:Ljava/lang/String;

    .line 390
    iput-object v4, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->CONSUMOMINIMOCONTRATADO:Ljava/lang/String;

    .line 391
    iput-object v4, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->PERCDESCONTOCONTRATODEMANDA:Ljava/lang/String;

    const-string v6, " VARCHAR(10) NULL"

    .line 392
    iput-object v6, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->TOMBAMENTO:Ljava/lang/String;

    const-string v7, " INTEGER NULL"

    .line 393
    iput-object v7, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->LEITURACAMPO:Ljava/lang/String;

    .line 394
    iput-object v7, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->IDANORMALIDADECAMPO:Ljava/lang/String;

    .line 395
    iput-object v7, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->DATALEITURACAMPO:Ljava/lang/String;

    .line 396
    iput-object v7, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->LEITURAATUALFATURAMENTO:Ljava/lang/String;

    .line 397
    iput-object v7, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->LEITURAATUALFATURAMENTOHELPER:Ljava/lang/String;

    .line 398
    iput-object v7, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->LEITURAANTERIORDIGITADA:Ljava/lang/String;

    .line 399
    iput-object v3, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->ULTIMAALTERACAO:Ljava/lang/String;

    const/16 v8, 0x1b

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 p1, 0x1

    aput-object v0, v8, p1

    const/4 p1, 0x2

    aput-object v1, v8, p1

    const/4 p1, 0x3

    aput-object v2, v8, p1

    const/4 p1, 0x4

    aput-object v3, v8, p1

    const/4 p1, 0x5

    aput-object v4, v8, p1

    const/4 p1, 0x6

    aput-object v1, v8, p1

    const/4 p1, 0x7

    aput-object v3, v8, p1

    const/16 p1, 0x8

    aput-object v4, v8, p1

    const/16 p1, 0x9

    aput-object v1, v8, p1

    const/16 p1, 0xa

    aput-object v1, v8, p1

    const/16 p1, 0xb

    aput-object v1, v8, p1

    const/16 p1, 0xc

    aput-object v5, v8, p1

    const/16 p1, 0xd

    aput-object v4, v8, p1

    const/16 p1, 0xe

    aput-object v4, v8, p1

    const/16 p1, 0xf

    aput-object v4, v8, p1

    const/16 p1, 0x10

    aput-object v1, v8, p1

    const/16 p1, 0x11

    aput-object v4, v8, p1

    const/16 p1, 0x12

    aput-object v4, v8, p1

    const/16 p1, 0x13

    aput-object v6, v8, p1

    const/16 p1, 0x14

    aput-object v7, v8, p1

    const/16 p1, 0x15

    aput-object v7, v8, p1

    const/16 p1, 0x16

    aput-object v7, v8, p1

    const/16 p1, 0x17

    aput-object v7, v8, p1

    const/16 p1, 0x18

    aput-object v7, v8, p1

    const/16 p1, 0x19

    aput-object v7, v8, p1

    const/16 p1, 0x1a

    aput-object v3, v8, p1

    .line 401
    iput-object v8, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/br/ipad/isc/bean/HidrometroInstalado$HidrometrosInstaladosTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
