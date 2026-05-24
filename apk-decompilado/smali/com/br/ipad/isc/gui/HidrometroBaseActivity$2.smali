.class Lcom/br/ipad/isc/gui/HidrometroBaseActivity$2;
.super Ljava/lang/Object;
.source "HidrometroBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    .line 272
    iput-object p1, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$2;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const-string p1, "ISC"

    .line 278
    iget-object v0, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$2;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {v0}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$2;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {v1}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 280
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_8

    const/16 p3, 0x43

    const/4 v2, 0x0

    if-ne p2, p3, :cond_1

    .line 286
    iget-object p3, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$2;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p3}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getTipoLigacao()I

    move-result p3

    if-ne p3, v1, :cond_0

    .line 287
    iget-object p3, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$2;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p3}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_1

    .line 288
    iget-object p3, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$2;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p3}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getSpinnerAnormalidade()Landroid/widget/Spinner;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 289
    sput-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadeAgua:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    goto :goto_0

    .line 292
    :cond_0
    iget-object p3, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$2;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p3}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_1

    .line 293
    iget-object p3, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$2;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p3}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getSpinnerAnormalidade()Landroid/widget/Spinner;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 294
    sput-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadePoco:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    .line 300
    :cond_1
    :goto_0
    :try_start_0
    iget-object p3, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$2;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p3}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getTipoLigacao()I

    move-result p3

    if-ne p3, v1, :cond_4

    .line 302
    iget-object p3, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$2;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p3}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_2

    .line 304
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p3

    iget-object v2, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$2;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    .line 306
    invoke-virtual {v2}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v3}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    invoke-virtual {p3, v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object p3

    check-cast p3, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    sput-object p3, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadeAgua:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    .line 308
    sget-object p3, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadeAgua:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    if-eqz p3, :cond_3

    .line 309
    sget-object p3, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->anormalidadeAdapter:Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;

    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadeAgua:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-virtual {p3, v2}, Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;->getPosition(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)I

    move-result p3

    goto :goto_1

    .line 312
    :cond_2
    sput-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadeAgua:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    :cond_3
    const/4 p3, 0x0

    .line 315
    :goto_1
    sget-object v2, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->anormalidadeSpinnerAgua:Landroid/widget/Spinner;

    invoke-virtual {v2, p3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 318
    :cond_4
    iget-object p3, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$2;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p3}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_5

    .line 320
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p3

    iget-object v2, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$2;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    .line 322
    invoke-virtual {v2}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getAnormalidadeInformada()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v3}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    invoke-virtual {p3, v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object p3

    check-cast p3, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    sput-object p3, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadePoco:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    .line 324
    sget-object p3, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadePoco:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    if-eqz p3, :cond_6

    .line 325
    sget-object p3, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->anormalidadeAdapter:Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;

    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadePoco:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-virtual {p3, v2}, Lcom/br/ipad/isc/adapters/AnormalidadeAdapter;->getPosition(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)I

    move-result p3

    goto :goto_2

    .line 328
    :cond_5
    sput-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->anormalidadePoco:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    :cond_6
    const/4 p3, 0x0

    .line 331
    :goto_2
    sget-object v2, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->anormalidadeSpinnerPoco:Landroid/widget/Spinner;

    invoke-virtual {v2, p3}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_3
    const/16 p3, 0x42

    if-ne p2, p3, :cond_7

    .line 336
    iget-object p2, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$2;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p2}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getParent()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcom/br/ipad/isc/gui/TabsActivity;

    .line 337
    invoke-virtual {p2}, Lcom/br/ipad/isc/gui/TabsActivity;->clickBotaoImprimir()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return v1

    :catch_0
    move-exception p2

    .line 346
    invoke-virtual {p2}, Lcom/br/ipad/isc/excecoes/FachadaException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p2}, Lcom/br/ipad/isc/excecoes/FachadaException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception p2

    .line 343
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_8
    :goto_4
    return v0
.end method
