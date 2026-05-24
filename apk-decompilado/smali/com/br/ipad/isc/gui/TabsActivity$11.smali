.class Lcom/br/ipad/isc/gui/TabsActivity$11;
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

    .line 1145
    iput-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$11;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1148
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$11;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/TabsActivity;->calcular:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    const-string p1, "ISC"

    const-string v1, "Inicio OnClick Imprimir"

    .line 1149
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-object v1, p0, Lcom/br/ipad/isc/gui/TabsActivity$11;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-virtual {v1}, Lcom/br/ipad/isc/gui/TabsActivity;->clickBotaoImprimir()V

    const-string v1, "Fim OnClick Imprimir"

    .line 1151
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$11;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1153
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$11;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/TabsActivity;->imprimir:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method
