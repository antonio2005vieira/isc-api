.class public Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;
.super Lcom/br/ipad/isc/repositorios/RepositorioBasico;
.source "RepositorioLigacaoAguaSituacaoConsumoTipo.java"

# interfaces
.implements Lcom/br/ipad/isc/repositorios/IRepositorioLigacaoAguaSituacaoConsumoTipo;


# static fields
.field private static instancia:Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;


# instance fields
.field private objeto:Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;
    .locals 2

    .line 24
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;

    invoke-direct {v0}, Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;

    .line 26
    new-instance v1, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;

    invoke-direct {v1}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;-><init>()V

    iput-object v1, v0, Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;->objeto:Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;

    .line 28
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;

    return-object v0
.end method


# virtual methods
.method public pesquisarLigacaoAguaSituacaoConsumoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v4, "LAST_ID = ? AND CSTP_ID = ?"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v10, 0x0

    aput-object p1, v5, v10

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, p1

    .line 38
    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object p1, p0, Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;->objeto:Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->getNomeTabela()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;->objeto:Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->getColunas()[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 41
    iget-object p2, p0, Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;->objeto:Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p2

    .line 42
    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->isVazioOrNulo(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 53
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

    .line 47
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "ISC"

    .line 48
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object p2, Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;->context:Landroid/content/Context;

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

    .line 53
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 55
    :cond_3
    throw p2
.end method

.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioLigacaoAguaSituacaoConsumoTipo;

    return-void
.end method
