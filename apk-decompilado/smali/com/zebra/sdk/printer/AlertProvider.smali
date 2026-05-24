.class public interface abstract Lcom/zebra/sdk/printer/AlertProvider;
.super Ljava/lang/Object;


# virtual methods
.method public abstract configureAlert(Lcom/zebra/sdk/printer/PrinterAlert;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract configureAlerts(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterAlert;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract getConfiguredAlerts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterAlert;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract removeAlert(Lcom/zebra/sdk/printer/PrinterAlert;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract removeAllAlerts()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method
