.class public Lcom/br/ipad/isc/gui/RelatorioPorQuadraActivity;
.super Lcom/br/ipad/isc/gui/BaseActivity;
.source "RelatorioPorQuadraActivity.java"


# instance fields
.field private adapter:Lcom/br/ipad/isc/adapters/ListaRelatorioPorQuadraAdapter;

.field private arrayListIdsQuadras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fachada:Lcom/br/ipad/isc/fachada/Fachada;

.field private lv:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/RelatorioPorQuadraActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lcom/br/ipad/isc/gui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    iget-boolean p1, p0, Lcom/br/ipad/isc/gui/RelatorioPorQuadraActivity;->execute:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0a0030

    .line 28
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/RelatorioPorQuadraActivity;->setContentView(I)V

    .line 30
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/gui/RelatorioPorQuadraActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    const p1, 0x7f0700b0

    .line 32
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/RelatorioPorQuadraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/RelatorioPorQuadraActivity;->lv:Landroid/widget/ListView;

    .line 34
    new-instance v0, Lcom/br/ipad/isc/gui/RelatorioPorQuadraActivity$1;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/RelatorioPorQuadraActivity$1;-><init>(Lcom/br/ipad/isc/gui/RelatorioPorQuadraActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 7

    .line 51
    invoke-super {p0}, Lcom/br/ipad/isc/gui/BaseActivity;->onResume()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iget-object v1, p0, Lcom/br/ipad/isc/gui/RelatorioPorQuadraActivity;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarQuadras()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/br/ipad/isc/gui/RelatorioPorQuadraActivity;->arrayListIdsQuadras:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 57
    :goto_0
    iget-object v2, p0, Lcom/br/ipad/isc/gui/RelatorioPorQuadraActivity;->arrayListIdsQuadras:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 59
    new-instance v2, Lcom/br/ipad/isc/bean/helpers/RelatorioPorQuadra;

    .line 60
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v3

    iget-object v4, p0, Lcom/br/ipad/isc/gui/RelatorioPorQuadraActivity;->arrayListIdsQuadras:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->obterQuantidadeImoveisPorQuadra(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    .line 61
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v4

    iget-object v5, p0, Lcom/br/ipad/isc/gui/RelatorioPorQuadraActivity;->arrayListIdsQuadras:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->obterQuantidadeImoveisVisitadosPorQuadra(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    .line 62
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v5

    iget-object v6, p0, Lcom/br/ipad/isc/gui/RelatorioPorQuadraActivity;->arrayListIdsQuadras:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/fachada/Fachada;->obterQuantidadeImoveisNaoVisitadosPorQuadra(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/br/ipad/isc/gui/RelatorioPorQuadraActivity;->arrayListIdsQuadras:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/br/ipad/isc/bean/helpers/RelatorioPorQuadra;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 65
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    new-instance v1, Lcom/br/ipad/isc/adapters/ListaRelatorioPorQuadraAdapter;

    invoke-direct {v1, p0, v0}, Lcom/br/ipad/isc/adapters/ListaRelatorioPorQuadraAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/br/ipad/isc/gui/RelatorioPorQuadraActivity;->adapter:Lcom/br/ipad/isc/adapters/ListaRelatorioPorQuadraAdapter;

    .line 71
    iget-object v0, p0, Lcom/br/ipad/isc/gui/RelatorioPorQuadraActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
