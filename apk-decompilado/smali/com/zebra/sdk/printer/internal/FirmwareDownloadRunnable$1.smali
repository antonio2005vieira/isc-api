.class Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/device/ProgressMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;


# direct methods
.method constructor <init>(Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable$1;->this$0:Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateProgress(II)V
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable$1;->this$0:Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;

    invoke-static {v0}, Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;->access$000(Lcom/zebra/sdk/printer/internal/FirmwareDownloadRunnable;)Lcom/zebra/sdk/printer/FirmwareUpdateHandlerBase;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/printer/FirmwareUpdateHandlerBase;->progressUpdate(II)V

    return-void
.end method
