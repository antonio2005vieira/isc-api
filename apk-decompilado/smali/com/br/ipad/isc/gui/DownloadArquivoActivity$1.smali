.class Lcom/br/ipad/isc/gui/DownloadArquivoActivity$1;
.super Ljava/lang/Object;
.source "DownloadArquivoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/DownloadArquivoActivity;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$1;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 388
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$1;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->access$102(Lcom/br/ipad/isc/gui/DownloadArquivoActivity;Z)Z

    .line 389
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$1;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->access$300(Lcom/br/ipad/isc/gui/DownloadArquivoActivity;)Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;

    move-result-object p1

    iput-boolean v0, p1, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->abort:Z

    return-void
.end method
