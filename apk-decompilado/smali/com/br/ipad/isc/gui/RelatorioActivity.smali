.class public Lcom/br/ipad/isc/gui/RelatorioActivity;
.super Lcom/br/ipad/isc/gui/BaseActivity;
.source "RelatorioActivity.java"


# instance fields
.field private btRelatorioPorQuadra:Landroid/widget/Button;

.field private percentualConcluido:Landroid/widget/LinearLayout;

.field private percentualImoveisVisitados:Landroid/widget/TextView;

.field private percentualNaoConcluido:Landroid/widget/LinearLayout;

.field private percentualVisitadosComAnormalidade:Landroid/widget/TextView;

.field private percentualVisitadosSemAnormalidade:Landroid/widget/TextView;

.field private totalImoveis:Landroid/widget/TextView;

.field private totalImoveisAVisitar:Landroid/widget/TextView;

.field private totalImoveisVisitados:Landroid/widget/TextView;

.field private totalImoveisVisitadosComAnormalidade:Landroid/widget/TextView;

.field private totalImoveisVisitadosSemAnormalidade:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 124
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/RelatorioActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v0, p0

    .line 33
    invoke-super/range {p0 .. p1}, Lcom/br/ipad/isc/gui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0a003a

    .line 34
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/gui/RelatorioActivity;->setContentView(I)V

    const v1, 0x7f070060

    .line 37
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/gui/RelatorioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/br/ipad/isc/gui/RelatorioActivity;->percentualConcluido:Landroid/widget/LinearLayout;

    .line 38
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x7f0700c6

    .line 40
    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/gui/RelatorioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/br/ipad/isc/gui/RelatorioActivity;->percentualNaoConcluido:Landroid/widget/LinearLayout;

    .line 41
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 45
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v3

    invoke-virtual {v3}, Lcom/br/ipad/isc/fachada/Fachada;->obterQuantidadeImoveis()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 46
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v4

    invoke-virtual {v4}, Lcom/br/ipad/isc/fachada/Fachada;->obterQuantidadeImoveisVisitados()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v5, v4

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    .line 47
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v5, v7

    int-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v11

    const v11, 0x7f070124

    .line 51
    invoke-virtual {v0, v11}, Lcom/br/ipad/isc/gui/RelatorioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v0, Lcom/br/ipad/isc/gui/RelatorioActivity;->totalImoveis:Landroid/widget/TextView;

    .line 52
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f070128

    .line 53
    invoke-virtual {v0, v11}, Lcom/br/ipad/isc/gui/RelatorioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v0, Lcom/br/ipad/isc/gui/RelatorioActivity;->totalImoveisVisitados:Landroid/widget/TextView;

    .line 54
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f070125

    .line 55
    invoke-virtual {v0, v11}, Lcom/br/ipad/isc/gui/RelatorioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v0, Lcom/br/ipad/isc/gui/RelatorioActivity;->totalImoveisAVisitar:Landroid/widget/TextView;

    .line 56
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v3, v4

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0700d6

    .line 58
    invoke-virtual {v0, v3}, Lcom/br/ipad/isc/gui/RelatorioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/br/ipad/isc/gui/RelatorioActivity;->percentualImoveisVisitados:Landroid/widget/TextView;

    const-string v11, "0%"

    const-string v12, "%"

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string v7, "%.1f"

    if-nez v4, :cond_0

    .line 63
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 64
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, 0x0

    .line 65
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 p1, v11

    goto :goto_0

    .line 69
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p1, v11

    new-array v11, v15, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v11, v14

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v9, v9, v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v14, v18, v9

    double-to-float v11, v14

    .line 71
    iput v11, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    double-to-float v1, v9

    .line 72
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 78
    :goto_0
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/fachada/Fachada;->obterQuantidadeImoveisVisitadosComAnormalidade()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v9, v1

    .line 79
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double v9, v9, v14

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v5

    const v2, 0x7f070129

    .line 81
    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/gui/RelatorioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/br/ipad/isc/gui/RelatorioActivity;->totalImoveisVisitadosComAnormalidade:Landroid/widget/TextView;

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0700d8

    .line 83
    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/gui/RelatorioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/br/ipad/isc/gui/RelatorioActivity;->percentualVisitadosComAnormalidade:Landroid/widget/TextView;

    if-nez v4, :cond_1

    move-object/from16 v5, p1

    .line 87
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    move-object/from16 v5, p1

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    const/4 v3, 0x0

    aput-object v14, v11, v3

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    sub-int v1, v4, v1

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    sub-double v9, v14, v9

    const v2, 0x7f07012b

    .line 97
    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/gui/RelatorioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/br/ipad/isc/gui/RelatorioActivity;->totalImoveisVisitadosSemAnormalidade:Landroid/widget/TextView;

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0700d9

    .line 99
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/gui/RelatorioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/br/ipad/isc/gui/RelatorioActivity;->percentualVisitadosSemAnormalidade:Landroid/widget/TextView;

    if-nez v4, :cond_2

    .line 102
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 104
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v3, 0x0

    aput-object v5, v4, v3

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const v1, 0x7f07004c

    .line 109
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/gui/RelatorioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/br/ipad/isc/gui/RelatorioActivity;->btRelatorioPorQuadra:Landroid/widget/Button;

    .line 111
    new-instance v2, Lcom/br/ipad/isc/gui/RelatorioActivity$1;

    invoke-direct {v2, v0}, Lcom/br/ipad/isc/gui/RelatorioActivity$1;-><init>(Lcom/br/ipad/isc/gui/RelatorioActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
