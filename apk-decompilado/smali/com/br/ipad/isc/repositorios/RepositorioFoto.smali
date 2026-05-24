.class public Lcom/br/ipad/isc/repositorios/RepositorioFoto;
.super Lcom/br/ipad/isc/repositorios/RepositorioBasico;
.source "RepositorioFoto.java"

# interfaces
.implements Lcom/br/ipad/isc/repositorios/IRepositorioFoto;


# static fields
.field private static instancia:Lcom/br/ipad/isc/repositorios/RepositorioFoto;


# instance fields
.field private objeto:Lcom/br/ipad/isc/bean/Foto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/repositorios/RepositorioFoto;
    .locals 2

    .line 28
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioFoto;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;

    invoke-direct {v0}, Lcom/br/ipad/isc/repositorios/RepositorioFoto;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioFoto;

    .line 30
    new-instance v1, Lcom/br/ipad/isc/bean/Foto;

    invoke-direct {v1}, Lcom/br/ipad/isc/bean/Foto;-><init>()V

    iput-object v1, v0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    .line 32
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioFoto;

    return-object v0
.end method


# virtual methods
.method public buscarFotoAnormalidadeConsumo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    move-object v1, p0

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMOV_ID=? AND FOTO_TIPO=? AND FOTO_MEDICAOTIPO=? AND (LTAN_ID IS NULL OR LTAN_ID = 0 )AND (CSAN_ID IS NOT NULL AND CSAN_ID<> 0 )AND CSAN_ID = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/String;

    .line 305
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    aput-object v0, v6, v11

    .line 306
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v6, v2

    .line 307
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v6, v2

    const/4 v12, 0x0

    .line 310
    :try_start_0
    sget-object v2, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, v1, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getNomeTabela()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v1, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getColunas()[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "FOTO_ID DESC"

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 313
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, v1, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/bean/Foto;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 316
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/Foto;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 326
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v12

    :catchall_0
    move-exception v0

    move-object v12, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v12, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 320
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "ISC"

    .line 321
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v0, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v2, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v12, :cond_3

    .line 326
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 328
    :cond_3
    throw v0
.end method

.method public buscarFotoAnormalidadeLeitura(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    move-object v1, p0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMOV_ID=? AND FOTO_TIPO=? AND FOTO_MEDICAOTIPO=? AND (LTAN_ID IS NOT NULL AND LTAN_ID <> 0 )AND (CSAN_ID IS NULL OR CSAN_ID= 0 )AND LTAN_ID = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/String;

    .line 235
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    aput-object v0, v6, v11

    .line 236
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v6, v2

    .line 237
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v6, v2

    const/4 v12, 0x0

    .line 240
    :try_start_0
    sget-object v2, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, v1, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getNomeTabela()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v1, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getColunas()[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "FOTO_ID DESC"

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 243
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, v1, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/bean/Foto;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 246
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/Foto;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 256
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v12

    :catchall_0
    move-exception v0

    move-object v12, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v12, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 250
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "ISC"

    .line 251
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v0, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v2, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v12, :cond_3

    .line 256
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_3
    throw v0
.end method

.method public buscarFotoTipo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "IMOV_ID=? AND FOTO_TIPO=? AND FOTO_MEDICAOTIPO=?"

    if-eqz p4, :cond_0

    .line 44
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " AND LTAN_ID=? "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/String;

    .line 48
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 49
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 50
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    .line 51
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    goto :goto_0

    :cond_0
    move-object v8, v6

    :goto_0
    if-eqz p5, :cond_1

    .line 57
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " AND CSAN_ID=? "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/String;

    .line 61
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v5

    .line 62
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    .line 63
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 64
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v0

    :cond_1
    move-object v12, v7

    move-object v13, v8

    .line 69
    :try_start_0
    sget-object v9, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, v1, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getNomeTabela()Ljava/lang/String;

    move-result-object v10

    iget-object v0, v1, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getColunas()[Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "FOTO_ID DESC"

    const/16 v17, 0x0

    invoke-virtual/range {v9 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, v1, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/bean/Foto;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 75
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/Foto;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 85
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v6

    :catchall_0
    move-exception v0

    move-object v6, v2

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v6, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 79
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "ISC"

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v2, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v6, :cond_5

    .line 85
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_5
    throw v0
.end method

.method public buscarFotos(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/Foto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v4, "IMOV_ID=? AND FOTO_MEDICAOTIPO=?"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 97
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 p1, 0x1

    .line 99
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, p1

    .line 101
    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object p1, p0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/Foto;->getNomeTabela()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/Foto;->getColunas()[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 105
    iget-object p2, p0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/Foto;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 114
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p2

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v0, p1

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 108
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "ISC"

    .line 109
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object p2, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0b001f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v0, :cond_3

    .line 114
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_3
    throw p2
.end method

.method public buscarFotos(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/Foto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 155
    :try_start_0
    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/Foto;->getNomeTabela()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/Foto;->getColunas()[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 158
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 159
    iget-object p2, p0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/Foto;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 168
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p2

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v0, p1

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 162
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "ISC"

    .line 163
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object p2, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0b001f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v0, :cond_3

    .line 168
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_3
    throw p2
.end method

.method public buscarFotosAnormalidadeLeitura(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/Foto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMOV_ID=? AND FOTO_MEDICAOTIPO=? AND (LTAN_ID IS NOT NULL AND LTAN_ID <> 0 )AND (CSAN_ID IS NULL OR CSAN_ID= 0 )AND (LTAN_ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " )"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 p3, 0x2

    new-array v5, p3, [Ljava/lang/String;

    .line 271
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    aput-object p1, v5, p3

    .line 272
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v5, p2

    const/4 p1, 0x0

    .line 275
    :try_start_0
    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object p2, p0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/Foto;->getNomeTabela()Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/Foto;->getColunas()[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "FOTO_ID DESC"

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 279
    iget-object p1, p0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/bean/Foto;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_0

    .line 289
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    .line 283
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p3, "ISC"

    .line 284
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object p3, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0b001f

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz p2, :cond_3

    .line 289
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_3
    throw p1
.end method

.method public buscarFotosPendentes()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/Foto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v4, "FOTO_ICTRANSMITIDO=? "

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 178
    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 180
    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/Foto;->getNomeTabela()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/Foto;->getColunas()[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    iget-object v0, p0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/Foto;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 192
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 186
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "ISC"

    .line 187
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v2, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_3

    .line 192
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 194
    :cond_3
    throw v0
.end method

.method public buscarFotosPendentes(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/Foto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v4, "IMOV_ID=? AND FOTO_ICTRANSMITIDO=?"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 204
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 p1, 0x1

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    .line 206
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, p1

    .line 208
    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object p1, p0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/Foto;->getNomeTabela()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/Foto;->getColunas()[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    iget-object v0, p0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/Foto;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 220
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    .line 214
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "ISC"

    .line 215
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v0, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz p1, :cond_3

    .line 220
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_3
    throw v0
.end method

.method public imovelPossuiFotoAnormalidadeConsumo(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    const-string v0, " AND foto."

    const-string v1, "CSAN_ID"

    const/4 v2, 0x0

    .line 124
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(*) as count FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->objeto:Lcom/br/ipad/isc/bean/Foto;

    .line 125
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/Foto;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " foto  WHERE   foto."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "FOTO_MEDICAOTIPO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "IMOV_ID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " IS NOT NULL  AND foto."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " <> 0 AND foto."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 133
    sget-object p2, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "count"

    .line 136
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 137
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 146
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p2

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v2

    :catchall_0
    move-exception p2

    move-object v2, p1

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v2, p1

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 140
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "ISC"

    .line 141
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object p2, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v2, :cond_3

    .line 146
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_3
    throw p2
.end method

.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioFoto;

    return-void
.end method
