.class public Lcom/zebra/sdk/printer/ZebraPrinterFactory;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLinkOsPrinter(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-static {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterFactoryHelper;->createLinkOsPrinter(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0

    return-object p0
.end method

.method public static createLinkOsPrinter(Lcom/zebra/sdk/printer/ZebraPrinter;Lcom/zebra/sdk/printer/LinkOsInformation;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterFactoryHelper;->createLinkOsPrinter(Lcom/zebra/sdk/printer/ZebraPrinter;Lcom/zebra/sdk/printer/LinkOsInformation;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0

    return-object p0
.end method

.method public static createLinkOsPrinter(Lcom/zebra/sdk/printer/ZebraPrinter;Lcom/zebra/sdk/printer/LinkOsInformation;Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/zebra/sdk/printer/internal/ZebraPrinterFactoryHelper;->createLinkOsPrinter(Lcom/zebra/sdk/printer/ZebraPrinter;Lcom/zebra/sdk/printer/LinkOsInformation;Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0

    return-object p0
.end method

.method public static createLinkOsPrinter(Lcom/zebra/sdk/printer/ZebraPrinter;Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterFactoryHelper;->createLinkOsPrinter(Lcom/zebra/sdk/printer/ZebraPrinter;Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;
        }
    .end annotation

    invoke-static {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterFactoryHelper;->getInstance(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterFactoryHelper;->getInstance(Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance([Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterFactoryHelper;->getInstance([Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

    move-result-object p0

    return-object p0
.end method

.method public static getLinkOsPrinter(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-static {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterFactoryHelper;->getLinkOsPrinter(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0

    return-object p0
.end method

.method public static getLinkOsPrinter(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/LinkOsInformation;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterFactoryHelper;->getLinkOsPrinter(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/LinkOsInformation;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0

    return-object p0
.end method

.method public static getLinkOsPrinter(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/LinkOsInformation;Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/zebra/sdk/printer/internal/ZebraPrinterFactoryHelper;->getLinkOsPrinter(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/LinkOsInformation;Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0

    return-object p0
.end method

.method public static getLinkOsPrinter(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterFactoryHelper;->getLinkOsPrinter(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0

    return-object p0
.end method
