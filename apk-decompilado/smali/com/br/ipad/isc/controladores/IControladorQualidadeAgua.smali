.class public interface abstract Lcom/br/ipad/isc/controladores/IControladorQualidadeAgua;
.super Ljava/lang/Object;
.source "IControladorQualidadeAgua.java"


# virtual methods
.method public abstract buscarQualidadeAguaPorLocalidade(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/QualidadeAgua;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract buscarQualidadeAguaPorLocalidadeSetorComercial(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/QualidadeAgua;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract buscarQualidadeAguaSemLocalidade()Lcom/br/ipad/isc/bean/QualidadeAgua;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method
