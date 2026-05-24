.class Lcom/br/ipad/isc/gui/ListaImpressorasActivity$1;
.super Ljava/lang/Object;
.source "ListaImpressorasActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$1;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$1;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->access$000(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 82
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$1;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->access$100(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 83
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$1;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->access$202(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;)Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;

    .line 84
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$1;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->access$300(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$1;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->access$200(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$1;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
