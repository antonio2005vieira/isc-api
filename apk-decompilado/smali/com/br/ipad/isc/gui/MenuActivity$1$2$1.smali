.class Lcom/br/ipad/isc/gui/MenuActivity$1$2$1;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/MenuActivity$1$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/br/ipad/isc/gui/MenuActivity$1$2;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/MenuActivity$1$2;Landroid/widget/EditText;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$2$1;->this$2:Lcom/br/ipad/isc/gui/MenuActivity$1$2;

    iput-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$2$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 138
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$2$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 140
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$2$1;->this$2:Lcom/br/ipad/isc/gui/MenuActivity$1$2;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/MenuActivity$1$2;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p2}, Lcom/br/ipad/isc/gui/MenuActivity;->access$200(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/fachada/Fachada;->validaSenhaApagar(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$2$1;->this$2:Lcom/br/ipad/isc/gui/MenuActivity$1$2;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/MenuActivity$1$2;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->access$200(Lcom/br/ipad/isc/gui/MenuActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/fachada/Fachada;->apagarBanco()V

    .line 142
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$2$1;->this$2:Lcom/br/ipad/isc/gui/MenuActivity$1$2;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/MenuActivity$1$2;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const-class v0, Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$2$1;->this$2:Lcom/br/ipad/isc/gui/MenuActivity$1$2;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/MenuActivity$1$2;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/gui/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 144
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$2$1;->this$2:Lcom/br/ipad/isc/gui/MenuActivity$1$2;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/MenuActivity$1$2;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/MenuActivity;->finish()V

    goto :goto_0

    .line 148
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$2$1;->this$2:Lcom/br/ipad/isc/gui/MenuActivity$1$2;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/MenuActivity$1$2;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$2$1;->this$2:Lcom/br/ipad/isc/gui/MenuActivity$1$2;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/MenuActivity$1$2;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v0, 0x7f0b00e2

    .line 149
    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$2$1;->this$2:Lcom/br/ipad/isc/gui/MenuActivity$1$2;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/MenuActivity$1$2;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v0, 0x7f0b0125

    .line 150
    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$2$1;->this$2:Lcom/br/ipad/isc/gui/MenuActivity$1$2;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/MenuActivity$1$2;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const v0, 0x104000a

    .line 151
    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/gui/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/br/ipad/isc/gui/MenuActivity$1$2$1$1;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/MenuActivity$1$2$1$1;-><init>(Lcom/br/ipad/isc/gui/MenuActivity$1$2$1;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method
