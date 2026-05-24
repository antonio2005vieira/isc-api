.class Lcom/br/ipad/isc/gui/MenuActivity$10$2;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/MenuActivity$10;->onPostExecute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/br/ipad/isc/gui/MenuActivity$10;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/MenuActivity$10;)V
    .locals 0

    .line 898
    iput-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$10$2;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 901
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$10$2;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$10;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/MenuActivity$10;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/br/ipad/isc/gui/MenuActivity;->sucess:Z

    .line 902
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$10$2;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$10;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/MenuActivity$10;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$10$2;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$10;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/MenuActivity$10;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p2}, Lcom/br/ipad/isc/gui/MenuActivity;->access$600(Lcom/br/ipad/isc/gui/MenuActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/gui/MenuActivity;->enviarImoveisLidos(I)V

    return-void
.end method
