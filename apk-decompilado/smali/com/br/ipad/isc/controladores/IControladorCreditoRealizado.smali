.class public interface abstract Lcom/br/ipad/isc/controladores/IControladorCreditoRealizado;
.super Ljava/lang/Object;
.source "IControladorCreditoRealizado.java"


# virtual methods
.method public abstract buscarCreditoRealizadoPorDescricao(Ljava/lang/String;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/CreditoRealizado;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract buscarCreditoRealizadoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/br/ipad/isc/bean/CreditoRealizado;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract obterQntCreditoRealizadoPorImovelId(Ljava/lang/Integer;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract obterValorCreditoTotal(Ljava/lang/Integer;)Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method
