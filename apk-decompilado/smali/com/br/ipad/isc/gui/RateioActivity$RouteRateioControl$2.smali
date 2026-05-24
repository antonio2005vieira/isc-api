.class Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl$2;
.super Ljava/lang/Object;
.source "RateioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl$2;->this$1:Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 247
    iget-object p1, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl$2;->this$1:Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/br/ipad/isc/gui/RateioActivity;->access$602(Lcom/br/ipad/isc/gui/RateioActivity;Z)Z

    .line 248
    iget-object p1, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl$2;->this$1:Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    const-string p2, "ok"

    invoke-static {p1, p2}, Lcom/br/ipad/isc/gui/RateioActivity;->access$402(Lcom/br/ipad/isc/gui/RateioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    iget-object p1, p0, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl$2;->this$1:Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/RateioActivity$RouteRateioControl;->this$0:Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/RateioActivity;->access$800(Lcom/br/ipad/isc/gui/RateioActivity;)V

    return-void
.end method
