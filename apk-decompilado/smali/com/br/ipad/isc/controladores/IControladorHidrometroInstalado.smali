.class public interface abstract Lcom/br/ipad/isc/controladores/IControladorHidrometroInstalado;
.super Ljava/lang/Object;
.source "IControladorHidrometroInstalado.java"


# virtual methods
.method public abstract buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract buscarLeituraHidrometroTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract obterTombamento(Lcom/br/ipad/isc/bean/ImovelConta;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract validarLeituraMensagem(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation
.end method
