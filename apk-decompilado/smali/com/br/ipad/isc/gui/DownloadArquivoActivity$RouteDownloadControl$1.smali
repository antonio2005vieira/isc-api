.class Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl$1;
.super Ljava/lang/Object;
.source "DownloadArquivoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl$1;->this$1:Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 310
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl$1;->this$1:Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/DownloadArquivoActivity$RouteDownloadControl;->this$0:Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;->access$200(Lcom/br/ipad/isc/gui/DownloadArquivoActivity;)V

    return-void
.end method
