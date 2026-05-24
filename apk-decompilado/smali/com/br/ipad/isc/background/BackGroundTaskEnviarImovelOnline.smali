.class public Lcom/br/ipad/isc/background/BackGroundTaskEnviarImovelOnline;
.super Lcom/br/ipad/isc/background/BackgroundTask;
.source "BackGroundTaskEnviarImovelOnline.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/br/ipad/isc/background/BackgroundTask;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/br/ipad/isc/background/BackgroundTask;-><init>()V

    return-void
.end method


# virtual methods
.method public performTask()V
    .locals 0

    return-void
.end method

.method public taskFinished()V
    .locals 0

    return-void
.end method

.method public taskStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/background/BackGroundTaskEnviarImovelOnline;->setPriority(I)V

    return-void
.end method
