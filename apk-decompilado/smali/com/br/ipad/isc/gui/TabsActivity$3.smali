.class Lcom/br/ipad/isc/gui/TabsActivity$3;
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

    .line 401
    iput-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$3;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 404
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity$3;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    const-class v1, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    iget-object v0, p0, Lcom/br/ipad/isc/gui/TabsActivity$3;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/gui/TabsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
