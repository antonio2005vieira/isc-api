.class Lcom/br/ipad/isc/gui/TabsActivity$9;
.super Ljava/lang/Object;
.source "TabsActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/TabsActivity;->setKeylistener(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/TabsActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/TabsActivity;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$9;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_1

    .line 496
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 497
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$9;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 498
    sput-boolean p1, Lcom/br/ipad/isc/gui/TabsActivity;->chamarProximo:Z

    .line 499
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$9;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    iget-object p2, p1, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object p2

    sget-boolean p3, Lcom/br/ipad/isc/gui/TabsActivity;->chamarProximo:Z

    invoke-virtual {p1, p2, p3}, Lcom/br/ipad/isc/gui/TabsActivity;->chamaProximo(Ljava/lang/Integer;Z)V

    goto :goto_0

    .line 501
    :cond_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$9;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/TabsActivity;->clickBotaoImprimir()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
