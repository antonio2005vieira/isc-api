.class public interface abstract Lcom/zebra/sdk/comm/internal/ConnectionI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/comm/Connection;


# virtual methods
.method public abstract getManufacturer()Ljava/lang/String;
.end method

.method public abstract getMaxDataToWrite()I
.end method

.method public abstract read(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract read(IZ)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract setMaxDataToWrite(I)V
.end method

.method public abstract setReadTimeout(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method
