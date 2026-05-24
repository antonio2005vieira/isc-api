.class public Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;
.super Lcom/br/ipad/isc/repositorios/RepositorioBasico;
.source "RepositorioConsumoAnormalidadeAcao.java"

# interfaces
.implements Lcom/br/ipad/isc/repositorios/IRepositorioConsumoAnormalidadeAcao;


# static fields
.field private static instancia:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;


# instance fields
.field private objeto:Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;
    .locals 2

    .line 25
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;

    invoke-direct {v0}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;

    .line 27
    new-instance v1, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    invoke-direct {v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;-><init>()V

    iput-object v1, v0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    .line 29
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;

    return-object v0
.end method


# virtual methods
.method public buscarConsumoAnormalidadeAcao(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 108
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSAN_ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND IPER_ID IS NULL AND CATG_ID IS NULL "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 112
    sget-object v2, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object p1, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getNomeTabela()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getColunas()[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    new-instance v0, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;-><init>()V

    .line 117
    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 126
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

    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    .line 120
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "ISC"

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->context:Landroid/content/Context;

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

    .line 126
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_3
    throw v0
.end method

.method public buscarConsumoAnormalidadeAcao(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSAN_ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND IPER_ID IS NULL "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND CATG_ID="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v4, p1

    .line 82
    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object p1, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getNomeTabela()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getColunas()[Ljava/lang/String;

    move-result-object v3

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

    .line 85
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 86
    new-instance p2, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    invoke-direct {p2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;-><init>()V

    .line 87
    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 96
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p2

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 90
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p2, "ISC"

    .line 91
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object p2, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->context:Landroid/content/Context;

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
    if-eqz v0, :cond_4

    .line 96
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_4
    throw p1
.end method

.method public buscarConsumoAnormalidadeAcao(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSAN_ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND IPER_ID="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-eqz p3, :cond_1

    .line 44
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND CATG_ID="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object v4, p2

    .line 48
    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object p1, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getNomeTabela()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->objeto:Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->getColunas()[Ljava/lang/String;

    move-result-object v3

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

    .line 51
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 52
    new-instance p2, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    invoke-direct {p2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;-><init>()V

    .line 53
    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 62
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p2

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 56
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p2, "ISC"

    .line 57
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object p2, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->context:Landroid/content/Context;

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
    if-eqz v0, :cond_5

    .line 62
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_5
    throw p1
.end method

.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;

    return-void
.end method
