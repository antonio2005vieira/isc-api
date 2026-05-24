.class public Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;
.super Lcom/br/ipad/isc/gui/BaseActivity;
.source "OrdenarImoveisActivity.java"


# instance fields
.field private adapter:Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

.field private fachada:Lcom/br/ipad/isc/fachada/Fachada;

.field private i:Landroid/content/Intent;

.field private imoveisNaoLidos:I

.field private imovel:Lcom/br/ipad/isc/bean/ImovelConta;

.field private indicadorIdLogradouro:I

.field private inverterRoteiro:I

.field inverterRoteiroArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inverterRoteiroSpinner:Landroid/widget/Spinner;

.field private limpar:Landroid/widget/Button;

.field private listImovel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ImovelConta;",
            ">;"
        }
    .end annotation
.end field

.field private logradouroSelecionado:Ljava/lang/String;

.field private logradouros:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lv:Landroid/widget/ListView;

.field private menu:Landroid/widget/Button;

.field naoLidosOuTodosArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private naoLidosOuTodosSpinner:Landroid/widget/Spinner;

.field private parImparSpinner:Landroid/widget/Spinner;

.field parOuImparArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private procurar:Landroid/widget/ImageButton;

.field private tipoBuscaSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->indicadorIdLogradouro:I

    const-string v1, ""

    .line 47
    iput-object v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->logradouroSelecionado:Ljava/lang/String;

    .line 48
    iput v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->imoveisNaoLidos:I

    const/4 v0, 0x2

    .line 49
    iput v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->inverterRoteiro:I

    .line 50
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    return-void
.end method

.method static synthetic access$000(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;)Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object p0
.end method

