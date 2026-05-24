.class public interface abstract Lcom/br/ipad/isc/controladores/IControladorImovel;
.super Ljava/lang/Object;
.source "IControladorImovel.java"


# virtual methods
.method public abstract andarConta(Ljava/lang/String;II)I
.end method

.method public abstract anterior()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract calcularConsumoMinimoImovel(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/util/Date;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract calcularValores(Lcom/br/ipad/isc/bean/ImovelConta;Lcom/br/ipad/isc/bean/ConsumoHistorico;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract carregarImovelSelecionado()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract deveAplicarCalculoSimples(Lcom/br/ipad/isc/bean/ImovelConta;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract deveTentarEnviar()Z
.end method

.method public abstract getContadorVisitados()I
.end method

.method public abstract getImovelSelecionado()Lcom/br/ipad/isc/bean/ImovelConta;
.end method

.method public abstract getIndiceAtual()I
.end method

.method public abstract getIndiceAtualImovelCondominio()I
.end method

.method public abstract getQtdRegistros()I
.end method

.method public abstract getQuantidadeImoveis()I
.end method

.method public abstract getTipoMedicaoSelecionado()I
.end method

.method public abstract inverterRoteiro()V
.end method

.method public abstract poco(Ljava/lang/String;II)I
.end method

.method public abstract proximo()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract proximoNaoLido()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract roteiroEstaInvertido()Z
.end method

.method public abstract setContadorVisitados(I)V
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract setImovelSelecionado(Lcom/br/ipad/isc/bean/ImovelConta;)V
.end method

.method public abstract setIndiceImovelCondomio(I)V
.end method

.method public abstract setQtdRegistros(I)V
.end method
