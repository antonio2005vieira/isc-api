.class public final Lcom/br/ipad/isc/bean/ContaCategoria$ContasCategoriasTipos;
.super Ljava/lang/Object;
.source "ContaCategoria.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ContaCategoria;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ContasCategoriasTipos"
.end annotation


# instance fields
.field public final CATEGORIASUBCATEGORIA:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final NUMCONSUMO:Ljava/lang/String;

.field public final NUMCONSUMOMINIMO:Ljava/lang/String;

.field public final TIPOLIGACAO:Ljava/lang/String;

.field public final ULTIMAALTERACAO:Ljava/lang/String;

.field public final VALORFATURADO:Ljava/lang/String;

.field public final VALORTARIFAMINIMA:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/ContaCategoria;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/ContaCategoria;)V
    .locals 6

    .line 128
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoria$ContasCategoriasTipos;->this$0:Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT "

    .line 129
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaCategoria$ContasCategoriasTipos;->ID:Ljava/lang/String;

    const-string v0, " CONSTRAINT [FK1_CONTA_CATEGORIA] REFERENCES [categoria_subcategoria]([CASC_ID]) ON DELETE RESTRICT ON UPDATE RESTRICT "

    .line 130
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoria$ContasCategoriasTipos;->CATEGORIASUBCATEGORIA:Ljava/lang/String;

    const-string v1, " INTEGER NOT NULL "

    .line 131
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ContaCategoria$ContasCategoriasTipos;->TIPOLIGACAO:Ljava/lang/String;

    const-string v2, " NUMERIC(13,2) NOT NULL "

    .line 132
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ContaCategoria$ContasCategoriasTipos;->VALORFATURADO:Ljava/lang/String;

    .line 133
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ContaCategoria$ContasCategoriasTipos;->NUMCONSUMO:Ljava/lang/String;

    .line 134
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ContaCategoria$ContasCategoriasTipos;->VALORTARIFAMINIMA:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ContaCategoria$ContasCategoriasTipos;->NUMCONSUMOMINIMO:Ljava/lang/String;

    const-string v3, " TIMESTAMP NOT NULL "

    .line 136
    iput-object v3, p0, Lcom/br/ipad/isc/bean/ContaCategoria$ContasCategoriasTipos;->ULTIMAALTERACAO:Ljava/lang/String;

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

    aput-object v2, v4, p1

    const/4 p1, 0x6

    aput-object v1, v4, p1

    const/4 p1, 0x7

    aput-object v3, v4, p1

    .line 138
    iput-object v4, p0, Lcom/br/ipad/isc/bean/ContaCategoria$ContasCategoriasTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaCategoria$ContasCategoriasTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
