.class Lcom/br/ipad/isc/gui/DownloadApkActivity$3;
.super Ljava/lang/Object;
.source "DownloadApkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/DownloadApkActivity;->iniciarAplicacao()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/DownloadApkActivity;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$3;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 505
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$3;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->access$202(Lcom/br/ipad/isc/gui/DownloadApkActivity;Z)Z

    .line 506
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$3;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->access$000(Lcom/br/ipad/isc/gui/DownloadApkActivity;)Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;

    move-result-object p1

    iput-boolean v0, p1, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->abort:Z

    .line 507
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$3;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->finish()V

    return-void
.end method
