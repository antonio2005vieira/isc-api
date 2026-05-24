.class Lcom/br/ipad/isc/gui/MenuActivity$1$7;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/MenuActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/MenuActivity$1;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$7;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 267
    iget-object p1, p0, Lcom/br/ipad/isc/gui/MenuActivity$1$7;->this$1:Lcom/br/ipad/isc/gui/MenuActivity$1;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/MenuActivity$1;->this$0:Lcom/br/ipad/isc/gui/MenuActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->sairAplicacao(Landroid/content/Context;)V

    return-void
.end method
