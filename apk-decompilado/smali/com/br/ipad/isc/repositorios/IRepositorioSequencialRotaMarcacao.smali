.class public interface abstract Lcom/br/ipad/isc/repositorios/IRepositorioSequencialRotaMarcacao;
.super Ljava/lang/Object;
.source "IRepositorioSequencialRotaMarcacao.java"


# virtual methods
.method public abstract buscarSequencialRotaMarcacao(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation
.end method

.method public abstract removerTodosSequencialRotaMarcacao()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation
.end method
