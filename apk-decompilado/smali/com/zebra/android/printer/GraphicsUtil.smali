.class public interface abstract Lcom/zebra/android/printer/GraphicsUtil;
.super Ljava/lang/Object;


# virtual methods
.method public abstract printImage(Landroid/graphics/Bitmap;IIIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation
.end method

.method public abstract printImage(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation
.end method

.method public abstract printImage(Ljava/lang/String;IIIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation
.end method

.method public abstract storeImage(Ljava/lang/String;Landroid/graphics/Bitmap;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;,
            Lcom/zebra/android/printer/ZebraIllegalArgumentException;
        }
    .end annotation
.end method
