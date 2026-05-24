.class public Lcom/br/ipad/isc/bean/CategoriaSubcategoria;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "CategoriaSubcategoria.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/CategoriaSubcategoria$CategoriasSubcategoriasTipos;,
        Lcom/br/ipad/isc/bean/CategoriaSubcategoria$CategoriasSubcategorias;
    }
.end annotation


# static fields
.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private codigoCategoria:Ljava/lang/Integer;

.field private codigoSubcategoria:Ljava/lang/Integer;

.field private descricaoAbreviadaCategoria:Ljava/lang/String;

.field private descricaoAbreviadaSubcategoria:Ljava/lang/String;

.field private descricaoCategoria:Ljava/lang/String;

.field private descricaoSubcategoria:Ljava/lang/String;

.field private fatorEconomiaCategoria:Ljava/lang/Integer;

.field private id:Ljava/lang/Integer;

.field private matricula:Lcom/br/ipad/isc/bean/ImovelConta;

.field private qtdEconomiasSubcategoria:Ljava/lang/Integer;

.field private ultimaAlteracao:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CASC_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "IMOV_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CATG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CATG_DESCRICAO"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SCAT_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SCAT_DESCRICAO"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CASC_QTDECONOMIA"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CATG_DSABREVIADO"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SCAT_DSABREVIADA"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "CATG_NNFATORECONOMIAS"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CASC_TMULTIMAALTERACAO"

    aput-object v2, v0, v1

    .line 122
    sput-object v0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->id:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 46
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->insertFromFile(Ljava/util/ArrayList;)V

    return-void
.end method

