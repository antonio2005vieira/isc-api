.class public interface abstract Lcom/br/ipad/isc/controladores/IControladorConsumoHistorico;
.super Ljava/lang/Object;
.source "IControladorConsumoHistorico.java"


# virtual methods
.method public abstract ajustarConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;ILjava/lang/Integer;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract ajusteMensalConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/HidrometroInstalado;ILcom/br/ipad/isc/bean/ConsumoHistorico;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract obterConsumoImoveisMicro(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract obterQuantidadeRegistroConsumoHistorico()Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method
