.class Lcom/br/ipad/isc/gui/DownloadApkActivity$4;
.super Ljava/lang/Object;
.source "DownloadApkActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 530
    iput-object p1, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$4;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 535
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$4;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    const-class v0, Lcom/br/ipad/isc/gui/LoginActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 536
    iget-object p2, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$4;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->startActivity(Landroid/content/Intent;)V

    .line 537
    iget-object p1, p0, Lcom/br/ipad/isc/gui/DownloadApkActivity$4;->this$0:Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/DownloadApkActivity;->finish()V

    return-void
.end method
