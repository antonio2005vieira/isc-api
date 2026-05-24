.class Lcom/br/ipad/isc/gui/ListaImoveisActivity$1;
.super Ljava/lang/Object;
.source "ListaImoveisActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/ListaImoveisActivity;->setUpWidgets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$1;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 102
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$1;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-static {p1, p2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$002(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/bean/ImovelConta;

    .line 103
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$1;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$1;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    const-class p4, Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$102(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 104
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$1;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$100(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$1;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$000(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p2

    const-string p3, "imovel"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 105
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$1;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$100(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
