.class Lcom/br/ipad/isc/gui/SelecionarArquivoActivity$3;
.super Ljava/lang/Object;
.source "SelecionarArquivoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity$3;->this$0:Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 88
    iget-object p1, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity$3;->this$0:Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->access$002(Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity$3;->this$0:Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;

    const-class p3, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    iget-object p2, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity$3;->this$0:Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;

    invoke-static {p2}, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->access$000(Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "offline"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object p2, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity$3;->this$0:Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->startActivity(Landroid/content/Intent;)V

    .line 95
    iget-object p1, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity$3;->this$0:Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->finish()V

    return-void
.end method
