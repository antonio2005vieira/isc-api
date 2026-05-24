.class public Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;
.super Lcom/br/ipad/isc/repositorios/RepositorioBasico;
.source "RepositorioSequencialRotaMarcacao.java"

# interfaces
.implements Lcom/br/ipad/isc/repositorios/IRepositorioSequencialRotaMarcacao;


# static fields
.field private static instancia:Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;


# instance fields
.field private objeto:Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;
    .locals 2

    .line 26
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;

    invoke-direct {v0}, Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;

    .line 28
    new-instance v1, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;

    invoke-direct {v1}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;-><init>()V

    iput-object v1, v0, Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;->objeto:Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;

    .line 30
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;

    return-object v0
.end method


# virtual methods
.method public buscarSequencialRotaMarcacao(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 36
    :try_start_0
    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;->objeto:Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->getNomeTabela()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;->objeto:Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->getColunas()[Ljava/lang/String;

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

    .line 38
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;->objeto:Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;

    invoke-virtual {v1, p1}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 41
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 51
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

    .line 45
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "ISC"

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;->context:Landroid/content/Context;

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

    .line 51
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 53
    :cond_3
    throw v0
.end method

.method public removerTodosSequencialRotaMarcacao()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    .line 59
    :try_start_0
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;->objeto:Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->getNomeTabela()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .line 62
    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v0, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;

    return-void
.end method
