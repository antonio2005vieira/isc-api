.class Lcom/br/ipad/isc/gui/ListaImoveisActivity$2;
.super Ljava/lang/Object;
.source "ListaImoveisActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 117
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 120
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    const-class v1, Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
