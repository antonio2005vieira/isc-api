.class public final Lcom/br/ipad/isc/bean/CategoriaSubcategoria$CategoriasSubcategoriasTipos;
.super Ljava/lang/Object;
.source "CategoriaSubcategoria.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/CategoriaSubcategoria;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CategoriasSubcategoriasTipos"
.end annotation


# instance fields
.field public final DESCRICAOABREVIADACATEGORIA:Ljava/lang/String;

.field public final DESCRICAOABREVIADASUBCATEGORIA:Ljava/lang/String;

.field public final DESCRICAOCATEGORIA:Ljava/lang/String;

.field public final DESCRICAOSUBCATEGORIA:Ljava/lang/String;

.field public final FATORECONOMIAS:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final IDCATEGORIA:Ljava/lang/String;

.field public final IDSUBCATEGORIA:Ljava/lang/String;

.field public final MATRICULA:Ljava/lang/String;

.field public final QUANTIDADEECONOMIA:Ljava/lang/String;

.field public final ULTIMAALTERACAO:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/CategoriaSubcategoria;)V
    .locals 10

    .line 174
    iput-object p1, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria$CategoriasSubcategoriasTipos;->this$0:Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT "

    .line 175
    iput-object p1, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria$CategoriasSubcategoriasTipos;->ID:Ljava/lang/String;

    const-string v0, "  INTEGER CONSTRAINT [FK1_CATEGORIA_SUBCATEGORIA] REFERENCES [imovel_conta]([IMOV_ID]) ON DELETE RESTRICT ON UPDATE RESTRICT"

    .line 176
    iput-object v0, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria$CategoriasSubcategoriasTipos;->MATRICULA:Ljava/lang/String;

    const-string v1, " INTEGER NOT NULL "

    .line 177
    iput-object v1, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria$CategoriasSubcategoriasTipos;->IDCATEGORIA:Ljava/lang/String;

    const-string v2, " VARCHAR(15) NOT NULL"

    .line 178
    iput-object v2, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria$CategoriasSubcategoriasTipos;->DESCRICAOCATEGORIA:Ljava/lang/String;

    .line 179
    iput-object v1, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria$CategoriasSubcategoriasTipos;->IDSUBCATEGORIA:Ljava/lang/String;

    const-string v3, " VARCHAR(50) NOT NULL"

    .line 180
    iput-object v3, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria$CategoriasSubcategoriasTipos;->DESCRICAOSUBCATEGORIA:Ljava/lang/String;

    .line 181
    iput-object v1, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria$CategoriasSubcategoriasTipos;->QUANTIDADEECONOMIA:Ljava/lang/String;

    const-string v4, " VARCHAR(3) NULL"

    .line 182
    iput-object v4, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria$CategoriasSubcategoriasTipos;->DESCRICAOABREVIADACATEGORIA:Ljava/lang/String;

    const-string v5, " VARCHAR(20) NULL "

    .line 183
    iput-object v5, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria$CategoriasSubcategoriasTipos;->DESCRICAOABREVIADASUBCATEGORIA:Ljava/lang/String;

    const-string v6, " INTEGER  NULL "

    .line 184
    iput-object v6, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria$CategoriasSubcategoriasTipos;->FATORECONOMIAS:Ljava/lang/String;

    const-string v7, " TIMESTAMP NOT NULL "

    .line 185
    iput-object v7, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria$CategoriasSubcategoriasTipos;->ULTIMAALTERACAO:Ljava/lang/String;

    const/16 v8, 0xb

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

    aput-object v1, v8, p1

    const/4 p1, 0x5

    aput-object v3, v8, p1

    const/4 p1, 0x6

    aput-object v1, v8, p1

    const/4 p1, 0x7

    aput-object v4, v8, p1

    const/16 p1, 0x8

    aput-object v5, v8, p1

    const/16 p1, 0x9

    aput-object v6, v8, p1

    const/16 p1, 0xa

    aput-object v7, v8, p1

    .line 187
    iput-object v8, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria$CategoriasSubcategoriasTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria$CategoriasSubcategoriasTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
