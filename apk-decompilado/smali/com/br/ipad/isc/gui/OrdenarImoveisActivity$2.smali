.class Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$2;
.super Ljava/lang/Object;
.source "OrdenarImoveisActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 138
    iput-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$2;->this$0:Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;

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

    .line 140
    iget-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$2;->this$0:Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-static {p1, p2}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->access$002(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/bean/ImovelConta;

    .line 141
    iget-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$2;->this$0:Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object p4, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$2;->this$0:Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;

    const-class p5, Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {p2, p4, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p2}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->access$102(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 142
    iget-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$2;->this$0:Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->access$100(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "position"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    iget-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$2;->this$0:Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->access$100(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$2;->this$0:Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;

    invoke-static {p2}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->access$000(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p2

    const-string p3, "imovel"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 144
    iget-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$2;->this$0:Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->access$100(Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
