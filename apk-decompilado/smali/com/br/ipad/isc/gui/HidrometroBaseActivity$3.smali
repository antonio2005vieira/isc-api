.class Lcom/br/ipad/isc/gui/HidrometroBaseActivity$3;
.super Ljava/lang/Object;
.source "HidrometroBaseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->setUpWidgets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/HidrometroBaseActivity;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$3;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string p1, "ISC"

    .line 425
    :try_start_0
    iget-object p2, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$3;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p2}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getTipoLigacao()I

    move-result p2

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    .line 426
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p2

    iget-object p4, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$3;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    iget-object p4, p4, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->anormalidadeList:Ljava/util/ArrayList;

    .line 427
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/br/ipad/isc/fachada/Fachada;->buscarLeituraAnormalidadePorIdComUsoAtivo(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object p2

    sput-object p2, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadeAgua:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    goto :goto_0

    .line 429
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p2

    iget-object p4, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$3;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    iget-object p4, p4, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->anormalidadeList:Ljava/util/ArrayList;

    .line 430
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/br/ipad/isc/fachada/Fachada;->buscarLeituraAnormalidadePorIdComUsoAtivo(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object p2

    sput-object p2, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadePoco:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    .line 433
    :goto_0
    iget-object p2, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$3;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p2}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidade()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$3;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p2}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidade()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object p2

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_1

    .line 434
    iget-object p2, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$3;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p2}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object p2

    iget-object p3, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$3;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p3}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidade()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object p3

    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 436
    :cond_1
    iget-object p2, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$3;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p2}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 442
    invoke-virtual {p2}, Lcom/br/ipad/isc/excecoes/FachadaException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p2}, Lcom/br/ipad/isc/excecoes/FachadaException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p2

    .line 439
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
