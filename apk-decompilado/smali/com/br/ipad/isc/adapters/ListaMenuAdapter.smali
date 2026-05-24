.class public Lcom/br/ipad/isc/adapters/ListaMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListaMenuAdapter.java"


# instance fields
.field private c:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private menu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/helpers/Menu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/helpers/Menu;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    const-string p2, "layout_inflater"

    .line 30
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

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
    .locals 7

    if-nez p2, :cond_0

    .line 53
    iget-object p2, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0a002f

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f070090

    .line 56
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f0700c8

    .line 59
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    iget-object v1, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    const v2, 0x7f0b00fb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0600a3

    .line 63
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    const v2, 0x7f0b00e8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f060088

    .line 65
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    const v2, 0x7f0b00f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f06008f

    .line 67
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    const v2, 0x7f0b00ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0600bb

    .line 69
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    const v2, 0x7f0b00f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0600c2

    .line 71
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 72
    :cond_5
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    const v2, 0x7f0b00e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f06008c

    .line 73
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 74
    :cond_6
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    const v2, 0x7f0b00f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f0600bf

    .line 75
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 76
    :cond_7
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    const v2, 0x7f0b00ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f06008b

    .line 77
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 78
    :cond_8
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    const v2, 0x7f0b0104

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0600c0

    if-eqz v0, :cond_9

    .line 79
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 80
    :cond_9
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    const v4, 0x7f0b0106

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v3, 0x7f0600c1

    if-eqz v0, :cond_a

    .line 81
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 82
    :cond_a
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    const v6, 0x7f0b00f4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f060057

    .line 83
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 84
    :cond_b
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    const v6, 0x7f0b0101

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 86
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorRotaMarcacaoAtiva()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0600be

    if-eqz v0, :cond_c

    .line 87
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 90
    :cond_c
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 93
    :cond_d
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    const v6, 0x7f0b0108

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f06008d

    .line 94
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 95
    :cond_e
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    const v6, 0x7f0b00ee

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f06008e

    .line 96
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 97
    :cond_f
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    const v6, 0x7f0b00ea

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f060089

    .line 98
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 99
    :cond_10
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    const v6, 0x7f0b00fd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x7f0600b8

    .line 100
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 101
    :cond_11
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 102
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 103
    :cond_12
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 104
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 105
    :cond_13
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    const v2, 0x7f0b010b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, 0x7f06009e

    .line 106
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 107
    :cond_14
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->c:Landroid/content/Context;

    const v2, 0x7f0b010d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const v0, 0x7f06009f

    .line 108
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_15
    const v0, 0x7f0600aa

    .line 110
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const p3, 0x7f07006f

    .line 113
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/helpers/Menu;->getLegenda()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/adapters/ListaMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
