.class Lcom/zebra/sdk/printer/internal/FirmwareUpdaterLinkOsBase$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/device/ProgressMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zebra/sdk/printer/internal/FirmwareUpdaterLinkOsBase;->doFwDownload(Ljava/lang/String;JLcom/zebra/sdk/printer/FirmwareUpdateHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zebra/sdk/printer/internal/FirmwareUpdaterLinkOsBase;

.field final synthetic val$handler:Lcom/zebra/sdk/printer/FirmwareUpdateHandler;


# direct methods
.method constructor <init>(Lcom/zebra/sdk/printer/internal/FirmwareUpdaterLinkOsBase;Lcom/zebra/sdk/printer/FirmwareUpdateHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/FirmwareUpdaterLinkOsBase$2;->this$0:Lcom/zebra/sdk/printer/internal/FirmwareUpdaterLinkOsBase;

    iput-object p2, p0, Lcom/zebra/sdk/printer/internal/FirmwareUpdaterLinkOsBase$2;->val$handler:Lcom/zebra/sdk/printer/FirmwareUpdateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateProgress(II)V
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FirmwareUpdaterLinkOsBase$2;->val$handler:Lcom/zebra/sdk/printer/FirmwareUpdateHandler;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/printer/FirmwareUpdateHandler;->progressUpdate(II)V

    return-void
.end method
