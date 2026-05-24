.class Lcom/br/ipad/isc/gui/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/LoginActivity;->setUpButtons()V
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

    .line 158
    iput-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$2;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 161
    iget-object p1, p0, Lcom/br/ipad/isc/gui/LoginActivity$2;->this$0:Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/LoginActivity;->sair()V

    return-void
.end method
