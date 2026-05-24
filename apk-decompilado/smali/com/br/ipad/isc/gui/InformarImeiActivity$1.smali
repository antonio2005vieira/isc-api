.class Lcom/br/ipad/isc/gui/InformarImeiActivity$1;
.super Ljava/lang/Object;
.source "InformarImeiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/InformarImeiActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/InformarImeiActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/InformarImeiActivity;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/br/ipad/isc/gui/InformarImeiActivity$1;->this$0:Lcom/br/ipad/isc/gui/InformarImeiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 44
    iget-object p1, p0, Lcom/br/ipad/isc/gui/InformarImeiActivity$1;->this$0:Lcom/br/ipad/isc/gui/InformarImeiActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/InformarImeiActivity;->access$000(Lcom/br/ipad/isc/gui/InformarImeiActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 45
    iget-object p1, p0, Lcom/br/ipad/isc/gui/InformarImeiActivity$1;->this$0:Lcom/br/ipad/isc/gui/InformarImeiActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/InformarImeiActivity;->access$100(Lcom/br/ipad/isc/gui/InformarImeiActivity;)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/InformarImeiActivity$1;->this$0:Lcom/br/ipad/isc/gui/InformarImeiActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/InformarImeiActivity;->access$200(Lcom/br/ipad/isc/gui/InformarImeiActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "O imei deve conter 15 digitos."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
