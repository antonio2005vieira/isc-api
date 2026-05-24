.class public interface abstract Lcom/br/ipad/isc/controladores/IControladorDebitoCobrado;
.super Ljava/lang/Object;
.source "IControladorDebitoCobrado.java"


# virtual methods
.method public abstract buscarDebitoCobradoPorCodigo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/DebitoCobrado;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract buscarDebitoCobradoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/br/ipad/isc/bean/DebitoCobrado;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract obterQntDebitoCobradoPorImovelId(Ljava/lang/Integer;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract obterValorDebitoTotal(Ljava/lang/Integer;)Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method
