.class public interface abstract Lcom/zebra/sdk/printer/GraphicsUtil;
.super Ljava/lang/Object;


# virtual methods
.method public abstract printImage(Lcom/zebra/sdk/graphics/ZebraImageI;IIIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract printImage(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract printImage(Ljava/lang/String;IIIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract storeImage(Ljava/lang/String;Lcom/zebra/sdk/graphics/ZebraImageI;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract storeImage(Ljava/lang/String;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
