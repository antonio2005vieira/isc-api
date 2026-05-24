.class public interface abstract Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;
.super Ljava/lang/Object;
.source "IControladorSistemaParametros.java"


# virtual methods
.method public abstract atualizarArquivoCarregadoBD()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract atualizarDadosImovelMacro(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract atualizarIdImovelSelecionadoSistemaParametros(Ljava/lang/Integer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract atualizarIdQtdImovelCondominioSistemaParametros(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract atualizarIndicadorRotaMarcacaoAtiva(Ljava/lang/Integer;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract atualizarQntImoveis()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract atualizarRoteiroOnlineOffline(Ljava/lang/Integer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract atualizarSistemaParametros(Lcom/br/ipad/isc/bean/SistemaParametros;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract buscarSistemaParametro()Lcom/br/ipad/isc/bean/SistemaParametros;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract validaSenhaAdm(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract validaSenhaApagar(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method
