.class Lcom/br/ipad/isc/gui/SplashScreenActivity$1;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/SplashScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/SplashScreenActivity;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/br/ipad/isc/gui/SplashScreenActivity$1;->this$0:Lcom/br/ipad/isc/gui/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 37
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/SplashScreenActivity$1;->this$0:Lcom/br/ipad/isc/gui/SplashScreenActivity;

    const-class v2, Lcom/br/ipad/isc/gui/DownloadApkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    iget-object v1, p0, Lcom/br/ipad/isc/gui/SplashScreenActivity$1;->this$0:Lcom/br/ipad/isc/gui/SplashScreenActivity;

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/gui/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 42
    iget-object v0, p0, Lcom/br/ipad/isc/gui/SplashScreenActivity$1;->this$0:Lcom/br/ipad/isc/gui/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/br/ipad/isc/gui/SplashScreenActivity;->finish()V

    return-void
.end method
