.class public interface abstract Lcom/br/ipad/isc/controladores/IControladorContaCategoriaConsumoFaixa;
.super Ljava/lang/Object;
.source "IControladorContaCategoriaConsumoFaixa.java"


# virtual methods
.method public abstract buscarContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract obterTotalConsumoContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract obterTotalValorTarifaContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method
