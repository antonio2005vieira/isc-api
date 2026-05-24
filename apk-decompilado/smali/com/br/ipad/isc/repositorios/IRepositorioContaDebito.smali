.class public interface abstract Lcom/br/ipad/isc/repositorios/IRepositorioContaDebito;
.super Ljava/lang/Object;
.source "IRepositorioContaDebito.java"


# virtual methods
.method public abstract buscarContasDebitosPorIdImovel(Ljava/lang/Integer;)Ljava/util/ArrayList;
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
.end method
