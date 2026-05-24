.class public interface abstract Lcom/br/ipad/isc/repositorios/IRepositorioConsumoHistorico;
.super Ljava/lang/Object;
.source "IRepositorioConsumoHistorico.java"


# virtual methods
.method public abstract buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation
.end method

.method public abstract obterConsumoImoveisMicro(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation
.end method

.method public abstract obterQuantidadeRegistroConsumoHistorico()Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation
.end method
