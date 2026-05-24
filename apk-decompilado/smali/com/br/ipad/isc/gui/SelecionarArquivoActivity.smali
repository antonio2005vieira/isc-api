.class public Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;
.super Lcom/br/ipad/isc/gui/BaseActivity;
.source "SelecionarArquivoActivity.java"


# instance fields
.field private adapter:Lcom/br/ipad/isc/adapters/SelecionarArquivoAdapter;

.field private filesDir:Ljava/io/File;

.field private listFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lv:Landroid/widget/ListView;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/BaseActivity;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->listFiles:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->path:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->path:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 36
    invoke-super {p0, p1}, Lcom/br/ipad/isc/gui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->lv:Landroid/widget/ListView;

    .line 38
    iget-boolean p1, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->execute:Z

    if-eqz p1, :cond_3

    const p1, 0x7f0a003b

    .line 39
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->setContentView(I)V

    .line 40
    invoke-static {p0}, Lcom/br/ipad/isc/fachada/Fachada;->setContext(Landroid/content/Context;)V

    const p1, 0x7f070082

    .line 43
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity$1;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity$1;-><init>(Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 54
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/fachada/Fachada;->verificarExistenciaBancoDeDados()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->startActivity(Landroid/content/Intent;)V

    .line 57
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->finish()V

    .line 60
    :cond_0
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_OFFLINE:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->filesDir:Ljava/io/File;

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->filesDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 66
    :cond_1
    new-instance p1, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity$2;

    invoke-direct {p1, p0}, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity$2;-><init>(Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;)V

    const v0, 0x7f0700ab

    .line 72
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->lv:Landroid/widget/ListView;

    .line 73
    iget-object v0, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->filesDir:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 75
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 76
    iget-object v3, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->listFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_2
    new-instance p1, Lcom/br/ipad/isc/adapters/SelecionarArquivoAdapter;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->listFiles:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0}, Lcom/br/ipad/isc/adapters/SelecionarArquivoAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->adapter:Lcom/br/ipad/isc/adapters/SelecionarArquivoAdapter;

    .line 81
    iget-object v0, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object p1, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->lv:Landroid/widget/ListView;

    new-instance v0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity$3;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity$3;-><init>(Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x63

    const v2, 0x7f0b0108

    .line 114
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/16 v0, 0x63

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {p0}, Lcom/br/ipad/isc/util/Util;->sairAplicacao(Landroid/content/Context;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
