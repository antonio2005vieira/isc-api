.class public Lcom/zebra/sdk/printer/internal/ZebraPrinterFactoryHelper;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLinkOsPrinter(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    instance-of v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinter;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;-><init>(Lcom/zebra/sdk/printer/PrinterLanguage;)V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->create(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0

    return-object p0
.end method

.method public static createLinkOsPrinter(Lcom/zebra/sdk/printer/ZebraPrinter;Lcom/zebra/sdk/printer/LinkOsInformation;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;-><init>(Lcom/zebra/sdk/printer/LinkOsInformation;)V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->create(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0

    return-object p0
.end method

.method public static createLinkOsPrinter(Lcom/zebra/sdk/printer/ZebraPrinter;Lcom/zebra/sdk/printer/LinkOsInformation;Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    instance-of v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinter;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v0

    sget-object v1, Lcom/zebra/sdk/printer/PrinterLanguage;->CPCL:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;

    invoke-direct {v0, p1, p2}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;-><init>(Lcom/zebra/sdk/printer/LinkOsInformation;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->create(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0

    return-object p0
.end method

.method public static createLinkOsPrinter(Lcom/zebra/sdk/printer/ZebraPrinter;Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;-><init>(Lcom/zebra/sdk/printer/PrinterLanguage;)V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->create(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0

    return-object p0
.end method

.method private static getApplNameHocusPocus(Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, ""

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "appl.name"

    if-nez v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0xa

    if-ge v0, v4, :cond_0

    invoke-static {v3, p0}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object v1

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-static {v3, p0}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move-object v1, p0

    :cond_1
    return-object v1
.end method

.method public static getInstance(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;
        }
    .end annotation

    sget-object v0, Lcom/zebra/sdk/util/internal/CPCLUtilities;->VERSION_PREFIXES:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterFactoryHelper;->getInstance([Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

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

    invoke-static {p1, p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterFactoryHelper;->getPrinterInstance(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/ZebraPrinter;

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

    invoke-static {p1, p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterFactoryHelper;->getLanguage(Lcom/zebra/sdk/comm/Connection;[Ljava/lang/String;)Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterFactoryHelper;->getInstance(Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

    move-result-object p0

    return-object p0
.end method

.method private static getLanguage(Lcom/zebra/sdk/comm/Connection;[Ljava/lang/String;)Lcom/zebra/sdk/printer/PrinterLanguage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    sget-object v0, Lcom/zebra/sdk/printer/PrinterLanguage;->ZPL:Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-static {p0}, Lcom/zebra/sdk/settings/internal/ConnectionUtil;->selectConnection(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterFactoryHelper;->getApplNameHocusPocus(Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p0}, Lcom/zebra/sdk/util/internal/StringUtilities;->doesPrefixExistInArray([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/zebra/sdk/printer/PrinterLanguage;->CPCL:Lcom/zebra/sdk/printer/PrinterLanguage;

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;

    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string p1, "Connection is not open."

    invoke-direct {p0, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLinkOsPrinter(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;

    const/4 v1, 0x0

    check-cast v1, Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;-><init>(Lcom/zebra/sdk/printer/PrinterLanguage;)V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->create(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0

    return-object p0
.end method

.method public static getLinkOsPrinter(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/LinkOsInformation;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;-><init>(Lcom/zebra/sdk/printer/LinkOsInformation;)V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->create(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0

    return-object p0
.end method

.method public static getLinkOsPrinter(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/LinkOsInformation;Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;

    invoke-direct {v0, p1, p2}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;-><init>(Lcom/zebra/sdk/printer/LinkOsInformation;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->create(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0

    return-object p0
.end method

.method public static getLinkOsPrinter(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;-><init>(Lcom/zebra/sdk/printer/PrinterLanguage;)V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/printer/internal/LinkOsPrinterCreatorSgdOrJson;->create(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0

    return-object p0
.end method

.method private static getPrinterInstance(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/ZebraPrinter;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/printer/PrinterLanguage;->CPCL:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/zebra/sdk/printer/PrinterLanguage;->LINE_PRINT:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;

    invoke-direct {p1, p0}, Lcom/zebra/sdk/printer/internal/ZebraPrinterZpl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;

    invoke-direct {v0, p0, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    move-object p1, v0

    :goto_1
    return-object p1
.end method
