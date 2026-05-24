.class public Lcom/zebra/sdk/util/internal/Sleeper;
.super Ljava/lang/Object;


# static fields
.field static sleeper:Lcom/zebra/sdk/util/internal/Sleeper;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInstance()Lcom/zebra/sdk/util/internal/Sleeper;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/util/internal/Sleeper;->sleeper:Lcom/zebra/sdk/util/internal/Sleeper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zebra/sdk/util/internal/Sleeper;

    invoke-direct {v0}, Lcom/zebra/sdk/util/internal/Sleeper;-><init>()V

    sput-object v0, Lcom/zebra/sdk/util/internal/Sleeper;->sleeper:Lcom/zebra/sdk/util/internal/Sleeper;

    :cond_0
    sget-object v0, Lcom/zebra/sdk/util/internal/Sleeper;->sleeper:Lcom/zebra/sdk/util/internal/Sleeper;

    return-object v0
.end method

.method public static sleep(J)V
    .locals 1

    invoke-static {}, Lcom/zebra/sdk/util/internal/Sleeper;->getInstance()Lcom/zebra/sdk/util/internal/Sleeper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/zebra/sdk/util/internal/Sleeper;->performSleep(J)V

    return-void
.end method


# virtual methods
.method protected performSleep(J)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
