.class public abstract Lcom/br/ipad/isc/background/BackgroundTask;
.super Ljava/lang/Object;
.source "BackgroundTask.java"


# instance fields
.field private t:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/br/ipad/isc/background/BackgroundTask$1;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/background/BackgroundTask$1;-><init>(Lcom/br/ipad/isc/background/BackgroundTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/br/ipad/isc/background/BackgroundTask;->t:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public abstract performTask()V
.end method

.method public setPriority(I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/br/ipad/isc/background/BackgroundTask;->t:Ljava/lang/Thread;

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-void
.end method

.method public final start()V
    .locals 0

    return-void
.end method

.method public taskFinished()V
    .locals 0

    .line 78
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public abstract taskStarted()V
.end method
