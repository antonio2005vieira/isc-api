.class public final Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa$ContasCategoriasConsumosFaixasTipos;
.super Ljava/lang/Object;
.source "ContaCategoriaConsumoFaixa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ContasCategoriasConsumosFaixasTipos"
.end annotation


# instance fields
.field public final CONTACATEGORIA:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final NUMCONSUMO:Ljava/lang/String;

.field public final NUMCONSUMOFINAL:Ljava/lang/String;

.field public final NUMCONSUMOINICIAL:Ljava/lang/String;

.field public final ULTIMAALTERACAO:Ljava/lang/String;

.field public final VALORFATURADO:Ljava/lang/String;

.field public final VALORTARIFA:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;)V
    .locals 6

    .line 139
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa$ContasCategoriasConsumosFaixasTipos;->this$0:Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT "

    .line 140
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa$ContasCategoriasConsumosFaixasTipos;->ID:Ljava/lang/String;

    const-string v0, " CONSTRAINT [FK1_CONTA_CATG_CONS_FX] REFERENCES [conta_categoria]([CTCG_ID]) ON DELETE RESTRICT ON UPDATE RESTRICT "

    .line 141
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa$ContasCategoriasConsumosFaixasTipos;->CONTACATEGORIA:Ljava/lang/String;

    const-string v1, " INTEGER NOT NULL "

    .line 142
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa$ContasCategoriasConsumosFaixasTipos;->NUMCONSUMO:Ljava/lang/String;

    const-string v2, " NUMERIC(13,2) NOT NULL "

    .line 143
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa$ContasCategoriasConsumosFaixasTipos;->VALORFATURADO:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa$ContasCategoriasConsumosFaixasTipos;->NUMCONSUMOINICIAL:Ljava/lang/String;

    .line 145
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa$ContasCategoriasConsumosFaixasTipos;->NUMCONSUMOFINAL:Ljava/lang/String;

    .line 146
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa$ContasCategoriasConsumosFaixasTipos;->VALORTARIFA:Ljava/lang/String;

    const-string v3, " TIMESTAMP NOT NULL "

    .line 147
    iput-object v3, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa$ContasCategoriasConsumosFaixasTipos;->ULTIMAALTERACAO:Ljava/lang/String;

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v0, v4, p1

    const/4 p1, 0x2

    aput-object v1, v4, p1

    const/4 p1, 0x3

    aput-object v2, v4, p1

    const/4 p1, 0x4

    aput-object v1, v4, p1

    const/4 p1, 0x5

    aput-object v1, v4, p1

    const/4 p1, 0x6

    aput-object v2, v4, p1

    const/4 p1, 0x7

    aput-object v3, v4, p1

    .line 149
    iput-object v4, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa$ContasCategoriasConsumosFaixasTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa$ContasCategoriasConsumosFaixasTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
