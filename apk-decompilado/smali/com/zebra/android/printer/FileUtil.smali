.class public interface abstract Lcom/zebra/android/printer/FileUtil;
.super Ljava/lang/Object;


# virtual methods
.method public abstract retrieveFileNames()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;,
            Lcom/zebra/android/printer/ZebraIllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract retrieveFileNames([Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;,
            Lcom/zebra/android/printer/ZebraIllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract sendFileContents(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation
.end method
