.class public interface abstract Lcom/br/ipad/isc/repositorios/IRepositorioCategoriaSubcategoria;
.super Ljava/lang/Object;
.source "IRepositorioCategoriaSubcategoria.java"


# virtual methods
.method public abstract buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/br/ipad/isc/bean/CategoriaSubcategoria;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation
.end method

.method public abstract obterCategoriaPrincipal(Ljava/lang/Integer;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation
.end method

.method public abstract obterQuantidadeEconomias(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation
.end method

.method public abstract obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation
.end method
