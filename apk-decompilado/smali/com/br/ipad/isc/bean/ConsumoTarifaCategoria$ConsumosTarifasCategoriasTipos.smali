.class public final Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria$ConsumosTarifasCategoriasTipos;
.super Ljava/lang/Object;
.source "ConsumoTarifaCategoria.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConsumosTarifasCategoriasTipos"
.end annotation


# instance fields
.field public final CONSUMOMINIMOSUBCATEGORIA:Ljava/lang/String;

.field public final CONSUMOTARIFA:Ljava/lang/String;

.field public final DATAVIGENCIA:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final IDCATEGORIA:Ljava/lang/String;

.field public final IDSUBCATEGORIA:Ljava/lang/String;

.field public final ULTIMAALTERACAO:Ljava/lang/String;

.field public final VALORTARIFAMINIMACATEGORIA:Ljava/lang/String;

.field public final VALORTARIFAMINIMACATEGORIAESGOTO:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;)V
    .locals 7

    .line 161
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria$ConsumosTarifasCategoriasTipos;->this$0:Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT "

    .line 162
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria$ConsumosTarifasCategoriasTipos;->ID:Ljava/lang/String;

    const-string v0, " INTEGER NOT NULL "

    .line 163
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria$ConsumosTarifasCategoriasTipos;->CONSUMOTARIFA:Ljava/lang/String;

    const-string v1, " DATE NOT NULL "

    .line 164
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria$ConsumosTarifasCategoriasTipos;->DATAVIGENCIA:Ljava/lang/String;

    .line 165
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria$ConsumosTarifasCategoriasTipos;->IDCATEGORIA:Ljava/lang/String;

    const-string v2, " INTEGER NULL "

    .line 166
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria$ConsumosTarifasCategoriasTipos;->IDSUBCATEGORIA:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria$ConsumosTarifasCategoriasTipos;->CONSUMOMINIMOSUBCATEGORIA:Ljava/lang/String;

    const-string v3, " NUMERIC(13,2) NOT NULL "

    .line 168
    iput-object v3, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria$ConsumosTarifasCategoriasTipos;->VALORTARIFAMINIMACATEGORIA:Ljava/lang/String;

    .line 169
    iput-object v3, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria$ConsumosTarifasCategoriasTipos;->VALORTARIFAMINIMACATEGORIAESGOTO:Ljava/lang/String;

    const-string v4, " TIMESTAMP NOT NULL "

    .line 170
    iput-object v4, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria$ConsumosTarifasCategoriasTipos;->ULTIMAALTERACAO:Ljava/lang/String;

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 p1, 0x1

    aput-object v0, v5, p1

    const/4 p1, 0x2

    aput-object v1, v5, p1

    const/4 p1, 0x3

    aput-object v0, v5, p1

    const/4 p1, 0x4

    aput-object v2, v5, p1

    const/4 p1, 0x5

    aput-object v0, v5, p1

    const/4 p1, 0x6

    aput-object v3, v5, p1

    const/4 p1, 0x7

    aput-object v3, v5, p1

    const/16 p1, 0x8

    aput-object v4, v5, p1

    .line 172
    iput-object v5, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria$ConsumosTarifasCategoriasTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria$ConsumosTarifasCategoriasTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
