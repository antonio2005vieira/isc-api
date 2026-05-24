.class public interface abstract Lcom/br/ipad/isc/controladores/IControladorConta;
.super Ljava/lang/Object;
.source "IControladorConta.java"


# virtual methods
.method public abstract calcularConta(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract calcularContaTeste(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract calcularValores(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/ConsumoHistorico;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract controlaSubstituicaoHidrometro(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ConsumoHistorico;Ljava/lang/Integer;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract efetuarRateio(Lcom/br/ipad/isc/bean/ImovelConta;ZLjava/lang/Integer;)Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I
.end method

.method public abstract obterValorConta(Ljava/lang/Integer;)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract permiteImprimir(Lcom/br/ipad/isc/bean/ImovelConta;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract recuperarDadosConsumoAnormalidadeAcao(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;ILcom/br/ipad/isc/bean/ConsumoAnormalidade;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract verificarAltoConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;I)V
.end method

.method public abstract verificarBaixoConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;I)V
.end method

.method public abstract verificarConsumoAnormalidade(Lcom/br/ipad/isc/bean/ImovelConta;I)Lcom/br/ipad/isc/bean/ConsumoAnormalidade;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract verificarEstouroConsumo(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;Lcom/br/ipad/isc/bean/HidrometroInstalado;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract verificarPercentualEsgotoAlternativo(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method
