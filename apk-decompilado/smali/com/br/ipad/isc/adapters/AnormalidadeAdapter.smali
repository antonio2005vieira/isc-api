.class public Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;
.super Landroid/widget/BaseAdapter;
.source "AnormalidadeAdapter.java"


# instance fields
.field private c:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private leituraAnormalidade:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/LeituraAnormalidade;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/LeituraAnormalidade;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;->c:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;->leituraAnormalidade:Ljava/util/ArrayList;

    .line 30
    new-instance p1, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {p1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    const/4 p2, 0x0

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setId(Ljava/lang/Integer;)V

    .line 32
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;->leituraAnormalidade:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 33
    iget-object p1, p0, Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;->c:Landroid/content/Context;

    const-string p2, "layout_inflater"

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;->leituraAnormalidade:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;->leituraAnormalidade:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)I
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;->leituraAnormalidade:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    .line 54
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    iget-object p1, p0, Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;->leituraAnormalidade:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 63
    new-instance p3, Landroid/util/DisplayMetrics;

    invoke-direct {p3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 64
    iget-object v0, p0, Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 65
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 66
    iget v0, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 67
    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-nez p2, :cond_0

    .line 70
    iget-object p2, p0, Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0a001c

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f07006e

    .line 72
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-nez p1, :cond_1

    const-string v0, "Selecione"

    .line 74
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;->leituraAnormalidade:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;->leituraAnormalidade:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getDescricaoAnormalidadeLeitura()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/16 v0, 0x145

    .line 79
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setWidth(I)V

    const/high16 v0, 0x41600000    # 14.0f

    .line 80
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v0, 0x10

    .line 81
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
