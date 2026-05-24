.class public interface abstract Lcom/br/ipad/isc/controladores/IControladorConsumoTipo;
.super Ljava/lang/Object;
.source "IControladorConsumoTipo.java"


# virtual methods
.method public abstract buscarConsumoTipoPorId(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoTipo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method
