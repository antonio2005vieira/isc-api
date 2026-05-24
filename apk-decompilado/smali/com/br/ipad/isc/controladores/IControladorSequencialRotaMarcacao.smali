.class public interface abstract Lcom/br/ipad/isc/controladores/IControladorSequencialRotaMarcacao;
.super Ljava/lang/Object;
.source "IControladorSequencialRotaMarcacao.java"


# virtual methods
.method public abstract buscarSequencialRotaMarcacao(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract gravarSequencialRotaMarcacao(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract removerTodosSequencialRotaMarcacao()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method
