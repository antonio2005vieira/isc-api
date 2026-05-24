.class Lcom/br/ipad/isc/gui/TabsActivity$6;
.super Ljava/lang/Object;
.source "TabsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/TabsActivity;->setUpWidgets()V
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

    .line 430
    iput-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$6;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 438
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$6;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/TabsActivity;->validarFoto()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$6;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/TabsActivity;->validarFotoConsumoAnormalidade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 439
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$6;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    sget-boolean v0, Lcom/br/ipad/isc/gui/TabsActivity;->chamarProximo:Z

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/gui/TabsActivity;->validaCalcular(Z)V

    :cond_0
    return-void
.end method
