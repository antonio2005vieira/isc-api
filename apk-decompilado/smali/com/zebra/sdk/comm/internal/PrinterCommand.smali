.class public interface abstract Lcom/zebra/sdk/comm/internal/PrinterCommand;
.super Ljava/lang/Object;


# virtual methods
.method public abstract sendAndWaitForResponse(Ljava/io/OutputStream;Lcom/zebra/sdk/comm/Connection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract sendAndWaitForResponse(Ljava/io/OutputStream;Lcom/zebra/sdk/comm/Connection;IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract sendAndWaitForResponse(Lcom/zebra/sdk/comm/Connection;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract sendAndWaitForResponse(Lcom/zebra/sdk/comm/Connection;II)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract sendAndWaitForResponse(Lcom/zebra/sdk/comm/Connection;IILjava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method
