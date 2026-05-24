.class public Lcom/br/ipad/isc/conexao/ConexaoEnviaImovel;
.super Landroid/os/AsyncTask;
.source "ConexaoEnviaImovel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private contexto:Landroid/content/Context;

.field private imovel:Lcom/br/ipad/isc/bean/ImovelConta;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    .line 47
    aget-object v1, p1, v0

    check-cast v1, Lcom/br/ipad/isc/bean/ImovelConta;

    iput-object v1, p0, Lcom/br/ipad/isc/conexao/ConexaoEnviaImovel;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const/4 v1, 0x1

    .line 48
    aget-object p1, p1, v1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/br/ipad/isc/conexao/ConexaoEnviaImovel;->contexto:Landroid/content/Context;

    .line 51
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->getInstance()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object p1

    iget-object v1, p0, Lcom/br/ipad/isc/conexao/ConexaoEnviaImovel;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p1, v1}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->enviarAoCalcular(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    invoke-static {}, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->getInstancia()Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;

    move-result-object p1

    iget-object v1, p0, Lcom/br/ipad/isc/conexao/ConexaoEnviaImovel;->contexto:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->setContext(Landroid/content/Context;)V

    .line 53
    iget-object p1, p0, Lcom/br/ipad/isc/conexao/ConexaoEnviaImovel;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    iget-object v1, p0, Lcom/br/ipad/isc/conexao/ConexaoEnviaImovel;->contexto:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->enviaCalculado(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;)Z

    move-result p1

    move v0, p1

    .line 57
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorFoto;->getInstance()Lcom/br/ipad/isc/controladores/ControladorFoto;

    move-result-object p1

    iget-object v1, p0, Lcom/br/ipad/isc/conexao/ConexaoEnviaImovel;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p1, v1}, Lcom/br/ipad/isc/controladores/ControladorFoto;->enviarFotosOnline(Lcom/br/ipad/isc/bean/ImovelConta;)Z
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISC"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    .line 64
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/conexao/ConexaoEnviaImovel;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 34
    invoke-static {}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->getMensagemError()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;-><init>()V

    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1, p1, v1}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;->defineAlerta(ILjava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/conexao/ConexaoEnviaImovel;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 24
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/conexao/ConexaoEnviaImovel;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
