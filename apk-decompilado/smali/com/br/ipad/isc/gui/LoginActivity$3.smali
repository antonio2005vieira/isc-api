.class Lcom/br/ipad/isc/gui/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/LoginActivity;->setUpButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/LoginActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/LoginActivity;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 175
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_RETORNO:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    new-instance v0, Lcom/br/ipad/isc/gui/LoginActivity$3$1;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/LoginActivity$3$1;-><init>(Lcom/br/ipad/isc/gui/LoginActivity$3;)V

    .line 183
    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 185
    array-length v3, p1

    if-eqz v3, :cond_1

    .line 187
    iget-object v3, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-static {v3, v1}, Lcom/br/ipad/isc/gui/LoginActivity;->access$002(Lcom/br/ipad/isc/gui/LoginActivity;Z)Z

    .line 190
    iget-object v3, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-static {v3}, Lcom/br/ipad/isc/gui/LoginActivity;->access$100(Lcom/br/ipad/isc/gui/LoginActivity;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v4

    invoke-virtual {v4}, Lcom/br/ipad/isc/fachada/Fachada;->obterQuantidadeImoveis()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->apagarArquivoRetorno()V

    .line 195
    new-instance p1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const-class v4, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    iget-object v3, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const v4, 0x7f0b0083

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "login"

    const-string v4, "ok"

    .line 197
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v3, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-virtual {v3, p1}, Lcom/br/ipad/isc/gui/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/LoginActivity;->finish()V

    goto :goto_0

    .line 203
    :cond_0
    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 206
    iget-object v3, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const v4, 0x7f0b00dc

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v3

    .line 208
    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/16 v4, 0x64

    .line 209
    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 210
    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 212
    new-instance v4, Lcom/br/ipad/isc/gui/LoginActivity$3$2;

    invoke-direct {v4, p0, p1, v3}, Lcom/br/ipad/isc/gui/LoginActivity$3$2;-><init>(Lcom/br/ipad/isc/gui/LoginActivity$3;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    new-array p1, v2, [Ljava/lang/Object;

    .line 275
    invoke-virtual {v4, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 293
    :cond_1
    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-static {p1, v2}, Lcom/br/ipad/isc/gui/LoginActivity;->access$002(Lcom/br/ipad/isc/gui/LoginActivity;Z)Z

    .line 297
    :goto_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/LoginActivity;->access$000(Lcom/br/ipad/isc/gui/LoginActivity;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 299
    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/LoginActivity;->access$200(Lcom/br/ipad/isc/gui/LoginActivity;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 300
    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const v0, 0x7f0b0140

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/br/ipad/isc/gui/LoginActivity;->access$300(Lcom/br/ipad/isc/gui/LoginActivity;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 303
    :cond_2
    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/LoginActivity;->access$400(Lcom/br/ipad/isc/gui/LoginActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 304
    iget-object v3, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-static {v3}, Lcom/br/ipad/isc/gui/LoginActivity;->access$500(Lcom/br/ipad/isc/gui/LoginActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 308
    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const v0, 0x7f0b00d6

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/br/ipad/isc/gui/LoginActivity;->access$300(Lcom/br/ipad/isc/gui/LoginActivity;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 311
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 313
    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const v0, 0x7f0b0124

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/br/ipad/isc/gui/LoginActivity;->access$300(Lcom/br/ipad/isc/gui/LoginActivity;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 318
    :cond_4
    iget-object v0, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/LoginActivity;->access$600(Lcom/br/ipad/isc/gui/LoginActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 319
    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const v0, 0x7f0b00d5

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/br/ipad/isc/gui/LoginActivity;->access$300(Lcom/br/ipad/isc/gui/LoginActivity;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 322
    :cond_5
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getLogin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 324
    iget-object v0, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const v3, 0x7f0b00d8

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 325
    iget-object v0, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-static {v0, p1, v2}, Lcom/br/ipad/isc/gui/LoginActivity;->access$300(Lcom/br/ipad/isc/gui/LoginActivity;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 328
    :cond_6
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getSenha()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3}, Lcom/br/ipad/isc/util/Criptografia;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 330
    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const v0, 0x7f0b0125

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/br/ipad/isc/gui/LoginActivity;->access$300(Lcom/br/ipad/isc/gui/LoginActivity;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 334
    :cond_7
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorArmazenarCoordenadas()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 335
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorArmazenarCoordenadas()Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/LoginActivity;->manager:Landroid/location/LocationManager;

    const-string v0, "gps"

    .line 336
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 338
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "ISC"

    .line 339
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "GPS Desconectado. Ser\u00e1 necess\u00e1rio ativ\u00e1-lo para continuar a opera\u00e7\u00e3o."

    .line 340
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 341
    new-instance v0, Lcom/br/ipad/isc/gui/LoginActivity$3$3;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/LoginActivity$3$3;-><init>(Lcom/br/ipad/isc/gui/LoginActivity$3;)V

    const-string v1, "Ok"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 348
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 353
    :cond_8
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 354
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/LoginActivity$3;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b00d4

    .line 355
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A data atual \u00e9 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Confirma? "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f0b0127

    .line 358
    new-instance v1, Lcom/br/ipad/isc/gui/LoginActivity$3$4;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/LoginActivity$3$4;-><init>(Lcom/br/ipad/isc/gui/LoginActivity$3;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f0b0111

    .line 372
    new-instance v1, Lcom/br/ipad/isc/gui/LoginActivity$3$5;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/LoginActivity$3$5;-><init>(Lcom/br/ipad/isc/gui/LoginActivity$3;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 380
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_9
    :goto_1
    return-void
.end method
