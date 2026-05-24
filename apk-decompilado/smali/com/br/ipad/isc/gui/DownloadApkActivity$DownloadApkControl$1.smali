.class Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl$1;
.super Ljava/lang/Object;
.source "DownloadApkActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl$1;->this$1:Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 96
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl$1;->this$1:Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    const-class v0, Lcom/br/ipad/isc/gui/DownloadArquivoActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    iget-object p2, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl$1;->this$1:Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl$1;->this$1:Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;

    iget-object p1, p1, Lcom/br/ipad/isc/gui/DownloadApkActivity$DownloadApkControl;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->finish()V

    return-void
.end method
