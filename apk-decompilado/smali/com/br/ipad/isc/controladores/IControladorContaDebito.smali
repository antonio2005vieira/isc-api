.class public interface abstract Lcom/br/ipad/isc/controladores/IControladorContaDebito;
.super Ljava/lang/Object;
.source "IControladorContaDebito.java"


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
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method
