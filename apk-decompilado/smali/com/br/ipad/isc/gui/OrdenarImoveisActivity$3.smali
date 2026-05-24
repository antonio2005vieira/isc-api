.class Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$3;
.super Ljava/lang/Object;
.source "OrdenarImoveisActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 148
    iput-object p1, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 151
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;

    const-class v1, Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    iget-object v0, p0, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
