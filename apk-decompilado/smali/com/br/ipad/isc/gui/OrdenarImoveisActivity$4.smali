.class Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$4;
.super Ljava/lang/Object;
.source "OrdenarImoveisActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->setUpWidgets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;

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

    .line 181
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, ""

    .line 182
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 183
    iget-object p2, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;

    invoke-static {p2, p1}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->access$202(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->buscaAutomatica()V

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
