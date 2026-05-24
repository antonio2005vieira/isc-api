.class Lcom/br/ipad/isc/gui/MenuActivity$10;
.super Landroid/os/AsyncTask;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/MenuActivity;->validarFotosNaoEnviadas()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/MenuActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/MenuActivity;)V
    .locals 0

    .line 855
    iput-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$10;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 p1, 0x0

    .line 861
    :goto_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity$10;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    iget-object v0, v0, Lcom/br/ipad/isc/gui/MenuActivity;->colecaoFotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity$10;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    iget-object v0, v0, Lcom/br/ipad/isc/gui/MenuActivity;->colecaoFotos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/Foto;

    .line 866
    :try_start_0
    iget-object v1, p0, Lcom/br/ipad/isc/gui/MenuActivity$10;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    iget-object v2, p0, Lcom/br/ipad/isc/gui/MenuActivity$10;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {v2}, Lcom/br/ipad/isc/gui/MenuActivity;->access$200(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/br/ipad/isc/fachada/Fachada;->enviarFotosOnline(Lcom/br/ipad/isc/bean/Foto;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/br/ipad/isc/gui/MenuActivity;->sucess:Z

    .line 867
    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity$10;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    iget-boolean v0, v0, Lcom/br/ipad/isc/gui/MenuActivity;->sucess:Z

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity$10;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    iget-object v0, v0, Lcom/br/ipad/isc/gui/MenuActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/br/ipad/isc/excecoes/NegocioException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 873
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/NegocioException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 871
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/FachadaException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 876
    :cond_1
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$10;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/MenuActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 878
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$10;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    iget-boolean p1, p1, Lcom/br/ipad/isc/gui/MenuActivity;->sucess:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 882
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 887
    :try_start_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$10;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarFotosPendentes()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/br/ipad/isc/gui/MenuActivity;->colecaoFotos:Ljava/util/ArrayList;

    .line 889
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$10;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/MenuActivity;->colecaoFotos:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$10;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/MenuActivity;->colecaoFotos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 893
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity$10;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Erro no envio das fotos On-line."

    .line 894
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Confirme abaixo para enviar as fotos ou cancele o envio."

    .line 895
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0600d1

    .line 896
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Enviar"

    new-instance v1, Lcom/br/ipad/isc/gui/MenuActivity$10$2;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/MenuActivity$10$2;-><init>(Lcom/br/ipad/isc/gui/MenuActivity$10;)V

    .line 897
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Cancelar"

    new-instance v1, Lcom/br/ipad/isc/gui/MenuActivity$10$1;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/MenuActivity$10$1;-><init>(Lcom/br/ipad/isc/gui/MenuActivity$10;)V

    .line 905
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 916
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 890
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$10;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity$10;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/MenuActivity;->access$600(Lcom/br/ipad/isc/gui/MenuActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->enviarImoveisLidos(I)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/br/ipad/isc/excecoes/NegocioException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 921
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/NegocioException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 919
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/FachadaException;->printStackTrace()V

    :goto_1
    return-void
.end method
