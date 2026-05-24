.class Lcom/br/ipad/isc/gui/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/LoginActivity;->exibirMensagem(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/LoginActivity;

.field final synthetic val$fecharActivity:Z


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/LoginActivity;Z)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$1;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    iput-boolean p2, p0, Lcom/br/ipad/isc/gui/LoginActivity$1;->val$fecharActivity:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 64
    iget-boolean p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$1;->val$fecharActivity:Z

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$1;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/LoginActivity;->sair()V

    :cond_0
    return-void
.end method
