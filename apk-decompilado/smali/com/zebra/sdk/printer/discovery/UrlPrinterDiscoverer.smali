.class public Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer;
.super Ljava/lang/Object;


# static fields
.field private static final INTERFACE_NOT_PRESENT:Ljava/lang/String; = "000000000000"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findPrinters(Ljava/lang/String;Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer;->findPrinters(Ljava/lang/String;Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Landroid/content/Context;)V

    return-void
.end method

.method public static findPrinters(Ljava/lang/String;Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    const-string v0, "zebra.com/apps/r/nfc?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/zebra/sdk/comm/internal/ZebraUrlParser;

    invoke-direct {v0}, Lcom/zebra/sdk/comm/internal/ZebraUrlParser;-><init>()V

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/comm/internal/ZebraUrlParser;->getVariables(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "mB"

    invoke-static {p0, v0}, Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer;->getAddress(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mBL"

    invoke-static {p0, v1}, Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer;->getAddress(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mW"

    invoke-static {p0, v2}, Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer;->getAddress(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mE"

    invoke-static {p0, v3}, Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer;->getAddress(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {v0}, Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer;->formatBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-static {v0}, Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer;->formatBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    new-instance v0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;->foundPrinter(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer;->formatBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_1

    invoke-static {v1}, Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer;->formatBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer;->reflectivelyInstatiateDiscoveredPrinterBluetoothLe(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p1, p2}, Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;->foundPrinter(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;)V

    :cond_1
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p0, :cond_3

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_4

    new-instance p0, Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer$1;

    invoke-direct {p0, p2, p1}, Lcom/zebra/sdk/printer/discovery/UrlPrinterDiscoverer$1;-><init>(Ljava/util/List;Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V

    invoke-static {p0}, Lcom/zebra/sdk/printer/discovery/NetworkDiscoverer;->findPrinters(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;->discoveryFinished()V

    :goto_1
    return-void

    :cond_5
    new-instance p0, Lcom/zebra/sdk/printer/discovery/DiscoveryException;

    const-string p1, "Unsupported URL format"

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static formatBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static getAddress(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "000000000000"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static reflectivelyInstatiateDiscoveredPrinterBluetoothLe(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;
    .locals 7

    :try_start_0
    const-string v0, "com.zebra.sdk.btleComm.DiscoveredPrinterBluetoothLe"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Landroid/content/Context;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v5

    aput-object p2, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
