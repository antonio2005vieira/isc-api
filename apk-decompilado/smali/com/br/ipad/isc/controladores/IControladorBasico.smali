.class public interface abstract Lcom/br/ipad/isc/controladores/IControladorBasico;
.super Ljava/lang/Object;
.source "IControladorBasico.java"


# virtual methods
.method public abstract apagarBanco()V
.end method

.method public abstract atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract carregaLinhaParaBD(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract getControladorAlertaValidarLeitura(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;
.end method

.method public abstract getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;
.end method

.method public abstract getControladorConsumoAnormalidadeAcao()Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;
.end method

.method public abstract getControladorConsumoAnteriores()Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;
.end method

.method public abstract getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;
.end method

.method public abstract getControladorConsumoTarifaCategoria()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaCategoria;
.end method

.method public abstract getControladorConsumoTarifaFaixa()Lcom/br/ipad/isc/controladores/ControladorConsumoTarifaFaixa;
.end method

.method public abstract getControladorConta()Lcom/br/ipad/isc/controladores/ControladorConta;
.end method

.method public abstract getControladorContaCategoria()Lcom/br/ipad/isc/controladores/ControladorContaCategoria;
.end method

.method public abstract getControladorContaCategoriaConsumoFaixa()Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;
.end method

.method public abstract getControladorContaImposto()Lcom/br/ipad/isc/controladores/ControladorContaImposto;
.end method

.method public abstract getControladorCreditoRealizado()Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;
.end method

.method public abstract getControladorDebitoCobrado()Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;
.end method

.method public abstract getControladorFoto()Lcom/br/ipad/isc/controladores/ControladorFoto;
.end method

.method public abstract getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;
.end method

.method public abstract getControladorImovel()Lcom/br/ipad/isc/controladores/ControladorImovel;
.end method

.method public abstract getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;
.end method

.method public abstract getControladorSistemaParametros()Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;
.end method

.method public abstract inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract pesquisar(Lcom/br/ipad/isc/bean/ObjetoBasico;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/br/ipad/isc/bean/ObjetoBasico;",
            ">(TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/br/ipad/isc/bean/ObjetoBasico;",
            ">(",
            "Ljava/lang/Integer;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract remover(Lcom/br/ipad/isc/bean/ObjetoBasico;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract verificarExistenciaBancoDeDados()Z
.end method
