.class Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;
.super Landroid/os/AsyncTask;
.source "RateioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/gui/RateioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RouteRateioControl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/widget/ProgressBar;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private controladorAlertaValidarConexaoImpressora:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

.field final synthetic this$0:Lcom/br/ipad/isc/gui/RateioActivity;


# direct methods
.method private constructor <init>(Lcom/br/ipad/isc/gui/RateioActivity;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->controladorAlertaValidarConexaoImpressora:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

    return-void
.end method

.method synthetic constructor <init>(Lcom/br/ipad/isc/gui/RateioActivity;Lcom/br/ipad/isc/gui/RateioActivity$1;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;-><init>(Lcom/br/ipad/isc/gui/RateioActivity;)V

    return-void
.end method

.method private irTelaHidrometro(Ljava/lang/Integer;)V
    .locals 3

    .line 281
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelContaPorPosicao(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p1

    if-nez p1, :cond_0

    .line 283
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelContaPorPosicao(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p1

    .line 285
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    const-class v2, Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "imovel"

    .line 286
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 287
    iget-object p1, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/RateioActivity;->finish()V

    .line 288
    iget-object p1, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/gui/RateioActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private verificaImpressao()Z
    .locals 7

    const/4 v0, 0x0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v1}, Lcom/br/ipad/isc/gui/RateioActivity;->access$400(Lcom/br/ipad/isc/gui/RateioActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v1}, Lcom/br/ipad/isc/gui/RateioActivity;->access$400(Lcom/br/ipad/isc/gui/RateioActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ok"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v3

    iget-object v4, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v4}, Lcom/br/ipad/isc/gui/RateioActivity;->access$500(Lcom/br/ipad/isc/gui/RateioActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v4

    iget-object v5, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v5}, Lcom/br/ipad/isc/gui/RateioActivity;->access$600(Lcom/br/ipad/isc/gui/RateioActivity;)Z

    move-result v5

    iget-object v6, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v6}, Lcom/br/ipad/isc/gui/RateioActivity;->access$700(Lcom/br/ipad/isc/gui/RateioActivity;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/br/ipad/isc/fachada/Fachada;->efetuarRateio(Lcom/br/ipad/isc/bean/ImovelConta;ZLjava/lang/Integer;)Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/br/ipad/isc/gui/RateioActivity;->access$102(Lcom/br/ipad/isc/gui/RateioActivity;Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;)Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;

    return v2

    .line 200
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v1

    iget-object v3, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v3}, Lcom/br/ipad/isc/gui/RateioActivity;->access$500(Lcom/br/ipad/isc/gui/RateioActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/br/ipad/isc/fachada/Fachada;->existeImovelImpresso(Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v3

    iget-object v4, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v4}, Lcom/br/ipad/isc/gui/RateioActivity;->access$500(Lcom/br/ipad/isc/gui/RateioActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v4

    iget-object v5, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v5}, Lcom/br/ipad/isc/gui/RateioActivity;->access$700(Lcom/br/ipad/isc/gui/RateioActivity;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/br/ipad/isc/fachada/Fachada;->efetuarRateio(Lcom/br/ipad/isc/bean/ImovelConta;ZLjava/lang/Integer;)Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/br/ipad/isc/gui/RateioActivity;->access$102(Lcom/br/ipad/isc/gui/RateioActivity;Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;)Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;

    return v2

    .line 204
    :cond_1
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v1

    iget-object v3, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v3}, Lcom/br/ipad/isc/gui/RateioActivity;->access$500(Lcom/br/ipad/isc/gui/RateioActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/br/ipad/isc/fachada/Fachada;->obterIndicadorPermiteContinuarImpressao(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    iget-object v1, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v3

    iget-object v4, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v4}, Lcom/br/ipad/isc/gui/RateioActivity;->access$500(Lcom/br/ipad/isc/gui/RateioActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v4

    iget-object v5, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v5}, Lcom/br/ipad/isc/gui/RateioActivity;->access$700(Lcom/br/ipad/isc/gui/RateioActivity;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/br/ipad/isc/fachada/Fachada;->efetuarRateio(Lcom/br/ipad/isc/bean/ImovelConta;ZLjava/lang/Integer;)Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/br/ipad/isc/gui/RateioActivity;->access$102(Lcom/br/ipad/isc/gui/RateioActivity;Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;)Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_2
    return v0

    :catch_0
    move-exception v1

    .line 211
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/widget/ProgressBar;)Ljava/lang/Integer;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/br/ipad/isc/gui/RateioActivity;->access$202(Lcom/br/ipad/isc/gui/RateioActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 177
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->verificaImpressao()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->realizaRateio()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x6

    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x5

    .line 184
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 106
    check-cast p1, [Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->doInBackground([Landroid/widget/ProgressBar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6

    .line 221
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    const v2, 0x7f0b0025

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 222
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/RateioActivity;->access$500(Lcom/br/ipad/isc/gui/RateioActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->atualizarIndicadorContinuaImpressao(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 223
    new-instance p1, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/RateioActivity;->access$500(Lcom/br/ipad/isc/gui/RateioActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;)V

    iput-object p1, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->controladorAlertaValidarConexaoImpressora:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

    .line 224
    iget-object v0, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/RateioActivity;->access$300(Lcom/br/ipad/isc/gui/RateioActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0, v2}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->defineAlerta(ILjava/lang/String;I)Z

    goto/16 :goto_0

    .line 225
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v0, v4, :cond_1

    .line 226
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/RateioActivity;->access$500(Lcom/br/ipad/isc/gui/RateioActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v2}, Lcom/br/ipad/isc/fachada/Fachada;->atualizarIndicadorContinuaImpressao(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 227
    new-instance p1, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/RateioActivity;->access$500(Lcom/br/ipad/isc/gui/RateioActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;)V

    iput-object p1, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->controladorAlertaValidarConexaoImpressora:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

    .line 228
    iget-object v0, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    const v2, 0x7f0b006d

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/RateioActivity;->access$300(Lcom/br/ipad/isc/gui/RateioActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/br/ipad/isc/gui/RateioActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v5}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->defineAlerta(ILjava/lang/String;I)Z

    goto/16 :goto_0

    .line 229
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 230
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/RateioActivity;->access$500(Lcom/br/ipad/isc/gui/RateioActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->atualizarIndicadorContinuaImpressao(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 231
    new-instance p1, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/RateioActivity;->access$500(Lcom/br/ipad/isc/gui/RateioActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;)V

    iput-object p1, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->controladorAlertaValidarConexaoImpressora:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

    .line 232
    iget-object v0, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/gui/RateioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0, v2}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->defineAlerta(ILjava/lang/String;I)Z

    goto/16 :goto_0

    .line 233
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 234
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/RateioActivity;->access$500(Lcom/br/ipad/isc/gui/RateioActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->atualizarIndicadorContinuaImpressao(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 235
    new-instance p1, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/RateioActivity;->access$500(Lcom/br/ipad/isc/gui/RateioActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;)V

    iput-object p1, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->controladorAlertaValidarConexaoImpressora:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;

    .line 236
    iget-object v0, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    const v1, 0x7f0b00b6

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/gui/RateioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0, v1}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarConexaoImpressora;->defineAlerta(ILjava/lang/String;I)Z

    goto :goto_0

    .line 237
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    .line 239
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Existem im\u00f3veis j\u00e1 impressos nesse condom\u00ednio.\nDeseja continuar a impressao?"

    .line 240
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl$2;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl$2;-><init>(Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;)V

    const-string v1, "Continuar de onde parou"

    .line 241
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 252
    invoke-virtual {p1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl$1;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl$1;-><init>(Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;)V

    const-string v1, "Imprimir tudo novamente"

    .line 253
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 267
    :cond_4
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/RateioActivity;->access$500(Lcom/br/ipad/isc/gui/RateioActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/fachada/Fachada;->obterIdUltimoImovelMicro(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    .line 268
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    new-instance v1, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v1}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    .line 269
    invoke-virtual {v0, p1, v1}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object p1

    check-cast p1, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 271
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->irTelaHidrometro(Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 167
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/RateioActivity;->access$200(Lcom/br/ipad/isc/gui/RateioActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public realizaRateio()I
    .locals 8

    const/4 v0, 0x5

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v1}, Lcom/br/ipad/isc/gui/RateioActivity;->access$100(Lcom/br/ipad/isc/gui/RateioActivity;)Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->obterTotal()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v3, 0x64

    div-int v1, v3, v1

    .line 117
    iget-object v4, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v4}, Lcom/br/ipad/isc/gui/RateioActivity;->access$200(Lcom/br/ipad/isc/gui/RateioActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 119
    :cond_0
    iget-object v6, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v6}, Lcom/br/ipad/isc/gui/RateioActivity;->access$100(Lcom/br/ipad/isc/gui/RateioActivity;)Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;

    move-result-object v6

    invoke-virtual {v6}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->obterTotal()I

    move-result v6
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 125
    :try_start_1
    iget-object v6, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v6}, Lcom/br/ipad/isc/gui/RateioActivity;->access$100(Lcom/br/ipad/isc/gui/RateioActivity;)Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;

    move-result-object v6

    invoke-virtual {v6}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->proximoRateio()V
    :try_end_1
    .catch Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/br/ipad/isc/excecoes/StatusImpressoraException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/br/ipad/isc/excecoes/ImpressaoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    new-array v6, v2, [Ljava/lang/Integer;

    .line 143
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0, v6}, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->publishProgress([Ljava/lang/Object;)V

    add-int/2addr v5, v1

    .line 146
    iget-object v6, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    iget-boolean v6, v6, Lcom/br/ipad/isc/gui/RateioActivity;->abort:Z

    if-eqz v6, :cond_0

    return v2

    :catch_0
    move-exception v1

    .line 139
    iget-object v2, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/br/ipad/isc/gui/RateioActivity;->access$302(Lcom/br/ipad/isc/gui/RateioActivity;Ljava/lang/String;)Ljava/lang/String;

    return v0

    :catch_1
    move-exception v1

    .line 135
    iget-object v2, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-virtual {v1}, Lcom/br/ipad/isc/excecoes/ImpressaoException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/br/ipad/isc/gui/RateioActivity;->access$302(Lcom/br/ipad/isc/gui/RateioActivity;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x4

    return v0

    :catch_2
    move-exception v1

    .line 131
    iget-object v2, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-virtual {v1}, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/br/ipad/isc/gui/RateioActivity;->access$302(Lcom/br/ipad/isc/gui/RateioActivity;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x3

    return v0

    :catch_3
    move-exception v1

    .line 127
    iget-object v2, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-virtual {v1}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/br/ipad/isc/gui/RateioActivity;->access$302(Lcom/br/ipad/isc/gui/RateioActivity;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x2

    return v0

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {v1}, Lcom/br/ipad/isc/gui/RateioActivity;->access$100(Lcom/br/ipad/isc/gui/RateioActivity;)Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->concluirRateio()V

    new-array v1, v2, [Ljava/lang/Integer;

    .line 153
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->publishProgress([Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_2 .. :try_end_2} :catch_4

    return v3

    :catch_4
    move-exception v1

    .line 157
    invoke-virtual {v1}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    return v0
.end method
