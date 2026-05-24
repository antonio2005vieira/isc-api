.class public Lcom/zebra/sdk/printer/SettingsSetter;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/comm/internal/ConnectionBuilderInternal;->build(Ljava/lang/String;)Lcom/zebra/sdk/comm/Connection;

    move-result-object p0
    :try_end_0
    .catch Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->open()V

    invoke-static {p0}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->getInstance(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

    move-result-object v1

    invoke-static {v1}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->createLinkOsPrinter(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->processSettingsViaMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catch Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    :goto_0
    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p0, v0

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    :goto_2
    return-object v0

    :goto_3
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
