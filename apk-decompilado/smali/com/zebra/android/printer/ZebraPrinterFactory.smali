.class public Lcom/zebra/android/printer/ZebraPrinterFactory;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Lcom/zebra/android/comm/ZebraPrinterConnection;)Lcom/zebra/android/printer/ZebraPrinter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;,
            Lcom/zebra/android/printer/ZebraPrinterLanguageUnknownException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Lcom/zebra/android/comm/ZebraPrinterConnection;->getConvertedNewStyleConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-static {p0}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->getInstance(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

    move-result-object p0

    new-instance v0, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;

    invoke-direct {v0, p0}, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;-><init>(Lcom/zebra/sdk/printer/ZebraPrinter;)V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/zebra/android/printer/ZebraPrinterLanguageUnknownException;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/zebra/android/printer/ZebraPrinterLanguageUnknownException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/zebra/android/comm/ZebraPrinterConnectionException;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lcom/zebra/android/printer/PrinterLanguage;Lcom/zebra/android/comm/ZebraPrinterConnection;)Lcom/zebra/android/printer/ZebraPrinter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;
        }
    .end annotation

    sget-object v0, Lcom/zebra/android/printer/PrinterLanguage;->CPCL:Lcom/zebra/android/printer/PrinterLanguage;

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;

    invoke-interface {p1}, Lcom/zebra/android/comm/ZebraPrinterConnection;->getConvertedNewStyleConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    sget-object v0, Lcom/zebra/sdk/printer/PrinterLanguage;->CPCL:Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-direct {p0, p1, v0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    new-instance p1, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;

    invoke-direct {p1, p0}, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;-><init>(Lcom/zebra/sdk/printer/ZebraPrinter;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;

    invoke-interface {p1}, Lcom/zebra/android/comm/ZebraPrinterConnection;->getConvertedNewStyleConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    new-instance p1, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;

    invoke-direct {p1, p0}, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;-><init>(Lcom/zebra/sdk/printer/ZebraPrinter;)V

    :goto_0
    return-object p1
.end method

.method public static getInstance([Ljava/lang/String;Lcom/zebra/android/comm/ZebraPrinterConnection;)Lcom/zebra/android/printer/ZebraPrinter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/android/comm/ZebraPrinterConnectionException;,
            Lcom/zebra/android/printer/ZebraPrinterLanguageUnknownException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lcom/zebra/android/comm/ZebraPrinterConnection;->getConvertedNewStyleConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->getInstance([Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

    move-result-object p0

    new-instance p1, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;

    invoke-direct {p1, p0}, Lcom/zebra/android/printer/internal/ZebraPrinterLegacyDelegator;-><init>(Lcom/zebra/sdk/printer/ZebraPrinter;)V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lcom/zebra/android/printer/ZebraPrinterLanguageUnknownException;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zebra/android/printer/ZebraPrinterLanguageUnknownException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/zebra/android/comm/ZebraPrinterConnectionException;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
