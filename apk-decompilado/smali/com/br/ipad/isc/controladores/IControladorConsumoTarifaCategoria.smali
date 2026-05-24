.class public interface abstract Lcom/br/ipad/isc/controladores/IControladorConsumoTarifaCategoria;
.super Ljava/lang/Object;
.source "IControladorConsumoTarifaCategoria.java"


# virtual methods
.method public abstract buscarConsumoTarifaCategoriaPorCodigo(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract buscarConsumoTarifaCategoriaPorIds(Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract buscarConsumosTarifasCategorias(ILjava/util/Date;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract buscarConsumosTarifasCategorias(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract buscarVigenciasConsumosTarifasCategorias(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract pesquisarDadosTarifaImovel(ZLjava/lang/String;Ljava/lang/String;ILjava/util/Date;)Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method
