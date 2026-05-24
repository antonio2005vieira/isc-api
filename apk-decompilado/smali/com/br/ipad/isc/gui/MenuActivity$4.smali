.class Lcom/br/ipad/isc/gui/MenuActivity$4;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/MenuActivity;->perguntaSenha(Ljava/lang/String;Ljava/lang/String;S)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/MenuActivity;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$tipoFinalizacao:S


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/MenuActivity;Landroid/widget/EditText;S)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$4;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    iput-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$4;->val$input:Landroid/widget/EditText;

    iput-short p3, p0, Lcom/br/ipad/isc/gui/MenuActivity$4;->val$tipoFinalizacao:S

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 605
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$4;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 607
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$4;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p2}, Lcom/br/ipad/isc/gui/MenuActivity;->access$200(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/fachada/Fachada;->validaSenhaAdm(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 608
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$4;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const-class v0, Lcom/br/ipad/isc/gui/FinalizaArquivoActivty;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 609
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$4;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v0, 0x7f0b0083

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v1, p0, Lcom/br/ipad/isc/gui/MenuActivity$4;->val$tipoFinalizacao:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$4;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/gui/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 611
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$4;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->finish()V

    goto :goto_0

    .line 615
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$4;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$4;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v0, 0x7f0b00f1

    .line 616
    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$4;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v0, 0x7f0b0125

    .line 617
    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$4;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v0, 0x104000a

    .line 618
    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/br/ipad/isc/gui/MenuActivity$4$1;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/MenuActivity$4$1;-><init>(Lcom/br/ipad/isc/gui/MenuActivity$4;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 623
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method
