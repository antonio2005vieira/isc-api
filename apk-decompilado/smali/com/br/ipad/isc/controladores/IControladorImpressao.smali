.class public interface abstract Lcom/br/ipad/isc/controladores/IControladorImpressao;
.super Ljava/lang/Object;
.source "IControladorImpressao.java"


# virtual methods
.method public abstract atualizaDadosImpressaoImovel(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract imovelNaoPermiteImpressao(Lcom/br/ipad/isc/bean/ImovelConta;ZI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract imprimirContaRateio(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;,
            Lcom/br/ipad/isc/excecoes/ImpressaoException;
        }
    .end annotation
.end method

.method public abstract imprimirExtratoMacro(Landroid/content/Context;Lcom/br/ipad/isc/bean/ImovelConta;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract verificarExistenciaImpressora(Lcom/br/ipad/isc/bean/ImovelConta;)Z
.end method

.method public abstract verificarImpressaoConta(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract verificarImpressaoGuia(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method
