.class public Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "SequencialRotaMarcacao.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/SequencialRotaMarcacao$SequencialRotaMarcacoesTipos;,
        Lcom/br/ipad/isc/bean/SequencialRotaMarcacao$SequencialRotaMarcacoes;
    }
.end annotation


# static fields
.field public static final QUANTIDADE_REGISTRO_ARQUIVO_TEXTO:I = 0x4b

.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private anoMesReferencia:Ljava/lang/Integer;

.field private id:Ljava/lang/Integer;

.field private matricula:Lcom/br/ipad/isc/bean/ImovelConta;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "RMSE_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "IMOV_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "RMSE_AMREFERENCIA"

    aput-object v2, v0, v1

    .line 69
    sput-object v0, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->id:Ljava/lang/Integer;

    .line 37
    iput-object p2, p0, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 38
    iput-object p3, p0, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->anoMesReferencia:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getAnoMesReferencia()Ljava/lang/Integer;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->anoMesReferencia:Ljava/lang/Integer;

    return-object v0
.end method

.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "rota_marcacao_sequencia"

    return-object v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;",
            ">;"
        }
    .end annotation

    const-string v0, "RMSE_ID"

    .line 117
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "RMSE_AMREFERENCIA"

    .line 118
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "IMOV_ID"

    .line 119
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 122
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 125
    :cond_0
    new-instance v5, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;

    invoke-direct {v5}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;-><init>()V

    .line 127
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->setId(Ljava/lang/Integer;)V

    .line 128
    invoke-static {p1, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->setAnoMesReferencia(Ljava/lang/Integer;)V

    .line 132
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    move-result-object v6

    .line 133
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v8}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    invoke-virtual {v6, v7, v8}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v6

    check-cast v6, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 135
    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 137
    invoke-virtual {v6}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ISC"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v6}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 141
    :goto_0
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    return-object v4
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 100
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 102
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->getId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RMSE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMOV_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->getAnoMesReferencia()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->getAnoMesReferencia()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RMSE_AMREFERENCIA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    return-object v0
.end method

.method public setAnoMesReferencia(Ljava/lang/Integer;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->anoMesReferencia:Ljava/lang/Integer;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setMatricula(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->matricula:Lcom/br/ipad/isc/bean/ImovelConta;

    return-void
.end method
