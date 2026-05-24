.class Lcom/br/ipad/isc/gui/ConstrasteActivity$1;
.super Ljava/lang/Object;
.source "ConstrasteActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/ConstrasteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/ConstrasteActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/ConstrasteActivity;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ConstrasteActivity$1;->this$0:Lcom/br/ipad/isc/gui/ConstrasteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ConstrasteActivity$1;->this$0:Lcom/br/ipad/isc/gui/ConstrasteActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ConstrasteActivity;->access$000(Lcom/br/ipad/isc/gui/ConstrasteActivity;)Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/br/ipad/isc/bean/SistemaParametros;->setContrasteConta(Ljava/lang/Integer;)V

    .line 52
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    iget-object p3, p0, Lcom/br/ipad/isc/gui/ConstrasteActivity$1;->this$0:Lcom/br/ipad/isc/gui/ConstrasteActivity;

    invoke-static {p3}, Lcom/br/ipad/isc/gui/ConstrasteActivity;->access$000(Lcom/br/ipad/isc/gui/ConstrasteActivity;)Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/br/ipad/isc/fachada/Fachada;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 53
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ConstrasteActivity$1;->this$0:Lcom/br/ipad/isc/gui/ConstrasteActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/ConstrasteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
