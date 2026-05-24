.class public Lcom/zebra/sdk/weblink/WeblinkConfigurator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;
    }
.end annotation


# instance fields
.field connection:Lcom/zebra/sdk/comm/Connection;

.field private linkOsVersion:Lcom/zebra/sdk/printer/LinkOsInformation;

.field myState:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

.field myStatus:Lcom/zebra/sdk/weblink/ConfigurationStatus;

.field private printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

.field private reestablisher:Lcom/zebra/sdk/comm/ConnectionReestablisher;

.field private weblinkLocationToSet:Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->connection:Lcom/zebra/sdk/comm/Connection;

    iput-object v0, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    iput-object v0, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->linkOsVersion:Lcom/zebra/sdk/printer/LinkOsInformation;

    iput-object p1, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->connection:Lcom/zebra/sdk/comm/Connection;

    sget-object p1, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->ConnectToPrinter:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    iput-object p1, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->myState:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    sget-object p1, Lcom/zebra/sdk/weblink/ConfigurationStatus;->NOT_STARTED:Lcom/zebra/sdk/weblink/ConfigurationStatus;

    iput-object p1, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->myStatus:Lcom/zebra/sdk/weblink/ConfigurationStatus;

    return-void
.end method

.method public constructor <init>(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;)V
    .locals 0

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    return-void
.end method

