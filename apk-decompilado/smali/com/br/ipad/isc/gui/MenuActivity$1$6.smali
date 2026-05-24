.class Lcom/br/ipad/isc/gui/MenuActivity$1$6;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/MenuActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

.field final synthetic val$posicaoLista:I


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/MenuActivity$1;I)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$6;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

    iput p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$6;->val$posicaoLista:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 232
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$6;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$200(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    sget-object p2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/fachada/Fachada;->atualizarRoteiroOnlineOffline(Ljava/lang/Integer;)V

    .line 233
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$6;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$300(Lcom/br/ipad/isc/gui/MenuActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$6;->val$posicaoLista:I

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    .line 234
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$6;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$6;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v0, 0x7f0b012b

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$6;->val$posicaoLista:I

    const-string v1, ""

    invoke-static {p1, p2, v1, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->access$400(Lcom/br/ipad/isc/gui/MenuActivity;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
