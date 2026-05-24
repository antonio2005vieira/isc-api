.class public interface abstract Lcom/br/ipad/isc/controladores/IControladorContaCategoria;
.super Ljava/lang/Object;
.source "IControladorContaCategoria.java"


# virtual methods
.method public abstract buscarContaCategoriaPorCategoriaSubcategoriaId(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ContaCategoria;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract obterValorTotal(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract removerImovelContaCategoria(Ljava/lang/Integer;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method
