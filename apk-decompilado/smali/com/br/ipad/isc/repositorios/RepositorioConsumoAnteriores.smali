.class public Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;
.super Lcom/br/ipad/isc/repositorios/RepositorioBasico;
.source "RepositorioConsumoAnteriores.java"

# interfaces
.implements Lcom/br/ipad/isc/repositorios/IRepositorioConsumoAnteriores;


# static fields
.field private static instancia:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;


# instance fields
.field private objeto:Lcom/br/ipad/isc/bean/ConsumoAnteriores;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;
    .locals 2

    .line 25
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;

    invoke-direct {v0}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;

    .line 27
    new-instance v1, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-direct {v1}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;-><init>()V

    iput-object v1, v0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    .line 29
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;

    return-object v0
.end method


# virtual methods
.method public buscarConsumoAnterioresPorImovelAnoMesPorTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoAnteriores;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    const-string v0, "="

    const/4 v1, 0x0

    .line 60
    :try_start_0
    sget-object v2, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getNomeTabela()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getColunas()[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMOV_ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "CSAT_AMREFERENCIA"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "LGTI_ID"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 65
    iget-object p2, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    .line 67
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/br/ipad/isc/bean/ConsumoAnteriores;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 77
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p2

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 71
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "ISC"

    .line 72
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object p2, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b001f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v1, :cond_3

    .line 77
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_3
    throw p2
.end method

.method public buscarConsumoAnterioresPorImovelAnormalidade(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoAnteriores;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    const-string v0, "="

    const-string v1, " AND "

    const/4 v2, 0x0

    .line 135
    :try_start_0
    sget-object v3, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getColunas()[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMOV_ID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "CSAT_IDANORMCONSUMO"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "CSAT_AMREFERENCIA"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 139
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 140
    iget-object p2, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    .line 142
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/br/ipad/isc/bean/ConsumoAnteriores;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 152
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

    .line 146
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "ISC"

    .line 147
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object p2, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b001f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v2, :cond_3

    .line 152
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_3
    throw p2
.end method

.method public buscarConsumoAnterioresPorImovelAnormalidade(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/br/ipad/isc/bean/ConsumoAnteriores;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 110
    :try_start_0
    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getNomeTabela()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getColunas()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMOV_ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "CSAT_IDANORMCONSUMO"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 113
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 114
    iget-object p2, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 123
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

    .line 117
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "ISC"

    .line 118
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object p2, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->context:Landroid/content/Context;

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

    .line 123
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_3
    throw p2
.end method

.method public buscarConsumoAnterioresPorImovelId(Ljava/lang/Integer;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/br/ipad/isc/bean/ConsumoAnteriores;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 36
    :try_start_0
    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getNomeTabela()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getColunas()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMOV_ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    iget-object v0, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 50
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

    .line 44
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "ISC"

    .line 45
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->context:Landroid/content/Context;

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

    .line 50
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_3
    throw v0
.end method

.method public buscarConsumoAnterioresPorImovelTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/br/ipad/isc/bean/ConsumoAnteriores;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    :try_start_0
    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getNomeTabela()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getColunas()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMOV_ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "LGTI_ID"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 91
    iget-object p2, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 100
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

    .line 94
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "ISC"

    .line 95
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object p2, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->context:Landroid/content/Context;

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

    .line 100
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_3
    throw p2
.end method

.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;

    return-void
.end method
