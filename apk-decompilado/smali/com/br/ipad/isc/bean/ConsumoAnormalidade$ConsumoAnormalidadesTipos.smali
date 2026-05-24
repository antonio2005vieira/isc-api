.class public final Lcom/br/ipad/isc/bean/ConsumoAnormalidade$ConsumoAnormalidadesTipos;
.super Ljava/lang/Object;
.source "ConsumoAnormalidade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ConsumoAnormalidade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConsumoAnormalidadesTipos"
.end annotation


# instance fields
.field public final DESCRICAO:Ljava/lang/String;

.field public final IC_FOTO_OBRIGATORIA:Ljava/lang/String;

.field public final IC_IMPRIME_CONTA:Ljava/lang/String;

.field public final IC_IMPRIME_RETENCAO_CONTA:Ljava/lang/String;

.field public final IC_REGRA_IMOVEL_CONDOMINIO:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final MENSAGEMCONTA:Ljava/lang/String;

.field public final ULTIMAALTERACAO:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V
    .locals 7

    .line 156
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade$ConsumoAnormalidadesTipos;->this$0:Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT "

    .line 157
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade$ConsumoAnormalidadesTipos;->ID:Ljava/lang/String;

    const-string v0, " VARCHAR(210) NULL"

    .line 158
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade$ConsumoAnormalidadesTipos;->MENSAGEMCONTA:Ljava/lang/String;

    const-string v1, " VARCHAR(25) NOT NULL"

    .line 159
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade$ConsumoAnormalidadesTipos;->DESCRICAO:Ljava/lang/String;

    const-string v2, " TIMESTAMP NOT NULL"

    .line 160
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade$ConsumoAnormalidadesTipos;->ULTIMAALTERACAO:Ljava/lang/String;

    const-string v3, " INTEGER NOT NULL"

    .line 161
    iput-object v3, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade$ConsumoAnormalidadesTipos;->IC_REGRA_IMOVEL_CONDOMINIO:Ljava/lang/String;

    const-string v4, " INTEGER NULL"

    .line 162
    iput-object v4, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade$ConsumoAnormalidadesTipos;->IC_FOTO_OBRIGATORIA:Ljava/lang/String;

    .line 163
    iput-object v3, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade$ConsumoAnormalidadesTipos;->IC_IMPRIME_CONTA:Ljava/lang/String;

    .line 164
    iput-object v3, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade$ConsumoAnormalidadesTipos;->IC_IMPRIME_RETENCAO_CONTA:Ljava/lang/String;

    const/16 v5, 0x8

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

    aput-object v3, v5, p1

    const/4 p1, 0x5

    aput-object v4, v5, p1

    const/4 p1, 0x6

    aput-object v3, v5, p1

    const/4 p1, 0x7

    aput-object v3, v5, p1

    .line 166
    iput-object v5, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade$ConsumoAnormalidadesTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoAnormalidade$ConsumoAnormalidadesTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
