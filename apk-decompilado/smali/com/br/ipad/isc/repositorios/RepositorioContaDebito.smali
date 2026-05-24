.class public Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;
.super Lcom/br/ipad/isc/repositorios/RepositorioBasico;
.source "RepositorioContaDebito.java"

# interfaces
.implements Lcom/br/ipad/isc/repositorios/IRepositorioContaDebito;


# static fields
.field private static instancia:Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;


# instance fields
.field private objeto:Lcom/br/ipad/isc/bean/ContaDebito;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;
    .locals 2

    .line 25
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;

    invoke-direct {v0}, Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;

    .line 27
    new-instance v1, Lcom/br/ipad/isc/bean/ContaDebito;

    invoke-direct {v1}, Lcom/br/ipad/isc/bean/ContaDebito;-><init>()V

    iput-object v1, v0, Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;->objeto:Lcom/br/ipad/isc/bean/ContaDebito;

    .line 29
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;

    return-object v0
.end method


# virtual methods
.method public buscarContasDebitosPorIdImovel(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ContaDebito;",
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
    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;->objeto:Lcom/br/ipad/isc/bean/ContaDebito;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ContaDebito;->getNomeTabela()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;->objeto:Lcom/br/ipad/isc/bean/ContaDebito;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaDebito;->getColunas()[Ljava/lang/String;

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
    iget-object v0, p0, Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;->objeto:Lcom/br/ipad/isc/bean/ContaDebito;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/ContaDebito;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 49
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

    .line 43
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "ISC"

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;->context:Landroid/content/Context;

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

    .line 49
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 51
    :cond_3
    throw v0
.end method

.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;

    return-void
.end method