.method static synthetic access$002(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object p1
.end method

.method static synthetic access$100(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;)Landroid/content/Intent;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->i:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$102(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->i:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$202(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->logradouroSelecionado:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->indicadorIdLogradouro:I

    return p1
.end method

.method static synthetic access$402(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->imoveisNaoLidos:I

    return p1
.end method

.method static synthetic access$502(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->inverterRoteiro:I

    return p1
.end method

.method private setUpWidgets()V
    .locals 4

    .line 119
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarLogradouros()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->logradouros:Ljava/util/ArrayList;

    const v0, 0x7f0700d4

    .line 120
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->parImparSpinner:Landroid/widget/Spinner;

    const v0, 0x7f0700c5

    .line 121
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->naoLidosOuTodosSpinner:Landroid/widget/Spinner;

    const v0, 0x7f0700bb

    .line 122
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->tipoBuscaSpinner:Landroid/widget/Spinner;

    const v0, 0x7f07009f

    .line 123
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->inverterRoteiroSpinner:Landroid/widget/Spinner;

    const v0, 0x7f0700a8

    .line 126
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->limpar:Landroid/widget/Button;

    .line 127
    new-instance v1, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$1;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$1;-><init>(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0700ac

    .line 135
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->lv:Landroid/widget/ListView;

    const v0, 0x7f0700de

    .line 136
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->procurar:Landroid/widget/ImageButton;

    .line 138
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$2;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$2;-><init>(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0700be

    .line 147
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->menu:Landroid/widget/Button;

    .line 148
    new-instance v1, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$3;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$3;-><init>(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->parOuImparArray:Ljava/util/ArrayList;

    const v2, 0x1090008

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 160
    iget-object v3, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->parImparSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 161
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->naoLidosOuTodosArray:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 164
    iget-object v3, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->naoLidosOuTodosSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 166
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->logradouros:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 168
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 169
    iget-object v3, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->tipoBuscaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 171
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->inverterRoteiroArray:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 174
    iget-object v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->inverterRoteiroSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 176
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->tipoBuscaSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$4;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$4;-><init>(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 191
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->parImparSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$5;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$5;-><init>(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 217
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->naoLidosOuTodosSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$6;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$6;-><init>(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 238
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->inverterRoteiroSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$7;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$7;-><init>(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method


# virtual methods
.method public buscaAutomatica()V
    .locals 3

    .line 357
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->pesquisarImoveis()V

    .line 358
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->listImovel:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 359
    new-instance v0, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->listImovel:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->adapter:Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    .line 360
    iget-object v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 363
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/FachadaException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISC"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/FachadaException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public limparFiltro()V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->tipoBuscaSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 260
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->naoLidosOuTodosSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 261
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->parImparSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 262
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->inverterRoteiroSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    const-string v0, "Selecione um logradouro..."

    .line 263
    iput-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->logradouroSelecionado:Ljava/lang/String;

    .line 264
    iput v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->imoveisNaoLidos:I

    .line 265
    iput v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->indicadorIdLogradouro:I

    .line 267
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->lv:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/br/ipad/isc/fachada/Fachada;->atualizarIdImovelSelecionadoSistemaParametros(Ljava/lang/Integer;)V

    .line 269
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v1, v1, v3}, Lcom/br/ipad/isc/fachada/Fachada;->ordenarImovelContaPorLogradouro(Ljava/lang/String;III)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->listImovel:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->atualizarPosicao()V

    .line 274
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->listImovel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 275
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicaoOriginal()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/bean/ImovelConta;->setPosicao(Ljava/lang/Integer;)V

    .line 276
    iget-object v3, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v3, v2}, Lcom/br/ipad/isc/fachada/Fachada;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarSistemaParametro()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    const-string v2, ""

    .line 280
    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setDescricaoLogradouroFiltrado(Ljava/lang/String;)V

    .line 281
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorParImparFiltrado(Ljava/lang/Integer;)V

    .line 282
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorInverterRoteiroFiltrado(Ljava/lang/Integer;)V

    .line 283
    iget-object v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->listImovel:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setQtdImoveis(Ljava/lang/Integer;)V

    .line 284
    iget-object v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/fachada/Fachada;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 285
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->resetarInstancia()V

    .line 286
    new-instance v0, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->listImovel:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->adapter:Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    .line 287
    iget-object v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 56
    invoke-super {p0, p1}, Lcom/br/ipad/isc/gui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->parOuImparArray:Ljava/util/ArrayList;

    const-string v0, "Todos"

    .line 58
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->parOuImparArray:Ljava/util/ArrayList;

    const-string v1, "Impar"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->parOuImparArray:Ljava/util/ArrayList;

    const-string v1, "Par"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->parOuImparArray:Ljava/util/ArrayList;

    const-string v1, "Alternado"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->inverterRoteiroArray:Ljava/util/ArrayList;

    const-string v1, "N\u00e3o"

    .line 64
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->inverterRoteiroArray:Ljava/util/ArrayList;

    const-string v1, "Sim"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->naoLidosOuTodosArray:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->naoLidosOuTodosArray:Ljava/util/ArrayList;

    const-string v0, "Lidos"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->naoLidosOuTodosArray:Ljava/util/ArrayList;

    const-string v0, "N\u00e3o Lidos"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-boolean p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->execute:Z

    if-eqz p1, :cond_4

    const p1, 0x7f0a0039

    .line 78
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->setContentView(I)V

    .line 79
    invoke-static {p0}, Lcom/br/ipad/isc/fachada/Fachada;->setContext(Landroid/content/Context;)V

    .line 81
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 82
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->setUpWidgets()V

    .line 84
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 87
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDescricaoLogradouroFiltrado()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDescricaoLogradouroFiltrado()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDescricaoLogradouroFiltrado()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Selecione um logradouro..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorParImparFiltrado()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorParImparFiltrado()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 94
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorParImparFiltrado()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 95
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorParImparFiltrado()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    .line 98
    :cond_1
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorLidoNaoLidoFiltrado()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 100
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorLidoNaoLidoFiltrado()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 101
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorLidoNaoLidoFiltrado()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 104
    :cond_2
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorInverterRoteiroFiltrado()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 106
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorInverterRoteiroFiltrado()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 107
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorInverterRoteiroFiltrado()Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 111
    :cond_3
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->preencherFiltroUtilizado()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->escreverLog(Ljava/lang/StringBuilder;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public pesquisarImoveis()V
    .locals 5

    .line 323
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->logradouroSelecionado:Ljava/lang/String;

    iget v2, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->indicadorIdLogradouro:I

    iget v3, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->imoveisNaoLidos:I

    iget v4, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->inverterRoteiro:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->ordenarImovelContaPorLogradouro(Ljava/lang/String;III)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->listImovel:Ljava/util/ArrayList;

    .line 325
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/fachada/Fachada;->atualizarIdImovelSelecionadoSistemaParametros(Ljava/lang/Integer;)V

    .line 329
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->listImovel:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->atualizarPosicao()V

    .line 333
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->listImovel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/br/ipad/isc/bean/ImovelConta;

    add-int/lit8 v1, v1, 0x1

    .line 335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/bean/ImovelConta;->setPosicao(Ljava/lang/Integer;)V

    .line 336
    iget-object v3, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v3, v2}, Lcom/br/ipad/isc/fachada/Fachada;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->listImovel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_1

    .line 341
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->listImovel:Ljava/util/ArrayList;

    .line 344
    :goto_1
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarSistemaParametro()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    .line 345
    iget-object v2, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->logradouroSelecionado:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setDescricaoLogradouroFiltrado(Ljava/lang/String;)V

    .line 346
    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->indicadorIdLogradouro:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorParImparFiltrado(Ljava/lang/Integer;)V

    .line 347
    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->imoveisNaoLidos:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorLidoNaoLidoFiltrado(Ljava/lang/Integer;)V

    .line 348
    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->inverterRoteiro:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorInverterRoteiroFiltrado(Ljava/lang/Integer;)V

    .line 349
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setQtdImoveis(Ljava/lang/Integer;)V

    .line 350
    iget-object v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/fachada/Fachada;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 351
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->resetarInstancia()V

    return-void
.end method

.method public preencherFiltroUtilizado()V
    .locals 6

    .line 293
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarSistemaParametro()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDescricaoLogradouroFiltrado()Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorParImparFiltrado()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 297
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorLidoNaoLidoFiltrado()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 298
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorInverterRoteiroFiltrado()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 295
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->ordenarImovelContaPorLogradouro(Ljava/lang/String;III)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->listImovel:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->listImovel:Ljava/util/ArrayList;

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->logradouros:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDescricaoLogradouroFiltrado()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 305
    iget-object v2, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->tipoBuscaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 308
    iget-object v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->parImparSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorParImparFiltrado()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 311
    iget-object v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->naoLidosOuTodosSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorLidoNaoLidoFiltrado()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 315
    iget-object v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->inverterRoteiroSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorInverterRoteiroFiltrado()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 317
    new-instance v0, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->listImovel:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->adapter:Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    .line 318
    iget-object v1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
