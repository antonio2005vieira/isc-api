.class Lcom/zebra/sdk/printer/discovery/internal/BroadcastA$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->startDiscoveryInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;


# direct methods
.method constructor <init>(Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA$1;->this$0:Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA$1;->this$0:Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->doDiscovery()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA$1;->this$0:Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;

    iget-object v0, v0, Lcom/zebra/sdk/printer/discovery/internal/BroadcastA;->discoveryHandler:Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;

    invoke-interface {v0}, Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;->discoveryFinished()V

    :cond_0
    return-void
.end method
