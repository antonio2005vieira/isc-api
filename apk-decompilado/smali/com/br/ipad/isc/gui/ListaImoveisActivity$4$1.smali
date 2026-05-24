.class Lcom/br/ipad/isc/gui/ListaImoveisActivity$4$1;
.super Ljava/lang/Object;
.source "ListaImoveisActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4$1;->this$1:Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 312
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4$1;->this$1:Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$800(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
