.class public Lcom/zebra/sdk/printer/SnmpPrinter;
.super Ljava/lang/Object;


# instance fields
.field private connection:Lcom/zebra/sdk/comm/Connection;

.field private getCommunityName:Ljava/lang/String;

.field private setCommunityName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/SnmpException;
        }
    .end annotation

    const-string v0, "public"

    invoke-direct {p0, p1, v0, v0}, Lcom/zebra/sdk/printer/SnmpPrinter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/SnmpException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zebra/sdk/printer/SnmpPrinter;->getCommunityName:Ljava/lang/String;

    iput-object p3, p0, Lcom/zebra/sdk/printer/SnmpPrinter;->setCommunityName:Ljava/lang/String;

    :try_start_0
    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/SnmpPrinter;->init(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/printer/SnmpException;

    invoke-virtual {p1}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/printer/SnmpException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    new-instance p1, Lcom/zebra/sdk/printer/SnmpException;

    const-string p2, "Could not resolve DNS name to IP Address."

    invoke-direct {p1, p2}, Lcom/zebra/sdk/printer/SnmpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private init(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/SnmpException;,
            Ljava/net/UnknownHostException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/printer/SnmpPrinter;->getConnection(Ljava/lang/String;)Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/printer/SnmpPrinter;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/SnmpPrinter;->initConnectionAttributes()V

    return-void
.end method

.method private initConnectionAttributes()V
    .locals 2

    new-instance v0, Lcom/zebra/sdk/comm/internal/ConnectionAttributeProvider;

    invoke-direct {v0}, Lcom/zebra/sdk/comm/internal/ConnectionAttributeProvider;-><init>()V

    iget-object v1, p0, Lcom/zebra/sdk/printer/SnmpPrinter;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/comm/internal/ConnectionAttributeProvider;->getAttributes(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/comm/internal/ConnectionAttributes;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/SnmpPrinter;->getGetCommunityName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zebra/sdk/comm/internal/ConnectionAttributes;->snmpGetCommunityName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/SnmpPrinter;->getSetCommunityName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zebra/sdk/comm/internal/ConnectionAttributes;->snmpSetCommunityName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getConnection(Ljava/lang/String;)Lcom/zebra/sdk/comm/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/comm/TcpConnection;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/zebra/sdk/comm/TcpConnection;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected getDiscoTimeoutInMSec()I
    .locals 1

    const/16 v0, 0x2710

    return v0
.end method

.method public getGetCommunityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/SnmpPrinter;->getCommunityName:Ljava/lang/String;

    return-object v0
.end method

.method public getOidValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/SnmpException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/zebra/sdk/printer/SnmpPrinter;->getGetCommunityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/SnmpPrinter;->getSetCommunityName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zebra/sdk/settings/internal/SettingType;->STRING:Lcom/zebra/sdk/settings/internal/SettingType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/zebra/sdk/printer/SnmpPrinter;->getSnmpImpl(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/settings/internal/SettingType;)Lcom/zebra/sdk/comm/snmp/internal/Snmp;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/printer/SnmpPrinter;->connection:Lcom/zebra/sdk/comm/Connection;

    check-cast v1, Lcom/zebra/sdk/comm/IpAddressable;

    invoke-interface {v1}, Lcom/zebra/sdk/comm/IpAddressable;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/zebra/sdk/comm/snmp/internal/Snmp;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/zebra/sdk/comm/snmp/internal/OidNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/zebra/sdk/comm/snmp/internal/SnmpTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance v0, Lcom/zebra/sdk/printer/SnmpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out retrieving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/SnmpException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Lcom/zebra/sdk/printer/SnmpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/SnmpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSetCommunityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/SnmpPrinter;->setCommunityName:Ljava/lang/String;

    return-object v0
.end method

.method protected getSnmpImpl(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/settings/internal/SettingType;)Lcom/zebra/sdk/comm/snmp/internal/Snmp;
    .locals 1

    new-instance p1, Lcom/zebra/sdk/comm/snmp/internal/Snmp;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/SnmpPrinter;->getGetCommunityName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/SnmpPrinter;->getSetCommunityName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0, p3}, Lcom/zebra/sdk/comm/snmp/internal/Snmp;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/settings/internal/SettingType;)V

    return-object p1
.end method

.method public setOidValue(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/SnmpException;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/SnmpPrinter;->getGetCommunityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/SnmpPrinter;->getSetCommunityName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zebra/sdk/settings/internal/SettingType;->INTEGER:Lcom/zebra/sdk/settings/internal/SettingType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/zebra/sdk/printer/SnmpPrinter;->getSnmpImpl(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/settings/internal/SettingType;)Lcom/zebra/sdk/comm/snmp/internal/Snmp;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/printer/SnmpPrinter;->connection:Lcom/zebra/sdk/comm/Connection;

    check-cast v1, Lcom/zebra/sdk/comm/IpAddressable;

    invoke-interface {v1}, Lcom/zebra/sdk/comm/IpAddressable;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/zebra/sdk/comm/snmp/internal/Snmp;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/zebra/sdk/comm/snmp/internal/OidNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/zebra/sdk/comm/snmp/internal/SnmpTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p2, Lcom/zebra/sdk/printer/SnmpException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timed out setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/printer/SnmpException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    new-instance p2, Lcom/zebra/sdk/printer/SnmpException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/printer/SnmpException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/printer/SnmpException;

    invoke-virtual {p1}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/printer/SnmpException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setOidValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/SnmpException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/zebra/sdk/printer/SnmpPrinter;->getGetCommunityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/SnmpPrinter;->getSetCommunityName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zebra/sdk/settings/internal/SettingType;->STRING:Lcom/zebra/sdk/settings/internal/SettingType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/zebra/sdk/printer/SnmpPrinter;->getSnmpImpl(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/settings/internal/SettingType;)Lcom/zebra/sdk/comm/snmp/internal/Snmp;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/printer/SnmpPrinter;->connection:Lcom/zebra/sdk/comm/Connection;

    check-cast v1, Lcom/zebra/sdk/comm/IpAddressable;

    invoke-interface {v1}, Lcom/zebra/sdk/comm/IpAddressable;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/zebra/sdk/comm/snmp/internal/Snmp;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/zebra/sdk/comm/snmp/internal/OidNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/zebra/sdk/comm/snmp/internal/SnmpTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p2, Lcom/zebra/sdk/printer/SnmpException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timed out setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/printer/SnmpException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    new-instance p2, Lcom/zebra/sdk/printer/SnmpException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/printer/SnmpException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/printer/SnmpException;

    invoke-virtual {p1}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/printer/SnmpException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
