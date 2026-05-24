.class Lcom/br/ipad/isc/gui/HidrometroBaseActivity$1;
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

    .line 180
    iput-object p1, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$1;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    .line 185
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$1;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getParent()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/br/ipad/isc/gui/TabsActivity;

    .line 189
    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/TabsActivity;->clickBotaoImprimir()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$1;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getLeitura()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 192
    iget-object p1, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$1;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getLeitura()Landroid/widget/EditText;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 193
    iget-object p1, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$1;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getLeitura()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 195
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getNumber()C

    move-result p1

    .line 196
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 197
    iget-object p2, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$1;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p2}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getLeitura()Landroid/widget/EditText;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object p1, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$1;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getLeitura()Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/HidrometroBaseActivity$1;->this$0:Lcom/br/ipad/isc/gui/HidrometroBaseActivity;

    invoke-virtual {p2}, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->getLeitura()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
