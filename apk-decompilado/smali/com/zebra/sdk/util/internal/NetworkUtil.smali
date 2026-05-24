.class public Lcom/zebra/sdk/util/internal/NetworkUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIEEE1284DeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "public"

    :try_start_0
    new-instance v1, Lcom/zebra/sdk/comm/snmp/internal/Snmp;

    sget-object v2, Lcom/zebra/sdk/settings/internal/SettingType;->STRING:Lcom/zebra/sdk/settings/internal/SettingType;

    invoke-direct {v1, v0, v0, v2}, Lcom/zebra/sdk/comm/snmp/internal/Snmp;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/settings/internal/SettingType;)V

    const-string v0, "1.3.6.1.4.1.2699.1.2.1.2.1.1.3.1"

    invoke-virtual {v1, p0, v0}, Lcom/zebra/sdk/comm/snmp/internal/Snmp;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static startSinglePrinterDiscovery(Ljava/lang/String;Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v0}, Lcom/zebra/sdk/printer/discovery/NetworkDiscoverer;->findPrinters(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Ljava/util/List;)V

    return-void
.end method