.method private insertFromFile(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 148
    new-instance v0, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    const/4 v1, 0x1

    .line 149
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/ImovelConta;->setId(Ljava/lang/Integer;)V

    .line 150
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    const/4 v0, 0x2

    .line 152
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setCodigoCategoria(Ljava/lang/Integer;)V

    :cond_0
    const/4 v0, 0x3

    .line 155
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setDescricaoCategoria(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 156
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setCodigoSubcategoria(Ljava/lang/Integer;)V

    :cond_1
    const/4 v0, 0x5

    .line 159
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setDescricaoSubcategoria(Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 160
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setQtdEconomiasSubcategoria(Ljava/lang/Integer;)V

    :cond_2
    const/4 v0, 0x7

    .line 163
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setDescricaoAbreviadaCategoria(Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 164
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setDescricaoAbreviadaSubcategoria(Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 165
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setFatorEconomiaCategoria(Ljava/lang/Integer;)V

    .line 168
    :cond_3
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setUltimaAlteracao(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCodigoCategoria()Ljava/lang/Integer;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->codigoCategoria:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCodigoSubcategoria()Ljava/lang/Integer;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->codigoSubcategoria:Ljava/lang/Integer;

    return-object v0
.end method

.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 129
    sget-object v0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getDescricaoAbreviadaCategoria()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->descricaoAbreviadaCategoria:Ljava/lang/String;

    return-object v0
.end method

.method public getDescricaoAbreviadaSubcategoria()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->descricaoAbreviadaSubcategoria:Ljava/lang/String;

    return-object v0
.end method

.method public getDescricaoCategoria()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->descricaoCategoria:Ljava/lang/String;

    return-object v0
.end method

.method public getDescricaoSubcategoria()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->descricaoSubcategoria:Ljava/lang/String;

    return-object v0
.end method

.method public getFatorEconomiaCategoria()Ljava/lang/Integer;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->fatorEconomiaCategoria:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "categoria_subcategoria"

    return-object v0
.end method

.method public getQtdEconomiasSubcategoria()Ljava/lang/Integer;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->qtdEconomiasSubcategoria:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->ultimaAlteracao:Ljava/util/Date;

    return-object v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/CategoriaSubcategoria;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "CASC_ID"

    .line 221
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "IMOV_ID"

    .line 222
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "SCAT_ID"

    .line 223
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "CATG_ID"

    .line 224
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "SCAT_DSABREVIADA"

    .line 225
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "CATG_DSABREVIADO"

    .line 226
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "CATG_DESCRICAO"

    .line 227
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "SCAT_DESCRICAO"

    .line 228
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "CATG_NNFATORECONOMIAS"

    .line 229
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "CASC_QTDECONOMIA"

    .line 230
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v16, v14

    const-string v14, "CASC_TMULTIMAALTERACAO"

    .line 231
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move/from16 v17, v14

    .line 233
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v14

    .line 236
    :goto_0
    new-instance v14, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    invoke-direct {v14}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;-><init>()V

    .line 237
    invoke-static {v0, v2, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v19

    if-eqz v19, :cond_0

    move/from16 v19, v15

    .line 238
    new-instance v15, Lcom/br/ipad/isc/bean/ImovelConta;

    move-object/from16 v20, v12

    invoke-static {v0, v2, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v15, v12}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>(Ljava/lang/Integer;)V

    .line 239
    invoke-virtual {v14, v15}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V

    goto :goto_1

    :cond_0
    move-object/from16 v20, v12

    move/from16 v19, v15

    .line 242
    :goto_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setId(Ljava/lang/Integer;)V

    .line 243
    invoke-static {v0, v6, v7}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setCodigoCategoria(Ljava/lang/Integer;)V

    .line 244
    invoke-static {v0, v4, v5}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setCodigoSubcategoria(Ljava/lang/Integer;)V

    .line 245
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setDescricaoAbreviadaCategoria(Ljava/lang/String;)V

    .line 246
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setDescricaoAbreviadaSubcategoria(Ljava/lang/String;)V

    .line 247
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setDescricaoCategoria(Ljava/lang/String;)V

    .line 248
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setDescricaoSubcategoria(Ljava/lang/String;)V

    move-object/from16 v12, v20

    .line 249
    invoke-static {v0, v12, v13}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setFatorEconomiaCategoria(Ljava/lang/Integer;)V

    move/from16 v15, v19

    move-object/from16 v19, v2

    move-object/from16 v21, v16

    move/from16 v16, v1

    move-object/from16 v1, v21

    .line 250
    invoke-static {v0, v1, v15}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setQtdEconomiasSubcategoria(Ljava/lang/Integer;)V

    move/from16 v2, v17

    move-object/from16 v17, v1

    .line 251
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->setUltimaAlteracao(Ljava/lang/String;)V

    move-object/from16 v1, v18

    .line 253
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_1

    return-object v1

    :cond_1
    move-object/from16 v18, v1

    move/from16 v1, v16

    move-object/from16 v16, v17

    move/from16 v17, v2

    move-object/from16 v2, v19

    goto/16 :goto_0
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 202
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 204
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMOV_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CATG_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getDescricaoCategoria()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CATG_DESCRICAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CASC_QTDECONOMIA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getDescricaoCategoria()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCAT_DESCRICAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SCAT_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getDescricaoAbreviadaCategoria()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CATG_DSABREVIADO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getDescricaoAbreviadaSubcategoria()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCAT_DSABREVIADA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getFatorEconomiaCategoria()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CATG_NNFATORECONOMIAS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CASC_TMULTIMAALTERACAO"

    .line 214
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setCodigoCategoria(Ljava/lang/Integer;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->codigoCategoria:Ljava/lang/Integer;

    return-void
.end method

.method public setCodigoSubcategoria(Ljava/lang/Integer;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->codigoSubcategoria:Ljava/lang/Integer;

    return-void
.end method

.method public setDescricaoAbreviadaCategoria(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->descricaoAbreviadaCategoria:Ljava/lang/String;

    return-void
.end method

.method public setDescricaoAbreviadaSubcategoria(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->descricaoAbreviadaSubcategoria:Ljava/lang/String;

    return-void
.end method

.method public setDescricaoCategoria(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->descricaoCategoria:Ljava/lang/String;

    return-void
.end method

.method public setDescricaoSubcategoria(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->descricaoSubcategoria:Ljava/lang/String;

    return-void
.end method

.method public setFatorEconomiaCategoria(Ljava/lang/Integer;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->fatorEconomiaCategoria:Ljava/lang/Integer;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    return-void
.end method

.method public setQtdEconomiasSubcategoria(Ljava/lang/Integer;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->qtdEconomiasSubcategoria:Ljava/lang/Integer;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/String;)V
    .locals 0

    .line 119
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method
