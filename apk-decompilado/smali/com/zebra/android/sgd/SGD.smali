.class public Lcom/zebra/android/sgd/SGD;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DO(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/android/comm/ZebraPrinterConnection;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p2}, Lcom/zebra/android/comm/ZebraPrinterConnection;->getConvertedNewStyleConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/zebra/sdk/printer/SGD;->DO(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/zebra/android/comm/ZebraPrinterConnectionException;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static DO(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/android/comm/ZebraPrinterConnection;II)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p2}, Lcom/zebra/android/comm/ZebraPrinterConnection;->getConvertedNewStyleConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p2

    invoke-static {p0, p1, p2, p3, p4}, Lcom/zebra/sdk/printer/SGD;->DO(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/zebra/android/comm/ZebraPrinterConnectionException;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static GET(Ljava/lang/String;Lcom/zebra/android/comm/ZebraPrinterConnection;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lcom/zebra/android/comm/ZebraPrinterConnection;->getConvertedNewStyleConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/zebra/android/comm/ZebraPrinterConnectionException;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static GET(Ljava/lang/String;Lcom/zebra/android/comm/ZebraPrinterConnection;II)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lcom/zebra/android/comm/ZebraPrinterConnection;->getConvertedNewStyleConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/zebra/android/comm/ZebraPrinterConnectionException;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static SET(Ljava/lang/String;ILcom/zebra/android/comm/ZebraPrinterConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p2}, Lcom/zebra/android/comm/ZebraPrinterConnection;->getConvertedNewStyleConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/zebra/sdk/printer/SGD;->SET(Ljava/lang/String;ILcom/zebra/sdk/comm/Connection;)V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/zebra/android/comm/ZebraPrinterConnectionException;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static SET(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/android/comm/ZebraPrinterConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p2}, Lcom/zebra/android/comm/ZebraPrinterConnection;->getConvertedNewStyleConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/zebra/sdk/printer/SGD;->SET(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/zebra/android/comm/ZebraPrinterConnectionException;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
