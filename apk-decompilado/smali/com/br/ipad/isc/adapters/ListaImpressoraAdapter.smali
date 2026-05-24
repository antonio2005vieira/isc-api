.class public Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListaImpressoraAdapter.java"


# instance fields
.field private c:Landroid/content/Context;

.field private impressoras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/helpers/Impressora;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/helpers/Impressora;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;->c:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;->impressoras:Ljava/util/ArrayList;

    const-string p2, "layout_inflater"

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;->impressoras:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;->impressoras:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 48
    iget-object p2, p0, Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0a002e

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0700ca

    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;->impressoras:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Impressora;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Impressora;->getBluetoothName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f070079

    .line 53
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;->impressoras:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Impressora;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Impressora;->getBluetoothAdress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
