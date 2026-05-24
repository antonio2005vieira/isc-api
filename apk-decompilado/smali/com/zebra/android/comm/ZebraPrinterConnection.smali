.class public interface abstract Lcom/zebra/android/comm/ZebraPrinterConnection;
.super Ljava/lang/Object;


# virtual methods
.method public abstract bytesAvailable()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation
.end method

.method public abstract getConvertedNewStyleConnection()Lcom/zebra/sdk/comm/Connection;
.end method

.method public abstract getMaxTimeoutForRead()I
.end method

.method public abstract getTimeToWaitForMoreData()I
.end method

.method public abstract isConnected()Z
.end method

.method public abstract open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation
.end method

.method public abstract read()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract waitForData(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation
.end method

.method public abstract write([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation
.end method

.method public abstract write([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation
.end method
