.class public final Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;
.super Ljava/lang/Object;
.source "LeituraAnormalidade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/LeituraAnormalidade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LeiturasAnormalidadesTipos"
.end annotation


# instance fields
.field public final DESCRICAOLEITURAANORMALIDADE:Ljava/lang/String;

.field public final DESCRICAOMENSAGEMCONTA:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final IDCONSUMOACOBRARCOMLEITURA:Ljava/lang/String;

.field public final IDCONSUMOACOBRARSEMLEITURA:Ljava/lang/String;

.field public final IDLEITURAANORMALIDADECOMLEITURA:Ljava/lang/String;

.field public final IDLEITURAANORMALIDADESEMLEITURA:Ljava/lang/String;

.field public final INDICADORCALCADAMENSAGEM:Ljava/lang/String;

.field public final INDICADORFOTOOBRIGATORIA:Ljava/lang/String;

.field public final INDICADORHIDROMETROMENSAGEM:Ljava/lang/String;

.field public final INDICADORLEITURA:Ljava/lang/String;

.field public final INDICADORNAOIMPRIMIRCONTA:Ljava/lang/String;

.field public final INDICADORNOTIFICACLIENTE:Ljava/lang/String;

.field public final INDICADORUSO:Ljava/lang/String;

.field public final INDICADORUSOSISTEMA:Ljava/lang/String;

.field public final NUMEROFATORCOMLEITURA:Ljava/lang/String;

.field public final NUMEROFATORSEMLEITURA:Ljava/lang/String;

.field public final ULTIMAALTERACAO:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)V
    .locals 8

    .line 249
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->this$0:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT "

    .line 250
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->ID:Ljava/lang/String;

    const-string v0, " VARCHAR(25) NOT NULL "

    .line 251
    iput-object v0, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->DESCRICAOLEITURAANORMALIDADE:Ljava/lang/String;

    const-string v1, " INTEGER NOT NULL "

    .line 252
    iput-object v1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->INDICADORLEITURA:Ljava/lang/String;

    .line 253
    iput-object v1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->IDCONSUMOACOBRARCOMLEITURA:Ljava/lang/String;

    .line 254
    iput-object v1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->IDCONSUMOACOBRARSEMLEITURA:Ljava/lang/String;

    .line 255
    iput-object v1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->IDLEITURAANORMALIDADECOMLEITURA:Ljava/lang/String;

    .line 256
    iput-object v1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->IDLEITURAANORMALIDADESEMLEITURA:Ljava/lang/String;

    .line 257
    iput-object v1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->INDICADORUSO:Ljava/lang/String;

    const-string v2, " NUMERIC(3,2) NOT NULL "

    .line 258
    iput-object v2, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->NUMEROFATORSEMLEITURA:Ljava/lang/String;

    .line 259
    iput-object v2, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->NUMEROFATORCOMLEITURA:Ljava/lang/String;

    .line 260
    iput-object v1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->INDICADORCALCADAMENSAGEM:Ljava/lang/String;

    .line 261
    iput-object v1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->INDICADORHIDROMETROMENSAGEM:Ljava/lang/String;

    const-string v3, " INTEGER NOT NULL DEFAULT 2 "

    .line 262
    iput-object v3, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->INDICADORNAOIMPRIMIRCONTA:Ljava/lang/String;

    .line 263
    iput-object v3, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->INDICADORFOTOOBRIGATORIA:Ljava/lang/String;

    const-string v4, " TIMESTAMP NOT NULL "

    .line 264
    iput-object v4, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->ULTIMAALTERACAO:Ljava/lang/String;

    .line 265
    iput-object v1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->INDICADORNOTIFICACLIENTE:Ljava/lang/String;

    const-string v5, " VARCHAR(60) NULL "

    .line 266
    iput-object v5, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->DESCRICAOMENSAGEMCONTA:Ljava/lang/String;

    .line 267
    iput-object v1, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->INDICADORUSOSISTEMA:Ljava/lang/String;

    const/16 v6, 0x12

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

    aput-object v1, v6, p1

    const/16 p1, 0x8

    aput-object v2, v6, p1

    const/16 p1, 0x9

    aput-object v2, v6, p1

    const/16 p1, 0xa

    aput-object v1, v6, p1

    const/16 p1, 0xb

    aput-object v1, v6, p1

    const/16 p1, 0xc

    aput-object v3, v6, p1

    const/16 p1, 0xd

    aput-object v3, v6, p1

    const/16 p1, 0xe

    aput-object v4, v6, p1

    const/16 p1, 0xf

    aput-object v1, v6, p1

    const/16 p1, 0x10

    aput-object v5, v6, p1

    const/16 p1, 0x11

    aput-object v1, v6, p1

    .line 269
    iput-object v6, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidadesTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
