.class public Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;
.super Lcom/br/ipad/isc/repositorios/RepositorioBasico;
.source "RepositorioSistemaParametros.java"

# interfaces
.implements Lcom/br/ipad/isc/repositorios/IRepositorioSistemaParametros;


# static fields
.field private static instancia:Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;


# instance fields
.field private objeto:Lcom/br/ipad/isc/bean/SistemaParametros;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;
    .locals 2

    .line 28
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;

    invoke-direct {v0}, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;

    .line 30
    new-instance v1, Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-direct {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;-><init>()V

    iput-object v1, v0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->objeto:Lcom/br/ipad/isc/bean/SistemaParametros;

    .line 32
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;

    return-object v0
.end method


# virtual methods
.method public atualizarArquivoCarregadoBD()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    .line 148
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 149
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    const-string v2, "PARM_ICBANCOCARREGADO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_ID=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 157
    :try_start_0
    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->objeto:Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/SistemaParametros;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->resetarInstancia()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .line 161
    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public atualizarIdImovelSelecionadoSistemaParametros(Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    .line 81
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "PARM_IDIMOVSELECIONADO"

    .line 82
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PARM_ID=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 90
    :try_start_0
    sget-object p1, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->objeto:Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/SistemaParametros;->getNomeTabela()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->resetarInstancia()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->resetarInstancia()V

    return-void

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Landroid/database/SQLException;->printStackTrace()V

    .line 94
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public atualizarIdQtdImovelCondominioSistemaParametros(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    .line 102
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "PARM_IDIMOVELCONDOMINIO"

    .line 103
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "PARM_QTIMOVELCONDOMINIO"

    .line 104
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PARM_ID=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 112
    :try_start_0
    sget-object p1, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->objeto:Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getNomeTabela()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->resetarInstancia()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->resetarInstancia()V

    return-void

    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Landroid/database/SQLException;->printStackTrace()V

    .line 116
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object p2, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public atualizarIndicadorRotaMarcacaoAtiva(Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    .line 170
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "PARM_ICROTAMARCACAOATIVA"

    .line 171
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PARM_ID=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 179
    :try_start_0
    sget-object p1, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->objeto:Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/SistemaParametros;->getNomeTabela()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->resetarInstancia()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 182
    invoke-virtual {p1}, Landroid/database/SQLException;->printStackTrace()V

    .line 183
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public atualizarQntImoveis()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    .line 124
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioImovelConta;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioImovelConta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioImovelConta;->getQtdImoveis()Ljava/lang/Integer;

    move-result-object v0

    .line 125
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "PARM_QTIMOVEIS"

    .line 126
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PARM_ID=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 134
    :try_start_0
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->objeto:Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/SistemaParametros;->getNomeTabela()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 137
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->resetarInstancia()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .line 140
    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public atualizarRoteiroOnlineOffline(Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    .line 191
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "ROTA_ICTRANSMISSAOOFFLINE"

    .line 193
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PARM_ID=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 200
    :try_start_0
    sget-object p1, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->objeto:Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/SistemaParametros;->getNomeTabela()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 201
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->resetarInstancia()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Landroid/database/SQLException;->printStackTrace()V

    .line 204
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public atualizarSistemaParametros(Lcom/br/ipad/isc/bean/SistemaParametros;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->preencherValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PARM_ID=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 69
    :try_start_0
    sget-object p1, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->objeto:Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/SistemaParametros;->getNomeTabela()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 70
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->resetarInstancia()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->resetarInstancia()V

    return-void

    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Landroid/database/SQLException;->printStackTrace()V

    .line 73
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance p1, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buscarSistemaParametro()Lcom/br/ipad/isc/bean/SistemaParametros;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    :try_start_0
    sget-object v1, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->objeto:Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getNomeTabela()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->objeto:Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/SistemaParametros;->getColunas()[Ljava/lang/String;

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
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    iget-object v2, p0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->objeto:Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-virtual {v2, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 43
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/SistemaParametros;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 54
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

    .line 47
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "ISC"

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->escreverLog(Ljava/lang/StringBuilder;)V

    .line 50
    new-instance v0, Lcom/br/ipad/isc/excecoes/RepositorioException;

    sget-object v2, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->context:Landroid/content/Context;

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

    .line 54
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_3
    throw v0
.end method

.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioSistemaParametros;

    return-void
.end method
