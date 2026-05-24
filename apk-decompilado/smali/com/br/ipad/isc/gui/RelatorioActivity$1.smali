.class Lcom/br/ipad/isc/gui/RelatorioActivity$1;
.super Ljava/lang/Object;
.source "RelatorioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/RelatorioActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/RelatorioActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/RelatorioActivity;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/br/ipad/isc/gui/RelatorioActivity$1;->this$0:Lcom/br/ipad/isc/gui/RelatorioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 114
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/RelatorioActivity$1;->this$0:Lcom/br/ipad/isc/gui/RelatorioActivity;

    const-class v1, Lcom/br/ipad/isc/gui/RelatorioPorQuadraActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    iget-object v0, p0, Lcom/br/ipad/isc/gui/RelatorioActivity$1;->this$0:Lcom/br/ipad/isc/gui/RelatorioActivity;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/gui/RelatorioActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
