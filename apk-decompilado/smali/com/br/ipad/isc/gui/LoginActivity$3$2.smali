.class Lcom/br/ipad/isc/gui/LoginActivity$3$2;
.super Landroid/os/AsyncTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/LoginActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/br/ipad/isc/gui/LoginActivity$3;

.field final synthetic val$mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$nomeArquivo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/LoginActivity$3;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3$2;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$3;

    iput-object p2, p0, Lcom/br/ipad/isc/gui/LoginActivity$3$2;->val$nomeArquivo:Ljava/lang/String;

    iput-object p3, p0, Lcom/br/ipad/isc/gui/LoginActivity$3$2;->val$mProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 4

    .line 217
    invoke-static {}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->getInstancia()Lcom/br/ipad/isc/fachada/FachadaWebServer;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/LoginActivity$3$2;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$3;

    iget-object v0, v0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->setContextComunicacaoWebServer(Landroid/content/Context;)V

    .line 218
    invoke-static {}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->getInstancia()Lcom/br/ipad/isc/fachada/FachadaWebServer;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/LoginActivity$3$2;->val$nomeArquivo:Ljava/lang/String;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3$2;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$3;

    iget-object v1, v1, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 219
    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->enviarDados(Ljava/lang/String;SLandroid/content/Context;Ljava/lang/StringBuilder;)I

    move-result p1

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/LoginActivity$3$2;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 10

    .line 227
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 232
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    const/16 v2, 0x64

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3$2;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$3;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const v2, 0x7f0b0069

    invoke-virtual {p1, v2}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 241
    :cond_1
    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3$2;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$3;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const v2, 0x7f0b0071

    invoke-virtual {p1, v2}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 247
    :cond_2
    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3$2;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$3;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const v2, 0x7f0b0085

    invoke-virtual {p1, v2}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    goto :goto_1

    .line 235
    :cond_3
    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3$2;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$3;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const v2, 0x7f0b006b

    invoke-virtual {p1, v2}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 252
    :goto_1
    iget-object v3, p0, Lcom/br/ipad/isc/gui/LoginActivity$3$2;->val$mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    if-eqz p1, :cond_5

    .line 255
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/br/ipad/isc/fachada/Fachada;->insereLogFinalizacao(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->getMensagemError()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    move-object p1, v8

    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    move v7, v2

    .line 265
    :goto_2
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;

    const/4 v5, 0x2

    const/4 v6, 0x1

    iget-object v9, p0, Lcom/br/ipad/isc/gui/LoginActivity$3$2;->val$nomeArquivo:Ljava/lang/String;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;-><init>(BBZLjava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0, v1, p1, v1}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;->defineAlerta(ILjava/lang/String;I)Z

    .line 267
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sput-object p1, Lcom/br/ipad/isc/io/ArquivoRetorno;->montaArquivo:Ljava/lang/StringBuilder;

    :cond_5
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 212
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/LoginActivity$3$2;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
