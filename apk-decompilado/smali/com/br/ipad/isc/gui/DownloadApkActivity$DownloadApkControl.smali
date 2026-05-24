.class Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;
.super Landroid/os/AsyncTask;
.source "DownloadApkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/gui/DownloadApkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadApkControl"
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
.field protected abort:Z

.field private prbRoute:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;


# direct methods
.method private constructor <init>(Lcom/br/ipad/isc/gui/DownloadApkActivity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->abort:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/br/ipad/isc/gui/DownloadApkActivity;Lcom/br/ipad/isc/gui/DownloadApkActivity$1;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;-><init>(Lcom/br/ipad/isc/gui/DownloadApkActivity;)V

    return-void
.end method

.method private baixarApk(Ljava/io/InputStream;I)I
    .locals 8

    const-string v0, "ISC"

    .line 144
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_VERSAO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "isc.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x63

    .line 148
    :try_start_0
    iget-object v3, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->prbRoute:Landroid/widget/ProgressBar;

    invoke-virtual {v3, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 150
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 154
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getValorRespostaInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x400

    new-array v3, v3, [B

    const-string v4, "*"

    .line 160
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 161
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    add-int/2addr v4, v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Integer;

    .line 163
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {p0, v6}, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->publishProgress([Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p2, v3, v1, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 169
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x64

    goto :goto_1

    :catch_0
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 189
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_1
    :goto_1
    return v2
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/widget/ProgressBar;)Ljava/lang/Integer;
    .locals 5

    const-string v0, "ISC"

    const/4 v1, 0x0

    .line 200
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->prbRoute:Landroid/widget/ProgressBar;

    const/4 p1, 0x3

    .line 204
    :try_start_0
    new-instance v2, Ljava/util/Vector;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    .line 205
    new-instance v3, Ljava/lang/Byte;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v3, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-static {v3}, Lcom/br/ipad/isc/util/Util;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-static {}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->getInstancia()Lcom/br/ipad/isc/fachada/FachadaWebServer;

    move-result-object v3

    iget-object v4, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->iniciarConexaoWebServer(Landroid/content/Context;)V

    .line 209
    invoke-static {}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->getInstancia()Lcom/br/ipad/isc/fachada/FachadaWebServer;

    move-result-object v3

    const-string v4, "https://batchsanep.gruporas.com.br/gsan/processarRequisicaoDipositivoMovelImpressaoSimultaneaAndroidAction.do"

    invoke-virtual {v3, v4, v2}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->comunicar(Ljava/lang/String;Ljava/util/Vector;)Ljava/io/InputStream;

    move-result-object v2

    .line 210
    invoke-static {}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->getInstancia()Lcom/br/ipad/isc/fachada/FachadaWebServer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->getFileLength()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->baixarApk(Ljava/io/InputStream;I)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x64

    .line 226
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v1

    .line 221
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception v1

    .line 217
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 218
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    .line 213
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 214
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, [Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->doInBackground([Landroid/widget/ProgressBar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->access$000(Lcom/br/ipad/isc/gui/DownloadApkActivity;)Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;

    move-result-object v0

    iget-boolean v0, v0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->abort:Z

    if-nez v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-static {v0, p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->access$100(Lcom/br/ipad/isc/gui/DownloadApkActivity;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->access$200(Lcom/br/ipad/isc/gui/DownloadApkActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->finish()V

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 87
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    const v2, 0x7f0b0034

    .line 88
    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    const v1, 0x104000a

    .line 91
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl$1;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl$1;-><init>(Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 103
    :cond_1
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_VERSAO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isc.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/16 v2, 0x1285

    const/high16 v3, 0x10000000

    if-lt v0, v1, :cond_2

    .line 105
    iget-object v0, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    const-string v1, "com.br.ipad.isc.provider"

    invoke-static {v0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 108
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-virtual {p1, v0, v2}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 112
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/vnd.android.package-archive"

    .line 114
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-virtual {p1, v0, v2}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 66
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 67
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_SDCARD:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 72
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_VERSAO:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->prbRoute:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
