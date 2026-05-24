.class Lcom/br/ipad/isc/gui/MenuActivity$6;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/MenuActivity;->exibirMensagem(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/MenuActivity;

.field final synthetic val$posicaoLista:I


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/MenuActivity;I)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$6;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    iput p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$6;->val$posicaoLista:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 649
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$6;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->onResume()V

    .line 650
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$6;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$300(Lcom/br/ipad/isc/gui/MenuActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$6;->val$posicaoLista:I

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
