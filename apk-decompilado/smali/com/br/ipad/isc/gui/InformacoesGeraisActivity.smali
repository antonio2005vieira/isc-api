.class public Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;
.super Lcom/br/ipad/isc/gui/BaseActivity;
.source "InformacoesGeraisActivity.java"


# instance fields
.field colCategorias:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/CategoriaSubcategoria;",
            ">;"
        }
    .end annotation
.end field

.field private endereco:Landroid/widget/TextView;

.field private imovel:Lcom/br/ipad/isc/bean/ImovelConta;

.field private inscricao:Landroid/widget/TextView;

.field private matricula:Landroid/widget/TextView;

.field private sequencial:Landroid/widget/TextView;

.field private tabelaCategorias:Landroid/widget/TableLayout;

.field private usuario:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/BaseActivity;-><init>()V

    return-void
.end method

.method private setUpWidgets()V
    .locals 14

    const v0, 0x7f07010c

    .line 51
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->tabelaCategorias:Landroid/widget/TableLayout;

    .line 53
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0700a6

    .line 56
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700a7

    .line 57
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f070078

    .line 59
    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->endereco:Landroid/widget/TextView;

    .line 60
    iget-object v3, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getEndereco()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x28

    invoke-static {v4, v3}, Lcom/br/ipad/isc/util/Util;->quebraLinhaTexto(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f070132

    .line 62
    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->usuario:Landroid/widget/TextView;

    .line 63
    iget-object v3, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getNomeUsuario()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0700bc

    .line 65
    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->matricula:Landroid/widget/TextView;

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f07009e

    .line 68
    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->inscricao:Landroid/widget/TextView;

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getSequencialRota()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    const v2, 0x7f0700fd

    .line 72
    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->sequencial:Landroid/widget/TextView;

    .line 73
    iget-object v3, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getSequencialRota()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v2

    iget-object v3, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoAgua(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    iget-object v2, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigEsgoto()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/fachada/Fachada;->getDescricaoSitLigacaoAgua(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 80
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->colCategorias:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    .line 84
    new-instance v2, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 85
    iget-object v3, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->tabelaCategorias:Landroid/widget/TableLayout;

    invoke-virtual {v3, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 88
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x41400000    # 12.0f

    .line 89
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0x11

    .line 90
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v7, -0x1000000

    .line 91
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v8, 0x22

    .line 92
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setHeight(I)V

    const/16 v8, 0x14

    .line 93
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setWidth(I)V

    const-string v8, "d6e8f4"

    const/16 v9, 0x10

    .line 94
    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 95
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getQtdEconomiasSubcategoria()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 99
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const v12, 0x7f0c0168

    invoke-direct {v3, v10, v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 101
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 102
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v10, 0x23

    .line 104
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setHeight(I)V

    .line 105
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getDescricaoAbreviadaCategoria()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 109
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v3, v13, v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 111
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 112
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v5, v7

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 114
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setHeight(I)V

    .line 115
    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getDescricaoAbreviadaSubcategoria()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 120
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 121
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    const/16 v5, 0xf

    const/4 v6, 0x0

    .line 122
    invoke-virtual {v2, v3, v6, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const-string v3, "#afb9c2"

    .line 123
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/4 v3, 0x1

    .line 124
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 125
    iget-object v3, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->tabelaCategorias:Landroid/widget/TableLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Lcom/br/ipad/isc/gui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    iget-boolean p1, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->execute:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0a0028

    .line 38
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "imovel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/br/ipad/isc/bean/ImovelConta;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 41
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 42
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p1, v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object p1

    check-cast p1, Lcom/br/ipad/isc/bean/ImovelConta;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    if-eqz p1, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/InformacoesGeraisActivity;->setUpWidgets()V

    :cond_0
    return-void
.end method
