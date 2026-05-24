.class public interface abstract Lcom/br/ipad/isc/controladores/IControladorLeituraAnormalidade;
.super Ljava/lang/Object;
.source "IControladorLeituraAnormalidade.java"


# virtual methods
.method public abstract buscarLeituraAnormalidadeImovel(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LeituraAnormalidade;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract buscarLeituraAnormalidadePorIdComUsoAtivo(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LeituraAnormalidade;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract buscarLeiturasAnormalidadesComUsoAtivo()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/LeituraAnormalidade;",
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
