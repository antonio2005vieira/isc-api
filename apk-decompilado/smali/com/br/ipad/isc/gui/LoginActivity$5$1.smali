.class Lcom/br/ipad/isc/gui/LoginActivity$5$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/LoginActivity$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/br/ipad/isc/gui/LoginActivity$5;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/LoginActivity$5;Landroid/widget/EditText;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$5$1;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$5;

    iput-object p2, p0, Lcom/br/ipad/isc/gui/LoginActivity$5$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 450
    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$5$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 452
    iget-object p2, p0, Lcom/br/ipad/isc/gui/LoginActivity$5$1;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$5;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/LoginActivity$5;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-static {p2}, Lcom/br/ipad/isc/gui/LoginActivity;->access$700(Lcom/br/ipad/isc/gui/LoginActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/fachada/Fachada;->validaSenhaApagar(Ljava/lang/String;)Z

    move-result p1

    const p2, 0x104000a

    const v0, 0x7f0b00e2

    if-eqz p1, :cond_0

    .line 453
    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$5$1;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$5;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/LoginActivity$5;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/LoginActivity;->access$700(Lcom/br/ipad/isc/gui/LoginActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/fachada/Fachada;->apagarBanco()V

    .line 454
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/LoginActivity$5$1;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$5;

    iget-object v1, v1, Lcom/br/ipad/isc/gui/LoginActivity$5;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/br/ipad/isc/gui/LoginActivity$5$1;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$5;

    iget-object v1, v1, Lcom/br/ipad/isc/gui/LoginActivity$5;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    .line 455
    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/LoginActivity$5$1;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$5;

    iget-object v0, v0, Lcom/br/ipad/isc/gui/LoginActivity$5;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const v1, 0x7f0b012c

    .line 456
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/LoginActivity$5$1;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$5;

    iget-object v0, v0, Lcom/br/ipad/isc/gui/LoginActivity$5;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    .line 457
    invoke-virtual {v0, p2}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/br/ipad/isc/gui/LoginActivity$5$1$2;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/LoginActivity$5$1$2;-><init>(Lcom/br/ipad/isc/gui/LoginActivity$5$1;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/br/ipad/isc/gui/LoginActivity$5$1$1;

    invoke-direct {p2, p0}, Lcom/br/ipad/isc/gui/LoginActivity$5$1$1;-><init>(Lcom/br/ipad/isc/gui/LoginActivity$5$1;)V

    .line 467
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 476
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 480
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/LoginActivity$5$1;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$5;

    iget-object v1, v1, Lcom/br/ipad/isc/gui/LoginActivity$5;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/br/ipad/isc/gui/LoginActivity$5$1;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$5;

    iget-object v1, v1, Lcom/br/ipad/isc/gui/LoginActivity$5;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    .line 481
    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/LoginActivity$5$1;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$5;

    iget-object v0, v0, Lcom/br/ipad/isc/gui/LoginActivity$5;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const v1, 0x7f0b0125

    .line 482
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/LoginActivity$5$1;->this$1:Lcom/br/ipad/isc/gui/LoginActivity$5;

    iget-object v0, v0, Lcom/br/ipad/isc/gui/LoginActivity$5;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    .line 483
    invoke-virtual {v0, p2}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/br/ipad/isc/gui/LoginActivity$5$1$3;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/LoginActivity$5$1$3;-><init>(Lcom/br/ipad/isc/gui/LoginActivity$5$1;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 488
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method
