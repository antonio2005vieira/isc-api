.class Lcom/br/ipad/isc/gui/TabsActivity$10;
.super Ljava/lang/Object;
.source "TabsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/TabsActivity;->setUpImprimirCaern()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/TabsActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/TabsActivity;)V
    .locals 0

    .line 1118
    iput-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$10;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1121
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$10;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/TabsActivity;->clickBotaoImprimir()V

    return-void
.end method
