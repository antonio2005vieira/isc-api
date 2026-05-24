.class public interface abstract Lcom/br/ipad/isc/repositorios/IRepositorioImovelRevisitar;
.super Ljava/lang/Object;
.source "IRepositorioImovelRevisitar.java"


# virtual methods
.method public abstract buscarImovelNaoRevisitado()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ImovelRevisitar;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation
.end method

.method public abstract buscarImovelRevisitarPorImovel(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ImovelRevisitar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation
.end method
