.class Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2$1;
.super Ljava/lang/Object;
.source "ListaImpressorasActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2$1;->this$1:Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2$1;->this$1:Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->finish()V

    return-void
.end method
