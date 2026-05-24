.class Lcom/br/ipad/isc/gui/TabsActivity$12;
.super Ljava/lang/Object;
.source "TabsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/TabsActivity;->setUpImprimir()V
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

    .line 1160
    iput-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$12;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1163
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$12;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/TabsActivity;->calcularCondominio:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1164
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$12;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/TabsActivity;->access$100(Lcom/br/ipad/isc/gui/TabsActivity;)V

    .line 1165
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$12;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir2ViaCondominio:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1166
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$12;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir2ViaCondominio:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method
