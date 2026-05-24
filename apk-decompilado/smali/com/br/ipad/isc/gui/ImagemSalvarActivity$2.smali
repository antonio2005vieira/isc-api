.class Lcom/br/ipad/isc/gui/ImagemSalvarActivity$2;
.super Ljava/lang/Object;
.source "ImagemSalvarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$2;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$2;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->deletaFoto()V

    .line 86
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$2;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->finish()V

    return-void
.end method