.method private checkConnection(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private connectToPrinter()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->open()V

    return-void
.end method

.method private getLinkOsVersionInfo()Lcom/zebra/sdk/printer/LinkOsInformation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->linkOsVersion:Lcom/zebra/sdk/printer/LinkOsInformation;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->connection:Lcom/zebra/sdk/comm/Connection;

    const-string v1, "appl.link_os_version"

    invoke-static {v1, v0}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/zebra/sdk/printer/LinkOsInformation;

    invoke-direct {v1, v0}, Lcom/zebra/sdk/printer/LinkOsInformation;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->linkOsVersion:Lcom/zebra/sdk/printer/LinkOsInformation;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/printer/NotALinkOsPrinterException;

    invoke-direct {v0}, Lcom/zebra/sdk/printer/NotALinkOsPrinterException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->linkOsVersion:Lcom/zebra/sdk/printer/LinkOsInformation;

    return-object v0
.end method

.method private getPrinterLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->connection:Lcom/zebra/sdk/comm/Connection;

    const-string v1, "device.languages"

    invoke-static {v1, v0}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/zebra/sdk/printer/PrinterLanguage;->getLanguage(Ljava/lang/String;)Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/printer/NotALinkOsPrinterException;

    invoke-direct {v0}, Lcom/zebra/sdk/printer/NotALinkOsPrinterException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    return-object v0
.end method

.method private getSettings()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "rtc.date"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "weblink.ip.conn1.location"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "weblink.ip.conn2.location"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "weblink.ip.conn1.num_connections"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "weblink.ip.conn2.num_connections"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "appl.link_os_version"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->getPrinterLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v1

    iput-object v1, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-direct {p0}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->getLinkOsVersionInfo()Lcom/zebra/sdk/printer/LinkOsInformation;

    move-result-object v1

    iput-object v1, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->linkOsVersion:Lcom/zebra/sdk/printer/LinkOsInformation;

    new-instance v1, Lcom/zebra/sdk/settings/SettingsValues;

    invoke-direct {v1}, Lcom/zebra/sdk/settings/SettingsValues;-><init>()V

    iget-object v2, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->connection:Lcom/zebra/sdk/comm/Connection;

    iget-object v3, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    iget-object v4, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->linkOsVersion:Lcom/zebra/sdk/printer/LinkOsInformation;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/zebra/sdk/settings/SettingsValues;->getValues(Ljava/util/List;Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getSettingsToConfigure(Ljava/lang/String;Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;",
            "Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;",
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
            Lcom/zebra/sdk/weblink/ZebraWeblinkException;
        }
    .end annotation

    sget-object v0, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->ConfigureWeblink:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    invoke-direct {p0, p3, v0}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->updateState(Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;Lcom/zebra/sdk/weblink/WeblinkConfigurationState;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, p4}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->rtcTooOld(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "rtc.date"

    const-string v2, "01-01-2013"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "weblink.ip.conn1.location"

    invoke-interface {p4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Weblink settings not retrieved"

    if-eqz v2, :cond_12

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, ""

    if-eqz v2, :cond_11

    const-string v5, "weblink.ip.conn1.num_connections"

    invoke-direct {p0, v5, p4}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->checkConnection(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v5

    const-string v6, "weblink.ip.conn2.location"

    invoke-interface {p4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "weblink.ip.conn2.num_connections"

    invoke-direct {p0, v7, p4}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->checkConnection(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object p4, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;->FORCE_CONNECTION_1:Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

    const-string v2, "Both weblink locations set to "

    if-ne p2, p4, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", clearing location 2"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;->progressUpdate(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v6, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object p1, Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;->SET_LOCATION_1:Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    goto :goto_4

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", clearing location 1"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;->progressUpdate(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_5

    sget-object p4, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;->FORCE_CONNECTION_2:Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

    const-string v2, "Weblink location 1 already set to "

    if-ne p2, p4, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", configuring for location 2"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;->progressUpdate(Ljava/lang/String;)V

    invoke-virtual {v0, v6, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    sget-object p1, Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;->SET_LOCATION_2:Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    :goto_4
    iput-object p1, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->weblinkLocationToSet:Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    goto/16 :goto_a

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    if-ne v8, v5, :cond_4

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Weblink location 1 already connected to "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;->progressUpdate(Ljava/lang/String;)V

    sget-object p1, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->RestartPrinter:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    invoke-direct {p0, p3, p1}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->updateState(Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;Lcom/zebra/sdk/weblink/WeblinkConfigurationState;)V

    sget-object p1, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->ReconnectToPrinter:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    invoke-direct {p0, p3, p1}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->updateState(Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;Lcom/zebra/sdk/weblink/WeblinkConfigurationState;)V

    goto :goto_1

    :cond_4
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;->progressUpdate(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v2, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;->FORCE_CONNECTION_1:Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

    const-string v3, "Weblink location 2 already set to "

    if-ne p2, v2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", configuring for location 1"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;->progressUpdate(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    if-ne v8, p4, :cond_7

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Weblink location 2 already connected to "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;->progressUpdate(Ljava/lang/String;)V

    sget-object p1, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->RestartPrinter:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    invoke-direct {p0, p3, p1}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->updateState(Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;Lcom/zebra/sdk/weblink/WeblinkConfigurationState;)V

    sget-object p1, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->ReconnectToPrinter:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    invoke-direct {p0, p3, p1}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->updateState(Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;Lcom/zebra/sdk/weblink/WeblinkConfigurationState;)V

    goto/16 :goto_3

    :cond_7
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;->progressUpdate(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    sget-object v4, Lcom/zebra/sdk/weblink/WeblinkConfigurator$2;->$SwitchMap$com$zebra$sdk$weblink$WeblinkAddressStrategy:[I

    invoke-virtual {p2}, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;->ordinal()I

    move-result p2

    aget p2, v4, p2

    if-eq p2, v8, :cond_b

    const/4 p4, 0x2

    if-eq p2, p4, :cond_a

    const/4 p4, 0x3

    if-eq p2, p4, :cond_9

    goto :goto_8

    :cond_9
    :goto_5
    invoke-virtual {v0, v6, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;->SET_LOCATION_2:Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    goto :goto_7

    :cond_a
    :goto_6
    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;->SET_LOCATION_1:Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    :goto_7
    iput-object p2, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->weblinkLocationToSet:Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    goto :goto_8

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p0, v3}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->isValidWeblinkUrl(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {p0, v2}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->isValidWeblinkUrl(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_6

    :cond_d
    if-nez p4, :cond_e

    goto :goto_5

    :cond_e
    if-nez v5, :cond_9

    goto :goto_6

    :goto_8
    iget-object p2, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->weblinkLocationToSet:Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    sget-object p4, Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;->SET_LOCATION_1:Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    if-ne p2, p4, :cond_f

    const-string p2, "1"

    goto :goto_9

    :cond_f
    const-string p2, "2"

    :goto_9
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting weblink location "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;->progressUpdate(Ljava/lang/String;)V

    :goto_a
    return-object v0

    :cond_10
    new-instance p1, Lcom/zebra/sdk/weblink/ZebraWeblinkException;

    invoke-direct {p1, v3}, Lcom/zebra/sdk/weblink/ZebraWeblinkException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    :try_start_0
    const-string p1, "device.reset"

    iget-object p2, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-static {p1, v4, p2}, Lcom/zebra/sdk/printer/SGD;->SET(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Lcom/zebra/sdk/weblink/ZebraWeblinkException;

    const-string p2, "Weblink settings unavailable. Rebooting printer. Please try again."

    invoke-direct {p1, p2}, Lcom/zebra/sdk/weblink/ZebraWeblinkException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    new-instance p1, Lcom/zebra/sdk/weblink/ZebraWeblinkException;

    invoke-direct {p1, v3}, Lcom/zebra/sdk/weblink/ZebraWeblinkException;-><init>(Ljava/lang/String;)V

    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b
.end method

.method private isConnected(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/weblink/ZebraWeblinkException;
        }
    .end annotation

    sget-object v0, Lcom/zebra/sdk/weblink/WeblinkConfigurator$2;->$SwitchMap$com$zebra$sdk$weblink$WeblinkConfigurator$WeblinkLocationToSet:[I

    iget-object v1, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->weblinkLocationToSet:Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    invoke-virtual {v1}, Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, -0x1

    goto :goto_1

    :cond_0
    const-string v0, "weblink.ip.conn2.num_connections"

    goto :goto_0

    :cond_1
    const-string v0, "weblink.ip.conn1.num_connections"

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_1
    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private reconnectToPrinter(Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;,
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;
        }
    .end annotation

    sget-object v0, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->ReconnectToPrinter:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    invoke-direct {p0, p1, v0}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->updateState(Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;Lcom/zebra/sdk/weblink/WeblinkConfigurationState;)V

    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Lcom/zebra/sdk/util/internal/Sleeper;->sleep(J)V

    iget-object p1, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->reestablisher:Lcom/zebra/sdk/comm/ConnectionReestablisher;

    new-instance v0, Lcom/zebra/sdk/weblink/WeblinkConfigurator$1;

    invoke-direct {v0, p0}, Lcom/zebra/sdk/weblink/WeblinkConfigurator$1;-><init>(Lcom/zebra/sdk/weblink/WeblinkConfigurator;)V

    invoke-interface {p1, v0}, Lcom/zebra/sdk/comm/ConnectionReestablisher;->reestablishConnection(Lcom/zebra/sdk/printer/PrinterReconnectionHandler;)V

    return-void
.end method

.method private restartPrinter(Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    sget-object v0, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->RestartPrinter:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    invoke-direct {p0, p1, v0}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->updateState(Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;Lcom/zebra/sdk/weblink/WeblinkConfigurationState;)V

    iget-object p1, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->connection:Lcom/zebra/sdk/comm/Connection;

    const-string v0, "device.reset"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/zebra/sdk/printer/SGD;->SET(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)V

    iget-object p1, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {p1}, Lcom/zebra/sdk/comm/Connection;->close()V

    return-void
.end method

.method private rtcTooOld(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "rtc.date"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    const-string v1, "01-01-2013"

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateState(Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;Lcom/zebra/sdk/weblink/WeblinkConfigurationState;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;->updateState(Lcom/zebra/sdk/weblink/WeblinkConfigurationState;)V

    iput-object p2, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->myState:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    return-void
.end method

.method private verifyPrinterNumConnections(Ljava/util/Map;Ljava/util/Map;Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/weblink/ZebraWeblinkException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    sget-object p1, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->VerifyWeblinkConnection:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    invoke-direct {p0, p3, p1}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->updateState(Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;Lcom/zebra/sdk/weblink/WeblinkConfigurationState;)V

    new-instance p1, Lcom/zebra/sdk/printer/LinkOsInformation;

    const-string p3, "appl.link_os_version"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p1, p3}, Lcom/zebra/sdk/printer/LinkOsInformation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/LinkOsInformation;->getMajor()I

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->weblinkLocationToSet:Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    sget-object v0, Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;->SET_LOCATION_1:Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    if-ne p1, v0, :cond_0

    const-string p1, "weblink.ip.conn1.num_connections"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->weblinkLocationToSet:Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    sget-object v0, Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;->SET_LOCATION_2:Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    if-ne p1, v0, :cond_1

    const-string p1, "weblink.ip.conn2.num_connections"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->getSettings()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->isConnected(Ljava/util/Map;)Z

    move-result p1

    move p3, p1

    const/4 p1, 0x0

    :goto_0
    if-nez p3, :cond_2

    const/4 p2, 0x5

    if-ge p1, p2, :cond_2

    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Lcom/zebra/sdk/util/internal/Sleeper;->sleep(J)V

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->getSettings()Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->isConnected(Ljava/util/Map;)Z

    move-result p3
    :try_end_0
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/weblink/ZebraWeblinkException;

    invoke-direct {p2, p1}, Lcom/zebra/sdk/weblink/ZebraWeblinkException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    return-void

    :cond_3
    new-instance p1, Lcom/zebra/sdk/weblink/ZebraWeblinkException;

    const-string p2, "Could not verify the connection to the Zebra Weblink server. You may need to review the printer weblink logs and/or the server logs if there are any connection issues."

    invoke-direct {p1, p2}, Lcom/zebra/sdk/weblink/ZebraWeblinkException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public configure(Ljava/lang/String;Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/weblink/ZebraWeblinkException;
        }
    .end annotation

    sget-object v0, Lcom/zebra/sdk/weblink/ConfigurationStatus;->IN_PROCESS:Lcom/zebra/sdk/weblink/ConfigurationStatus;

    iput-object v0, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->myStatus:Lcom/zebra/sdk/weblink/ConfigurationStatus;

    sget-object v0, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->ConnectToPrinter:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    invoke-direct {p0, p3, v0}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->updateState(Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;Lcom/zebra/sdk/weblink/WeblinkConfigurationState;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->isValidWeblinkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->myStatus:Lcom/zebra/sdk/weblink/ConfigurationStatus;

    :try_start_0
    invoke-direct {p0}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->connectToPrinter()V

    iget-object v1, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->connection:Lcom/zebra/sdk/comm/Connection;

    const-wide/32 v2, 0x3a980

    invoke-interface {v1, v2, v3}, Lcom/zebra/sdk/comm/Connection;->getConnectionReestablisher(J)Lcom/zebra/sdk/comm/ConnectionReestablisher;

    move-result-object v1

    iput-object v1, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->reestablisher:Lcom/zebra/sdk/comm/ConnectionReestablisher;

    sget-object v1, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->GetSettings:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    invoke-direct {p0, p3, v1}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->updateState(Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;Lcom/zebra/sdk/weblink/WeblinkConfigurationState;)V

    invoke-direct {p0}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->getSettings()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->getSettingsToConfigure(Ljava/lang/String;Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_0

    new-instance p2, Lcom/zebra/sdk/settings/SettingsValues;

    invoke-direct {p2}, Lcom/zebra/sdk/settings/SettingsValues;-><init>()V

    iget-object v2, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->connection:Lcom/zebra/sdk/comm/Connection;

    iget-object v3, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    iget-object v4, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->linkOsVersion:Lcom/zebra/sdk/printer/LinkOsInformation;

    invoke-virtual {p2, p1, v2, v3, v4}, Lcom/zebra/sdk/settings/SettingsValues;->setValues(Ljava/util/Map;Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)Ljava/util/Map;

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Lcom/zebra/sdk/util/internal/Sleeper;->sleep(J)V

    invoke-direct {p0, p3}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->restartPrinter(Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;)V

    invoke-direct {p0, p3}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->reconnectToPrinter(Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;)V

    :cond_0
    invoke-direct {p0, p1, v1, p3}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->verifyPrinterNumConnections(Ljava/util/Map;Ljava/util/Map;Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;)V

    sget-object p1, Lcom/zebra/sdk/weblink/ConfigurationStatus;->SUCCESSFULLY_COMPLETED:Lcom/zebra/sdk/weblink/ConfigurationStatus;
    :try_end_0
    .catch Lcom/zebra/sdk/weblink/ZebraWeblinkException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->connection:Lcom/zebra/sdk/comm/Connection;

    if-eqz p2, :cond_1

    :try_start_1
    invoke-interface {p2}, Lcom/zebra/sdk/comm/Connection;->close()V
    :try_end_1
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    iput-object p1, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->myStatus:Lcom/zebra/sdk/weblink/ConfigurationStatus;

    iget-object p1, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->myState:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    invoke-direct {p0, p3, p1}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->updateState(Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;Lcom/zebra/sdk/weblink/WeblinkConfigurationState;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_2
    sget-object v0, Lcom/zebra/sdk/weblink/ConfigurationStatus;->CONFIGURATION_FAILED:Lcom/zebra/sdk/weblink/ConfigurationStatus;

    new-instance p2, Lcom/zebra/sdk/weblink/ZebraWeblinkException;

    invoke-direct {p2, p1}, Lcom/zebra/sdk/weblink/ZebraWeblinkException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p1

    sget-object v0, Lcom/zebra/sdk/weblink/ConfigurationStatus;->CONFIGURATION_FAILED:Lcom/zebra/sdk/weblink/ConfigurationStatus;

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iget-object p2, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->connection:Lcom/zebra/sdk/comm/Connection;

    if-eqz p2, :cond_2

    :try_start_3
    invoke-interface {p2}, Lcom/zebra/sdk/comm/Connection;->close()V
    :try_end_3
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_2
    iput-object v0, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->myStatus:Lcom/zebra/sdk/weblink/ConfigurationStatus;

    iget-object p2, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->myState:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    invoke-direct {p0, p3, p2}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->updateState(Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;Lcom/zebra/sdk/weblink/WeblinkConfigurationState;)V

    throw p1

    :cond_3
    sget-object p1, Lcom/zebra/sdk/weblink/ConfigurationStatus;->CONFIGURATION_FAILED:Lcom/zebra/sdk/weblink/ConfigurationStatus;

    iput-object p1, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->myStatus:Lcom/zebra/sdk/weblink/ConfigurationStatus;

    iget-object p1, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->myState:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    invoke-direct {p0, p3, p1}, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->updateState(Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;Lcom/zebra/sdk/weblink/WeblinkConfigurationState;)V

    new-instance p1, Lcom/zebra/sdk/weblink/ZebraWeblinkException;

    const-string p2, "Invalid weblink address."

    invoke-direct {p1, p2}, Lcom/zebra/sdk/weblink/ZebraWeblinkException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCurrentState()Lcom/zebra/sdk/weblink/WeblinkConfigurationState;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->myState:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    return-object v0
.end method

.method public getStatus()Lcom/zebra/sdk/weblink/ConfigurationStatus;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->myStatus:Lcom/zebra/sdk/weblink/ConfigurationStatus;

    return-object v0
.end method

.method public isValidWeblinkUrl(Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Lorg/apache/commons/validator/routines/UrlValidator;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "https"

    aput-object v3, v1, v2

    new-instance v2, Lorg/apache/commons/validator/routines/RegexValidator;

    const-string v3, "^((?!-)[A-Za-z0-9-]{1,63}(?<!-)\\.)+[A-Za-z]{1,63}(:\\d+)?$"

    invoke-direct {v2, v3}, Lorg/apache/commons/validator/routines/RegexValidator;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/validator/routines/UrlValidator;-><init>([Ljava/lang/String;Lorg/apache/commons/validator/routines/RegexValidator;J)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/validator/routines/UrlValidator;->isValid(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
