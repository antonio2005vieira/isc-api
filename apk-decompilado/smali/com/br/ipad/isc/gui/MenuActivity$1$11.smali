.class Lcom/br/ipad/isc/gui/MenuActivity$1$11;
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

    .line 315
    iput-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$11;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

    iput p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$11;->val$posicaoLista:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 319
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$11;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$11;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p2}, Lcom/br/ipad/isc/gui/MenuActivity;->access$200(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p2

    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/fachada/Fachada;->atualizarIndicadorRotaMarcacaoAtiva(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$11;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

    iget-object v0, v0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v1, 0x7f0b0101

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$11;->val$posicaoLista:I

    invoke-static {p1, p2, v0, v1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$400(Lcom/br/ipad/isc/gui/MenuActivity;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
