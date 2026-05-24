.class public interface abstract Lcom/br/ipad/isc/controladores/IControladorImovelRevisitar;
.super Ljava/lang/Object;
.source "IControladorImovelRevisitar.java"


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
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract buscarImovelRevisitarPorImovel(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ImovelRevisitar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract setMatriculasRevisitar(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method
