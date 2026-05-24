.class public Lcom/br/ipad/isc/repositorios/RepositorioBasico;
.super Ljava/lang/Object;
.source "RepositorioBasico.java"

# interfaces
.implements Lcom/br/ipad/isc/repositorios/IRepositorioBasico;


# static fields
.field public static final CAMINHO_BANCO:Ljava/lang/String; = "data/data/com.br.ipad.isc/databases/"

.field public static final NOME_BANCO:Ljava/lang/String; = "isc_banco"

.field protected static context:Landroid/content/Context;

.field protected static db:Landroid/database/sqlite/SQLiteDatabase;

.field private static dbHelper:Lcom/br/ipad/isc/util/SQLiteHelper;

.field private static instancia:Lcom/br/ipad/isc/repositorios/RepositorioBasico;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->abrirBanco()V

    :cond_1
    return-void
.end method

.method private abrirBanco()V
    .locals 8

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->fecharBanco()V

    .line 62
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->registrarBanco()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 63
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    new-instance v0, Lcom/br/ipad/isc/repositorios/BDScript;

    invoke-direct {v0}, Lcom/br/ipad/isc/repositorios/BDScript;-><init>()V

    .line 67
    new-instance v7, Lcom/br/ipad/isc/util/SQLiteHelper;

    sget-object v2, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->context:Landroid/content/Context;

    const-string v3, "isc_banco"

    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->getVersaoCode(Landroid/content/Context;)I

    move-result v4

    .line 68
    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/BDScript;->obterScriptBanco()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/BDScript;->obterScriptExcluirBanco()[Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/br/ipad/isc/util/SQLiteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v7, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->dbHelper:Lcom/br/ipad/isc/util/SQLiteHelper;

    if-eqz v7, :cond_1

    .line 70
    monitor-enter v7
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :try_start_1
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->dbHelper:Lcom/br/ipad/isc/util/SQLiteHelper;

    invoke-virtual {v0}, Lcom/br/ipad/isc/util/SQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 72
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "ISC"

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 77
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    const-string v1, "ISC"

    .line 78
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;
    .locals 1

    .line 113
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    invoke-direct {v0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    .line 116
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    return-object v0
.end method

.method public static registrarBanco()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "data/data/com.br.ipad.isc/databases/isc_banco"

    .line 123
    invoke-static {v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 126
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    const-string v2, "ISC"

    const-string v3, "RepositorioBasico.existeBanco(): N\u00e3o"

    .line 127
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 86
    sput-object p0, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public apagarBanco()V
    .locals 6

    const-string v0, "apagarBanco(): Banco de dados n\u00e3o deletado."

    const-string v1, "ISC"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->fecharBanco()V

    .line 139
    sput-object v3, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    .line 141
    new-instance v4, Ljava/io/File;

    const-string v5, "data/data/com.br.ipad.isc/databases/isc_banco-journal"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 147
    :cond_0
    sget-object v4, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->context:Landroid/content/Context;

    const-string v5, "isc_banco"

    invoke-virtual {v4, v5}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "apagarBanco(): Banco de dados deletado."

    .line 148
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 154
    :catch_0
    :try_start_1
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :goto_0
    sput-object v3, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 157
    sput-object v3, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->dbHelper:Lcom/br/ipad/isc/util/SQLiteHelper;

    .line 158
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/br/ipad/isc/repositorios/CarregaBD;->CONTADOR_IMOVEL:Ljava/lang/Integer;

    return-void

    .line 156
    :goto_1
    sput-object v3, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 157
    sput-object v3, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->dbHelper:Lcom/br/ipad/isc/util/SQLiteHelper;

    .line 158
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/br/ipad/isc/repositorios/CarregaBD;->CONTADOR_IMOVEL:Ljava/lang/Integer;

    .line 159
    throw v0
.end method

.method public atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    .line 234
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ObjetoBasico;->preencherValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 236
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ObjetoBasico;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ObjetoBasico;->getNameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 242
    :try_start_0
    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ObjetoBasico;->getNomeTabela()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 244
    invoke-virtual {p1}, Landroid/database/SQLException;->printStackTrace()V

    .line 245
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fecharBanco()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 92
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .line 95
    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    :goto_0
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->dbHelper:Lcom/br/ipad/isc/util/SQLiteHelper;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Lcom/br/ipad/isc/util/SQLiteHelper;->close()V

    :cond_1
    return-void
.end method

.method public inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    const v0, 0x7f0b0021

    .line 282
    :try_start_0
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ObjetoBasico;->preencherValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 284
    sget-object v2, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ObjetoBasico;->getNomeTabela()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    return-wide v1

    .line 289
    :cond_0
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 294
    invoke-virtual {p1}, Landroid/database/SQLException;->printStackTrace()V

    .line 295
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ISC"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pesquisar(Lcom/br/ipad/isc/bean/ObjetoBasico;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/br/ipad/isc/bean/ObjetoBasico;",
            ">(TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 348
    :try_start_0
    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ObjetoBasico;->getNomeTabela()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ObjetoBasico;->getColunas()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 351
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    invoke-virtual {p1, v1}, Lcom/br/ipad/isc/bean/ObjetoBasico;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 361
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 355
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "ISC"

    .line 356
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v0, :cond_3

    .line 361
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_3
    throw p1
.end method

.method public pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/br/ipad/isc/bean/ObjetoBasico;",
            ">(",
            "Ljava/lang/Integer;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 313
    :try_start_0
    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ObjetoBasico;->getNomeTabela()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ObjetoBasico;->getColunas()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ObjetoBasico;->getNameId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 313
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 317
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/bean/ObjetoBasico;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 320
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/br/ipad/isc/bean/ObjetoBasico;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 331
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

    .line 325
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "ISC"

    .line 326
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object p2, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->context:Landroid/content/Context;

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

    .line 331
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 333
    :cond_3
    throw p2
.end method

.method public remover(Lcom/br/ipad/isc/bean/ObjetoBasico;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    .line 258
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ObjetoBasico;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ObjetoBasico;->getNameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 264
    :try_start_0
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ObjetoBasico;->getNomeTabela()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 266
    invoke-virtual {p1}, Landroid/database/SQLException;->printStackTrace()V

    .line 267
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resetarInstancias()V
    .locals 1

    .line 165
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioCategoriaSubcategoria;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioCategoriaSubcategoria;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioCategoriaSubcategoria;->resetarInstancia()V

    .line 166
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidade;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidade;->resetarInstancia()V

    .line 167
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidadeAcao;->resetarInstancia()V

    .line 168
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->resetarInstancia()V

    .line 169
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoHistorico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioConsumoHistorico;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoHistorico;->resetarInstancia()V

    .line 170
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaCategoria;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaCategoria;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaCategoria;->resetarInstancia()V

    .line 171
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaFaixa;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaFaixa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoTarifaFaixa;->resetarInstancia()V

    .line 172
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoTipo;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioConsumoTipo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoTipo;->resetarInstancia()V

    .line 173
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioContaCategoria;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioContaCategoria;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioContaCategoria;->resetarInstancia()V

    .line 174
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioContaCategoriaConsumoFaixa;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioContaCategoriaConsumoFaixa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioContaCategoriaConsumoFaixa;->resetarInstancia()V

    .line 175
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioContaDebito;->resetarInstancia()V

    .line 176
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioContaImposto;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioContaImposto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioContaImposto;->resetarInstancia()V

    .line 177
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioCreditoRealizado;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioCreditoRealizado;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioCreditoRealizado;->resetarInstancia()V

    .line 178
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioDebitoCobrado;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioDebitoCobrado;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioDebitoCobrado;->resetarInstancia()V

    .line 179
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioFaturamentoSituacaoTipo;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioFaturamentoSituacaoTipo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioFaturamentoSituacaoTipo;->resetarInstancia()V

    .line 180
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioFoto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->resetarInstancia()V

    .line 181
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioHidrometroInstalado;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioHidrometroInstalado;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioHidrometroInstalado;->resetarInstancia()V

    .line 182
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioImovelConta;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioImovelConta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioImovelConta;->resetarInstancia()V

    .line 183
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioLeituraAnormalidade;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioLeituraAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioLeituraAnormalidade;->resetarInstancia()V

    .line 184
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioQualidadeAgua;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioQualidadeAgua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioQualidadeAgua;->resetarInstancia()V

    .line 185
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioSequencialRotaMarcacao;->resetarInstancia()V

    .line 186
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->resetarInstancia()V

    .line 188
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorBasico;->resetarInstancia()V

    .line 189
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->getInstance()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->resetarInstancia()V

    .line 190
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;->getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;->resetarInstancia()V

    .line 191
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->resetarInstancia()V

    .line 192
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->resetarInstancia()V

    .line 193
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->resetarInstancia()V

    .line 194
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;->resetarInstancia()V

    .line 195
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;->getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;->resetarInstancia()V

    .line 196
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConsumoTipo;->getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoTipo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorConsumoTipo;->resetarInstancia()V

    .line 197
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->getInstance()Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->resetarInstancia()V

    .line 198
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;->getInstance()Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;->resetarInstancia()V

    .line 199
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorContaDebito;->getInstance()Lcom/br/ipad/isc/controladores/ControladorContaDebito;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorContaDebito;->resetarInstancia()V

    .line 200
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorContaImposto;->getInstance()Lcom/br/ipad/isc/controladores/ControladorContaImposto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorContaImposto;->resetarInstancia()V

    .line 201
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->getInstance()Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->resetarInstancia()V

    .line 202
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;->getInstance()Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;->resetarInstancia()V

    .line 203
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorFoto;->getInstance()Lcom/br/ipad/isc/controladores/ControladorFoto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorFoto;->resetarInstancia()V

    .line 204
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getInstance()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->resetarInstancia()V

    .line 205
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->getInstance()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->resetarInstancia()V

    .line 206
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;->getInstance()Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;->resetarInstancia()V

    .line 207
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorQualidadeAgua;->getInstance()Lcom/br/ipad/isc/controladores/ControladorQualidadeAgua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorQualidadeAgua;->resetarInstancia()V

    .line 208
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->getInstance()Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->resetarInstancia()V

    .line 209
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;->getInstance()Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;->resetarInstancia()V

    return-void
.end method

.method public verificarExistenciaBancoDeDados()Z
    .locals 2

    .line 218
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->registrarBanco()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->resetarInstancia()V

    .line 220
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorBancoCarregado()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
