.class Lcom/br/ipad/isc/gui/MenuActivity$3;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/MenuActivity;->verificaImoveisNaolidos(Z)Z
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

    .line 468
    iput-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$3;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 471
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$3;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    const-class v0, Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 472
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$3;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/MenuActivity;->imoveisNaoLidos:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/Serializable;

    const-string v0, "imovel"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 473
    iget-object p2, p0, Lcom/br/ipad/isc/gui/MenuActivity$3;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/gui/MenuActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
