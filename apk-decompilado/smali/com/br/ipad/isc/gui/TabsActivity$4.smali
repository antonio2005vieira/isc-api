.class Lcom/br/ipad/isc/gui/TabsActivity$4;
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

    .line 414
    iput-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$4;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    .line 416
    sput-boolean p1, Lcom/br/ipad/isc/gui/TabsActivity;->chamarProximo:Z

    .line 417
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$4;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    iget-object v0, p1, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v0

    sget-boolean v1, Lcom/br/ipad/isc/gui/TabsActivity;->chamarProximo:Z

    invoke-virtual {p1, v0, v1}, Lcom/br/ipad/isc/gui/TabsActivity;->chamaProximo(Ljava/lang/Integer;Z)V

    return-void
.end method
