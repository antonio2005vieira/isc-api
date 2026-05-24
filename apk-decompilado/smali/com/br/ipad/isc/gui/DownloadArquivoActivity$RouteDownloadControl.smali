.class Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;
.super Landroid/os/AsyncTask;
.source "DownloadArquivoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/gui/DownloadArquivoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RouteDownloadControl"
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

.field private prb:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;


# direct methods
.method private constructor <init>(Lcom/br/ipad/isc/gui/DownloadArquivoActivity;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->abort:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/br/ipad/isc/gui/DownloadArquivoActivity;Lcom/br/ipad/isc/gui/DownloadArquivoActivity$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;-><init>(Lcom/br/ipad/isc/gui/DownloadArquivoActivity;)V

    return-void
.end method


# virtual methods
.method public carregarArquivoParaBD(Ljava/io/BufferedReader;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->prb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v1, v0

    .line 77
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/fachada/Fachada;->carregaLinhaParaBD(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Integer;

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p2

    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->publishProgress([Ljava/lang/Object;)V

    const/16 v2, 0x64

    .line 82
    iget-boolean v3, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->abort:Z

    if-eqz v3, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0

    .line 88
    :cond_1
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/fachada/Fachada;->atualizarQntImoveis()V

    .line 90
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/fachada/Fachada;->atualizarArquivoCarregadoBD()V

    move p2, v0

    :cond_2
    return p2
.end method

.method protected varargs doInBackground([Landroid/widget/ProgressBar;)Ljava/lang/Integer;
    .locals 17

    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 107
    aget-object v2, p1, v0

    iput-object v2, v1, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->prb:Landroid/widget/ProgressBar;

    .line 109
    iget-object v2, v1, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    invoke-virtual {v2}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "offline"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x7

    .line 244
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x64

    .line 152
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x3

    .line 240
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "ISC"

    if-eqz v2, :cond_3

    .line 111
    iget-object v0, v1, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    invoke-virtual {v0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    new-instance v3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_OFFLINE:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 119
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 122
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v0, v12

    const-string v12, ".gz"

    .line 130
    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v0, v12

    invoke-static {v6, v0}, Lcom/br/ipad/isc/util/Util;->inflateFile(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object v6

    .line 132
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    mul-int/lit8 v0, v0, 0x5

    .line 135
    :cond_0
    invoke-virtual {v1, v6, v0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->lerArquivoTxt(Ljava/io/InputStream;I)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v0, v9, :cond_1

    return-object v10

    :catch_1
    move-exception v0

    .line 143
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/FachadaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/FachadaException;->printStackTrace()V

    return-object v5

    :catch_2
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 148
    :cond_1
    iget-boolean v0, v1, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->abort:Z

    if-eqz v0, :cond_2

    .line 149
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v7

    .line 156
    :cond_3
    invoke-static {}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->getInstancia()Lcom/br/ipad/isc/fachada/FachadaWebServer;

    move-result-object v2

    iget-object v3, v1, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->iniciarConexaoWebServer(Landroid/content/Context;)V

    .line 160
    invoke-static {}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->getInstancia()Lcom/br/ipad/isc/fachada/FachadaWebServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->serverOnline()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 164
    new-instance v2, Ljava/util/Vector;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    .line 165
    new-instance v3, Ljava/lang/Byte;

    const/16 v12, 0xd

    invoke-direct {v3, v12}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v3, v1, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    invoke-static {v3}, Lcom/br/ipad/isc/util/Util;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 173
    :try_start_2
    invoke-static {}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->getInstancia()Lcom/br/ipad/isc/fachada/FachadaWebServer;

    move-result-object v3

    const-string v12, "https://batchsanep.gruporas.com.br/gsan/processarRequisicaoDipositivoMovelImpressaoSimultaneaAndroidAction.do"

    invoke-virtual {v3, v12, v2}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->comunicar(Ljava/lang/String;Ljava/util/Vector;)Ljava/io/InputStream;

    move-result-object v2

    .line 175
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 176
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 178
    invoke-static {}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->getInstancia()Lcom/br/ipad/isc/fachada/FachadaWebServer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->getFileLength()I

    move-result v13

    .line 181
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v14

    const/16 v15, 0x2a

    const/16 v16, 0x6

    if-ne v14, v15, :cond_9

    const/4 v14, 0x1

    :goto_1
    if-gt v14, v13, :cond_7

    .line 185
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v15

    int-to-char v15, v15

    .line 187
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ne v14, v13, :cond_4

    const/4 v0, 0x1

    .line 191
    :cond_4
    invoke-static {}, Lcom/br/ipad/isc/io/MessageDispatcher;->getInstancia()Lcom/br/ipad/isc/io/MessageDispatcher;

    move-result-object v4

    .line 192
    invoke-virtual {v4, v3, v15, v12, v0}, Lcom/br/ipad/isc/io/MessageDispatcher;->controlarParametros(Ljava/lang/StringBuffer;CLjava/lang/StringBuffer;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 195
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v12, v3

    move-object v3, v0

    goto :goto_2

    .line 201
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "arquivoRoteiro="

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-le v0, v4, :cond_6

    .line 202
    iget-object v0, v1, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    add-int/2addr v14, v8

    sub-int v3, v13, v14

    invoke-static {v0, v3}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->access$002(Lcom/br/ipad/isc/gui/DownloadArquivoActivity;I)I

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 v14, v14, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x5

    goto :goto_1

    .line 208
    :cond_7
    :goto_3
    invoke-static {}, Lcom/br/ipad/isc/io/MessageDispatcher;->getInstancia()Lcom/br/ipad/isc/io/MessageDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/io/MessageDispatcher;->getTipoArquivo()C

    move-result v0

    const/16 v3, 0x47

    if-ne v0, v3, :cond_8

    .line 209
    iget-object v0, v1, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->access$000(Lcom/br/ipad/isc/gui/DownloadArquivoActivity;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/br/ipad/isc/util/Util;->inflateFile(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object v2

    .line 210
    iget-object v0, v1, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    mul-int/lit8 v13, v13, 0x6

    invoke-static {v0, v13}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->access$002(Lcom/br/ipad/isc/gui/DownloadArquivoActivity;I)I

    .line 213
    :cond_8
    iget-object v0, v1, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->access$000(Lcom/br/ipad/isc/gui/DownloadArquivoActivity;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->lerArquivoTxt(Ljava/io/InputStream;I)I

    move-result v0

    if-ne v0, v9, :cond_a

    return-object v10

    :cond_9
    const/4 v0, 0x6

    :cond_a
    if-ne v0, v6, :cond_c

    .line 228
    invoke-static {}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->getInstancia()Lcom/br/ipad/isc/fachada/FachadaWebServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/FachadaWebServer;->routeInitializationSignal()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v2, 0x5

    .line 229
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_b
    return-object v7

    .line 233
    :cond_c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_2 .. :try_end_2} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    .line 242
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/FachadaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/FachadaException;->printStackTrace()V

    return-object v5

    :catch_4
    move-exception v0

    .line 238
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 239
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_d
    const/4 v0, 0x4

    .line 247
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, [Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->doInBackground([Landroid/widget/ProgressBar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public lerArquivoTxt(Ljava/io/InputStream;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 335
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 338
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/fachada/Fachada;->apagarBanco()V

    const-string v1, "ISC"

    const-string v2, "Carregando banco de dados."

    .line 339
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/br/ipad/isc/fachada/Fachada;->carregaLinhaParaBD(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0, v0, p2}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->carregarArquivoParaBD(Ljava/io/BufferedReader;I)I

    move-result p1

    return p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .line 259
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 290
    :pswitch_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    const v0, 0x7f0b0078

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 286
    :pswitch_1
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    const v0, 0x7f0b007b

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 282
    :pswitch_2
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    const v0, 0x7f0b0076

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 278
    :pswitch_3
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    const v0, 0x7f0b0071

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 274
    :pswitch_4
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    const v0, 0x7f0b0067

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 270
    :pswitch_5
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    const v0, 0x7f0b0068

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 266
    :pswitch_6
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    const v0, 0x7f0b005f

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 262
    :pswitch_7
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    const v0, 0x7f0b0060

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->access$100(Lcom/br/ipad/isc/gui/DownloadArquivoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->sairAplicacao(Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 301
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    const v2, 0x7f0b005e

    .line 302
    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 303
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 304
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    const v1, 0x104000a

    .line 305
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl$1;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl$1;-><init>(Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 312
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 317
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    const-class v1, Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    iget-object v0, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->startActivity(Landroid/content/Intent;)V

    .line 319
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->finish()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 102
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->prb:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
