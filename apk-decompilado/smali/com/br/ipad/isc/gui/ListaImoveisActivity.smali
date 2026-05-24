.class public Lcom/br/ipad/isc/gui/ListaImoveisActivity;
.super Lcom/br/ipad/isc/gui/BaseActivity;
.source "ListaImoveisActivity.java"


# instance fields
.field private adapter:Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

.field private busca:Landroid/widget/EditText;

.field private buscaAntiga:Ljava/lang/String;

.field private fachada:Lcom/br/ipad/isc/fachada/Fachada;

.field private i:Landroid/content/Intent;

.field private imagensLegenda:[Ljava/lang/Integer;

.field private imovel:Lcom/br/ipad/isc/bean/ImovelConta;

.field private legendaSpinner:Landroid/widget/Spinner;

.field private legendas:[Ljava/lang/String;

.field private listImovel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ImovelConta;",
            ">;"
        }
    .end annotation
.end field

.field private lv:Landroid/widget/ListView;

.field private mapLegenda:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private menu:Landroid/widget/Button;

.field private procurar:Landroid/widget/ImageButton;

.field private spinnerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private tipoBuscaSelecionado:Ljava/lang/String;

.field private tipoBuscaSpinner:Landroid/widget/Spinner;

.field private tiposBusca:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/BaseActivity;-><init>()V

    const-string v0, ""

    .line 50
    iput-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->buscaAntiga:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    return-void
.end method

.method static synthetic access$000(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object p0
.end method

.method static synthetic access$002(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object p1
.end method

.method static synthetic access$100(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/content/Intent;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->i:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$102(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->i:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->tipoBuscaSelecionado:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->tipoBuscaSelecionado:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->listImovel:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->listImovel:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/fachada/Fachada;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    return-object p0
.end method

.method static synthetic access$500(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/adapters/ListaImovelAdapter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->adapter:Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    return-object p0
.end method

.method static synthetic access$502(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Lcom/br/ipad/isc/adapters/ListaImovelAdapter;)Lcom/br/ipad/isc/adapters/ListaImovelAdapter;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->adapter:Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/ListView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->buscaAntiga:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->buscaAntiga:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/EditText;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->busca:Landroid/widget/EditText;

    return-object p0
.end method

.method private initializaListaLegenda()V
    .locals 4

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->spinnerList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 374
    :goto_0
    iget-object v1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->legendas:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 375
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->mapLegenda:Ljava/util/HashMap;

    .line 377
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->legendas:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "Legenda"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->mapLegenda:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->imagensLegenda:[Ljava/lang/Integer;

    aget-object v2, v2, v0

    const-string v3, "Icon"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->spinnerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->mapLegenda:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setUpWidgets()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0b00b1

    .line 80
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0b00de

    .line 81
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f0b00af

    .line 82
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x7f0b00ab

    .line 83
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x7f0b00ac

    .line 84
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const v1, 0x7f0b00ae

    .line 85
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const v1, 0x7f0b00b0

    .line 86
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const v1, 0x7f0b00ad

    .line 87
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->tiposBusca:[Ljava/lang/String;

    const v0, 0x7f070056

    .line 89
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->tipoBuscaSpinner:Landroid/widget/Spinner;

    const v0, 0x7f070055

    .line 91
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->busca:Landroid/widget/EditText;

    const v0, 0x7f0700ac

    .line 93
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->lv:Landroid/widget/ListView;

    const v0, 0x7f0700de

    .line 94
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->procurar:Landroid/widget/ImageButton;

    .line 96
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Lcom/br/ipad/isc/gui/ListaImoveisActivity$1;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity$1;-><init>(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->tiposBusca:[Ljava/lang/String;

    const v2, 0x1090008

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const v1, 0x7f0700be

    .line 115
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->menu:Landroid/widget/Button;

    .line 117
    new-instance v2, Lcom/br/ipad/isc/gui/ListaImoveisActivity$2;

    invoke-direct {v2, p0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity$2;-><init>(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->tipoBuscaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 127
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->tipoBuscaSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;-><init>(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 252
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->procurar:Landroid/widget/ImageButton;

    new-instance v1, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;-><init>(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 439
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcom/br/ipad/isc/gui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    iget-boolean p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->execute:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0a002b

    .line 68
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->setContentView(I)V

    .line 69
    invoke-static {p0}, Lcom/br/ipad/isc/fachada/Fachada;->setContext(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 74
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->setUpWidgets()V

    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p2, 0x52

    if-ne p1, p2, :cond_0

    .line 390
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->startActivity(Landroid/content/Intent;)V

    .line 392
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onRestart()V
    .locals 2

    .line 418
    invoke-super {p0}, Lcom/br/ipad/isc/gui/BaseActivity;->onRestart()V

    .line 420
    iget-boolean v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->execute:Z

    if-eqz v0, :cond_0

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelContas()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->listImovel:Ljava/util/ArrayList;

    .line 425
    new-instance v0, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->listImovel:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->adapter:Lcom/br/ipad/isc/adapters/ListaImovelAdapter;
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 428
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/FachadaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :goto_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->adapter:Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 400
    invoke-super {p0}, Lcom/br/ipad/isc/gui/BaseActivity;->onResume()V

    .line 402
    iget-boolean v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->execute:Z

    if-eqz v0, :cond_0

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelContas()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->listImovel:Ljava/util/ArrayList;

    .line 407
    new-instance v0, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->listImovel:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->adapter:Lcom/br/ipad/isc/adapters/ListaImovelAdapter;
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 410
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/FachadaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :goto_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->adapter:Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method
