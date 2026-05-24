.class Lcom/br/ipad/isc/util/RepositorioTeste;
.super Lcom/br/ipad/isc/repositorios/RepositorioBasico;
.source "TesteGeral.java"


# instance fields
.field public final NOME_TABELA:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;-><init>()V

    const-string v0, "teste_geral"

    .line 186
    iput-object v0, p0, Lcom/br/ipad/isc/util/RepositorioTeste;->NOME_TABELA:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public inserir(Lcom/br/ipad/isc/util/Teste;)V
    .locals 3

    .line 189
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 190
    invoke-virtual {p1}, Lcom/br/ipad/isc/util/Teste;->getImovelId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMOV_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    invoke-virtual {p1}, Lcom/br/ipad/isc/util/Teste;->getLeituraAgua()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LEITURA_AGUA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    invoke-virtual {p1}, Lcom/br/ipad/isc/util/Teste;->getLeituraPoco()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LEITURA_POCO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    invoke-virtual {p1}, Lcom/br/ipad/isc/util/Teste;->getAgua()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "AGUA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 194
    invoke-virtual {p1}, Lcom/br/ipad/isc/util/Teste;->getEsgoto()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "ESGOTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 195
    invoke-virtual {p1}, Lcom/br/ipad/isc/util/Teste;->getDebito()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "DEBITO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 196
    invoke-virtual {p1}, Lcom/br/ipad/isc/util/Teste;->getCredito()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "CREDITO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 197
    invoke-virtual {p1}, Lcom/br/ipad/isc/util/Teste;->getImposto()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "IMPOSTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 198
    invoke-virtual {p1}, Lcom/br/ipad/isc/util/Teste;->getTotal()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "TOTAL"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 201
    :try_start_0
    sget-object p1, Lcom/br/ipad/isc/util/RepositorioTeste;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "teste_geral"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Landroid/database/SQLException;->printStackTrace()V

    .line 204
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
