.class Lcom/br/ipad/isc/gui/SelecionarArquivoActivity$1;
.super Ljava/lang/Object;
.source "SelecionarArquivoActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 43
    iput-object p1, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity$1;->this$0:Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 47
    new-instance p1, Lcom/br/ipad/isc/io/ExportBancoDados;

    invoke-direct {p1}, Lcom/br/ipad/isc/io/ExportBancoDados;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/br/ipad/isc/io/ExportBancoDados;->importarBanco()V

    .line 49
    iget-object p1, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity$1;->this$0:Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Carregou!"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1
.end method
