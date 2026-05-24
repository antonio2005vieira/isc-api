.class Lcom/br/ipad/isc/gui/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/LoginActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/LoginActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/LoginActivity;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$5;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 437
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/LoginActivity$5;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 439
    iget-object p2, p0, Lcom/br/ipad/isc/gui/LoginActivity$5;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const v0, 0x7f0b00e2

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 440
    iget-object p2, p0, Lcom/br/ipad/isc/gui/LoginActivity$5;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const v0, 0x7f0b0124

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 442
    new-instance p2, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/LoginActivity$5;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-virtual {v0}, Lcom/br/ipad/isc/gui/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x21

    .line 443
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 444
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 445
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 447
    iget-object v0, p0, Lcom/br/ipad/isc/gui/LoginActivity$5;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/br/ipad/isc/gui/LoginActivity$5$1;

    invoke-direct {v1, p0, p2}, Lcom/br/ipad/isc/gui/LoginActivity$5$1;-><init>(Lcom/br/ipad/isc/gui/LoginActivity$5;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 495
    iget-object p2, p0, Lcom/br/ipad/isc/gui/LoginActivity$5;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    const v0, 0x7f0b008d

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/gui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/br/ipad/isc/gui/LoginActivity$5$2;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/LoginActivity$5$2;-><init>(Lcom/br/ipad/isc/gui/LoginActivity$5;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 499
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
