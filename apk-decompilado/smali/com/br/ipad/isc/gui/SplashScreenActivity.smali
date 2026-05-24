.class public Lcom/br/ipad/isc/gui/SplashScreenActivity;
.super Landroid/app/Activity;
.source "SplashScreenActivity.java"


# static fields
.field private static SPLASH_TIME_OUT:I = 0xbb8


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0041

    .line 24
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/SplashScreenActivity;->setContentView(I)V

    .line 26
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCrashlyticsCollectionEnabled(Z)V

    .line 28
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/br/ipad/isc/gui/SplashScreenActivity$1;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/SplashScreenActivity$1;-><init>(Lcom/br/ipad/isc/gui/SplashScreenActivity;)V

    sget v1, Lcom/br/ipad/isc/gui/SplashScreenActivity;->SPLASH_TIME_OUT:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
