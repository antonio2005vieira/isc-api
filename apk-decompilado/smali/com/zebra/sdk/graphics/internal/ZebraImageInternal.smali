.class public interface abstract Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/graphics/ZebraImageI;


# virtual methods
.method public abstract getDitheredB64EncodedPng()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getRow(I)[I
.end method

.method public abstract scaleImage(II)Z
.end method

.method public abstract writeDitheredPng(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
