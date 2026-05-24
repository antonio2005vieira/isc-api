.class Lcom/br/ipad/isc/gui/MenuActivity$1;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/MenuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/MenuActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/MenuActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 86
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/br/ipad/isc/bean/helpers/Menu;

    invoke-static {p1, p2}, Lcom/br/ipad/isc/gui/MenuActivity;->access$002(Lcom/br/ipad/isc/gui/MenuActivity;Lcom/br/ipad/isc/bean/helpers/Menu;)Lcom/br/ipad/isc/bean/helpers/Menu;

    .line 88
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const p4, 0x7f0b00f7

    invoke-virtual {p2, p4}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const-class p3, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/gui/MenuActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const p4, 0x7f0b00fb

    invoke-virtual {p2, p4}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$200(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p3

    .line 97
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p4

    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIdImovelSelecionado()Ljava/lang/Integer;

    move-result-object p4

    if-nez p4, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p4

    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIdImovelSelecionado()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 97
    :goto_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 98
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 96
    invoke-virtual {p3, p4, p2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelContaPosicao(Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/br/ipad/isc/gui/MenuActivity;->access$102(Lcom/br/ipad/isc/gui/MenuActivity;Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/bean/ImovelConta;

    .line 100
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const-class p3, Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p2}, Lcom/br/ipad/isc/gui/MenuActivity;->access$100(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p2

    const-string p3, "imovel"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 102
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/gui/MenuActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 104
    :cond_2
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const p5, 0x7f0b00e8

    invoke-virtual {p4, p5}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 106
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const-class p3, Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/gui/MenuActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 110
    :cond_3
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const p5, 0x7f0b00f0

    invoke-virtual {p4, p5}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 112
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->finalizarArquivoMenu()V

    goto/16 :goto_3

    .line 115
    :cond_4
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const p5, 0x7f0b00e2

    invoke-virtual {p4, p5}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const p4, 0x7f0b0111

    const p5, 0x7f0b0127

    if-eqz p1, :cond_5

    .line 116
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const p3, 0x7f0b00e4

    .line 117
    invoke-virtual {p2, p3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    .line 118
    invoke-virtual {p2, p5}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/br/ipad/isc/gui/MenuActivity$1$2;

    invoke-direct {p3, p0}, Lcom/br/ipad/isc/gui/MenuActivity$1$2;-><init>(Lcom/br/ipad/isc/gui/MenuActivity$1;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    .line 175
    invoke-virtual {p2, p4}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/br/ipad/isc/gui/MenuActivity$1$1;

    invoke-direct {p3, p0}, Lcom/br/ipad/isc/gui/MenuActivity$1$1;-><init>(Lcom/br/ipad/isc/gui/MenuActivity$1;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3

    .line 186
    :cond_5
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v1, 0x7f0b00ec

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 188
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p1, p3}, Lcom/br/ipad/isc/gui/MenuActivity;->enviarImoveisLidos(I)V

    goto/16 :goto_3

    .line 191
    :cond_6
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v1, 0x7f0b00f4

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f0b0083

    if-eqz p1, :cond_7

    .line 194
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->validarFotosTransmitidas()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/gui/MenuActivity;->verificaImoveisNaolidos(Z)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->verificarImoveisRevisitar()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 196
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const-class p3, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "3"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/gui/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->finish()V

    goto/16 :goto_3

    .line 202
    :cond_7
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v2, 0x7f0b0104

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    .line 203
    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v2, 0x7f0b0106

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto/16 :goto_2

    .line 246
    :cond_8
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v2, 0x7f0b00f1

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x2

    if-eqz p1, :cond_9

    .line 248
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p1, v2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const p4, 0x7f0b00e6

    invoke-virtual {p3, p4}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, v1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$500(Lcom/br/ipad/isc/gui/MenuActivity;Ljava/lang/String;Ljava/lang/String;S)V

    goto/16 :goto_3

    .line 250
    :cond_9
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v3, 0x7f0b00ff

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 252
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const-class p3, Lcom/br/ipad/isc/gui/RelatorioActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/gui/MenuActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 255
    :cond_a
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v3, 0x7f0b0108

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 258
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 259
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p2, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 260
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const p3, 0x7f0b00e7

    invoke-virtual {p2, p3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 262
    new-instance p2, Lcom/br/ipad/isc/gui/MenuActivity$1$7;

    invoke-direct {p2, p0}, Lcom/br/ipad/isc/gui/MenuActivity$1$7;-><init>(Lcom/br/ipad/isc/gui/MenuActivity$1;)V

    invoke-virtual {p1, p5, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 274
    new-instance p2, Lcom/br/ipad/isc/gui/MenuActivity$1$8;

    invoke-direct {p2, p0}, Lcom/br/ipad/isc/gui/MenuActivity$1$8;-><init>(Lcom/br/ipad/isc/gui/MenuActivity$1;)V

    invoke-virtual {p1, p4, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 280
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3

    .line 282
    :cond_b
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v3, 0x7f0b0101

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, ""

    if-eqz p1, :cond_d

    .line 285
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorRotaMarcacaoAtiva()Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 287
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 289
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v0, 0x7f0b011d

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 291
    new-instance p2, Lcom/br/ipad/isc/gui/MenuActivity$1$9;

    invoke-direct {p2, p0, p3}, Lcom/br/ipad/isc/gui/MenuActivity$1$9;-><init>(Lcom/br/ipad/isc/gui/MenuActivity$1;I)V

    invoke-virtual {p1, p5, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 300
    new-instance p2, Lcom/br/ipad/isc/gui/MenuActivity$1$10;

    invoke-direct {p2, p0}, Lcom/br/ipad/isc/gui/MenuActivity$1$10;-><init>(Lcom/br/ipad/isc/gui/MenuActivity$1;)V

    invoke-virtual {p1, p4, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 306
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3

    .line 311
    :cond_c
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 312
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 313
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v0, 0x7f0b011b

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 315
    new-instance p2, Lcom/br/ipad/isc/gui/MenuActivity$1$11;

    invoke-direct {p2, p0, p3}, Lcom/br/ipad/isc/gui/MenuActivity$1$11;-><init>(Lcom/br/ipad/isc/gui/MenuActivity$1;I)V

    invoke-virtual {p1, p5, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    new-instance p2, Lcom/br/ipad/isc/gui/MenuActivity$1$12;

    invoke-direct {p2, p0}, Lcom/br/ipad/isc/gui/MenuActivity$1$12;-><init>(Lcom/br/ipad/isc/gui/MenuActivity$1;)V

    invoke-virtual {p1, p4, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 331
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3

    .line 338
    :cond_d
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v4, 0x7f0b00ee

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v3, 0x7f0b0035

    const/4 v5, 0x0

    if-eqz p1, :cond_e

    .line 339
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 340
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 341
    new-instance p2, Lcom/br/ipad/isc/io/ArquivoRetorno;

    invoke-direct {p2}, Lcom/br/ipad/isc/io/ArquivoRetorno;-><init>()V

    .line 342
    invoke-virtual {p2, v5}, Lcom/br/ipad/isc/io/ArquivoRetorno;->getCaminhoArquivoRetorno(S)Ljava/lang/String;

    move-result-object p2

    .line 343
    new-instance p4, Lcom/br/ipad/isc/io/ExportBancoDados;

    invoke-direct {p4}, Lcom/br/ipad/isc/io/ExportBancoDados;-><init>()V

    invoke-virtual {p4, p1, p2}, Lcom/br/ipad/isc/io/ExportBancoDados;->exportarBancoNovoNome(Ljava/lang/Long;Ljava/lang/String;)V

    .line 345
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p1, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2, p3}, Lcom/br/ipad/isc/gui/MenuActivity;->access$400(Lcom/br/ipad/isc/gui/MenuActivity;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 346
    :cond_e
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object p1

    iget-object v6, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v7, 0x7f0b00ea

    invoke-virtual {v6, v7}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 347
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const-class p3, Lcom/br/ipad/isc/gui/ConstrasteActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/gui/MenuActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 349
    :cond_f
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object p1

    iget-object v6, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v7, 0x7f0b00fd

    invoke-virtual {v6, v7}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 350
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const-class p3, Lcom/br/ipad/isc/gui/OrdenarImoveisActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/gui/MenuActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 353
    :cond_10
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object p1

    iget-object v6, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {v6, v4}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 354
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 355
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 356
    new-instance p2, Lcom/br/ipad/isc/io/ArquivoRetorno;

    invoke-direct {p2}, Lcom/br/ipad/isc/io/ArquivoRetorno;-><init>()V

    .line 357
    invoke-virtual {p2, v5}, Lcom/br/ipad/isc/io/ArquivoRetorno;->getCaminhoArquivoRetorno(S)Ljava/lang/String;

    move-result-object p2

    .line 358
    new-instance p4, Lcom/br/ipad/isc/io/ExportBancoDados;

    invoke-direct {p4}, Lcom/br/ipad/isc/io/ExportBancoDados;-><init>()V

    invoke-virtual {p4, p1, p2}, Lcom/br/ipad/isc/io/ExportBancoDados;->exportarBancoNovoNome(Ljava/lang/Long;Ljava/lang/String;)V

    .line 359
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p1, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2, p3}, Lcom/br/ipad/isc/gui/MenuActivity;->access$400(Lcom/br/ipad/isc/gui/MenuActivity;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 360
    :cond_11
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v3, 0x7f0b00f6

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 363
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p3

    invoke-virtual {p3}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelContasNaoLidos()Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p1, Lcom/br/ipad/isc/gui/MenuActivity;->imoveisNaoLidos:Ljava/util/ArrayList;

    .line 364
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/MenuActivity;->imoveisNaoLidos:Ljava/util/ArrayList;

    if-eqz p1, :cond_12

    const/4 p1, 0x0

    .line 365
    :goto_1
    iget-object p3, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    iget-object p3, p3, Lcom/br/ipad/isc/gui/MenuActivity;->imoveisNaoLidos:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_12

    .line 366
    iget-object p3, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    iget-object p3, p3, Lcom/br/ipad/isc/gui/MenuActivity;->imoveisNaoLidos:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 368
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p4

    .line 369
    invoke-virtual {p3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p3

    new-instance p5, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {p5}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    invoke-virtual {p4, p3, p5}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object p3

    check-cast p3, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 371
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p4, p3, p5, v1}, Lcom/br/ipad/isc/fachada/Fachada;->calcularContaTeste(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 375
    :cond_12
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const-class p3, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "0"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/gui/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 378
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->finish()V

    goto/16 :goto_3

    .line 379
    :cond_13
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v0, 0x7f0b010b

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    .line 380
    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$000(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/bean/helpers/Menu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/Menu;->getNome()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v0, 0x7f0b010d

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 383
    :cond_14
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorModeloImpressora()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    const p2, 0x7f0b010a

    if-eqz p1, :cond_15

    .line 385
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    .line 386
    invoke-virtual {v0, p2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    .line 387
    invoke-virtual {p2, p5}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p5, Lcom/br/ipad/isc/gui/MenuActivity$1$14;

    invoke-direct {p5, p0, p3}, Lcom/br/ipad/isc/gui/MenuActivity$1$14;-><init>(Lcom/br/ipad/isc/gui/MenuActivity$1;I)V

    invoke-virtual {p1, p2, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    .line 398
    invoke-virtual {p2, p4}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/br/ipad/isc/gui/MenuActivity$1$13;

    invoke-direct {p3, p0}, Lcom/br/ipad/isc/gui/MenuActivity$1$13;-><init>(Lcom/br/ipad/isc/gui/MenuActivity$1;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 404
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3

    .line 407
    :cond_15
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    .line 408
    invoke-virtual {v0, p2}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    .line 409
    invoke-virtual {p2, p5}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p5, Lcom/br/ipad/isc/gui/MenuActivity$1$16;

    invoke-direct {p5, p0, p3}, Lcom/br/ipad/isc/gui/MenuActivity$1$16;-><init>(Lcom/br/ipad/isc/gui/MenuActivity$1;I)V

    invoke-virtual {p1, p2, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    .line 420
    invoke-virtual {p2, p4}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/br/ipad/isc/gui/MenuActivity$1$15;

    invoke-direct {p3, p0}, Lcom/br/ipad/isc/gui/MenuActivity$1$15;-><init>(Lcom/br/ipad/isc/gui/MenuActivity$1;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 426
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3

    .line 205
    :cond_16
    :goto_2
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorTransmissaoOffline()Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 207
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v0, 0x7f0b010f

    .line 208
    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    .line 209
    invoke-virtual {p2, p5}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p5, Lcom/br/ipad/isc/gui/MenuActivity$1$4;

    invoke-direct {p5, p0, p3}, Lcom/br/ipad/isc/gui/MenuActivity$1$4;-><init>(Lcom/br/ipad/isc/gui/MenuActivity$1;I)V

    invoke-virtual {p1, p2, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    .line 218
    invoke-virtual {p2, p4}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/br/ipad/isc/gui/MenuActivity$1$3;

    invoke-direct {p3, p0}, Lcom/br/ipad/isc/gui/MenuActivity$1$3;-><init>(Lcom/br/ipad/isc/gui/MenuActivity$1;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 227
    :cond_17
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v0, 0x7f0b0110

    .line 228
    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    .line 229
    invoke-virtual {p2, p5}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p5, Lcom/br/ipad/isc/gui/MenuActivity$1$6;

    invoke-direct {p5, p0, p3}, Lcom/br/ipad/isc/gui/MenuActivity$1$6;-><init>(Lcom/br/ipad/isc/gui/MenuActivity$1;I)V

    invoke-virtual {p1, p2, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    .line 238
    invoke-virtual {p2, p4}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/br/ipad/isc/gui/MenuActivity$1$5;

    invoke-direct {p3, p0}, Lcom/br/ipad/isc/gui/MenuActivity$1$5;-><init>(Lcom/br/ipad/isc/gui/MenuActivity$1;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_18
    :goto_3
    return-void
.end method
