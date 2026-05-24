.class public Lcom/zebra/sdk/comm/snmp/internal/Snmp;
.super Ljava/lang/Object;


# instance fields
.field private snmpPreferences:Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;

.field private type:Lcom/zebra/sdk/settings/internal/SettingType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/settings/internal/SettingType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;

    invoke-direct {v0}, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;-><init>()V

    iput-object v0, p0, Lcom/zebra/sdk/comm/snmp/internal/Snmp;->snmpPreferences:Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->setCommunityNameGet(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zebra/sdk/comm/snmp/internal/Snmp;->snmpPreferences:Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;

    invoke-virtual {p1, p2}, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->setCommunityNameSet(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/zebra/sdk/comm/snmp/internal/Snmp;->type:Lcom/zebra/sdk/settings/internal/SettingType;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/snmp/internal/OidNotFoundException;,
            Lcom/zebra/sdk/comm/snmp/internal/SnmpTimeoutException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/zebra/sdk/comm/snmp/internal/SnmpGet;

    iget-object v2, p0, Lcom/zebra/sdk/comm/snmp/internal/Snmp;->snmpPreferences:Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;

    invoke-direct {v1, p1, v2}, Lcom/zebra/sdk/comm/snmp/internal/SnmpGet;-><init>(Ljava/lang/String;Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object p1, v1

    check-cast p1, Lcom/zebra/sdk/comm/snmp/internal/SnmpGet;

    invoke-virtual {p1, p2}, Lcom/zebra/sdk/comm/snmp/internal/SnmpGet;->init(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->sendRequest()V

    invoke-virtual {v1}, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->getPdu()Luk/co/westhawk/snmp/stack/Pdu;

    move-result-object p1

    invoke-virtual {p1}, Luk/co/westhawk/snmp/stack/Pdu;->waitForSelf()Z

    invoke-virtual {p1}, Luk/co/westhawk/snmp/stack/Pdu;->isTimedOut()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v1}, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->getReturnValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luk/co/westhawk/snmp/stack/AsnObject;

    invoke-virtual {p1}, Luk/co/westhawk/snmp/stack/AsnObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->destroy()V

    return-object p1

    :cond_0
    :try_start_2
    new-instance p1, Lcom/zebra/sdk/comm/snmp/internal/SnmpTimeoutException;

    invoke-direct {p1}, Lcom/zebra/sdk/comm/snmp/internal/SnmpTimeoutException;-><init>()V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_0
    :try_start_3
    new-instance p2, Lcom/zebra/sdk/comm/snmp/internal/OidNotFoundException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/snmp/internal/OidNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->destroy()V

    :cond_1
    throw p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/snmp/internal/OidNotFoundException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/comm/snmp/internal/SnmpTimeoutException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/zebra/sdk/comm/snmp/internal/SnmpSet;

    iget-object v2, p0, Lcom/zebra/sdk/comm/snmp/internal/Snmp;->snmpPreferences:Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;

    invoke-direct {v1, p1, v2}, Lcom/zebra/sdk/comm/snmp/internal/SnmpSet;-><init>(Ljava/lang/String;Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lcom/zebra/sdk/comm/snmp/internal/Snmp;->type:Lcom/zebra/sdk/settings/internal/SettingType;

    sget-object v0, Lcom/zebra/sdk/settings/internal/SettingType;->STRING:Lcom/zebra/sdk/settings/internal/SettingType;

    if-ne p1, v0, :cond_0

    move-object p1, v1

    check-cast p1, Lcom/zebra/sdk/comm/snmp/internal/SnmpSet;

    new-instance v0, Luk/co/westhawk/snmp/stack/AsnOctets;

    invoke-direct {v0, p3}, Luk/co/westhawk/snmp/stack/AsnOctets;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/zebra/sdk/comm/snmp/internal/SnmpSet;->init(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/zebra/sdk/comm/snmp/internal/Snmp;->type:Lcom/zebra/sdk/settings/internal/SettingType;

    sget-object v0, Lcom/zebra/sdk/settings/internal/SettingType;->ENUM:Lcom/zebra/sdk/settings/internal/SettingType;

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/zebra/sdk/comm/snmp/internal/Snmp;->type:Lcom/zebra/sdk/settings/internal/SettingType;

    sget-object v0, Lcom/zebra/sdk/settings/internal/SettingType;->INTEGER:Lcom/zebra/sdk/settings/internal/SettingType;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    const-string p2, "Invalid setting type"

    invoke-direct {p1, p2}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    move-object p1, v1

    check-cast p1, Lcom/zebra/sdk/comm/snmp/internal/SnmpSet;

    new-instance v0, Luk/co/westhawk/snmp/stack/AsnInteger;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-direct {v0, p3}, Luk/co/westhawk/snmp/stack/AsnInteger;-><init>(I)V

    goto :goto_0

    :goto_2
    invoke-virtual {v1}, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->sendRequest()V

    invoke-virtual {v1}, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->getPdu()Luk/co/westhawk/snmp/stack/Pdu;

    move-result-object p1

    invoke-virtual {p1}, Luk/co/westhawk/snmp/stack/Pdu;->waitForSelf()Z

    invoke-virtual {p1}, Luk/co/westhawk/snmp/stack/Pdu;->isTimedOut()Z

    move-result p1

    invoke-virtual {v1}, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->destroy()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_3

    invoke-virtual {v1}, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->destroy()V

    return-void

    :cond_3
    :try_start_2
    new-instance p1, Lcom/zebra/sdk/comm/snmp/internal/SnmpTimeoutException;

    invoke-direct {p1}, Lcom/zebra/sdk/comm/snmp/internal/SnmpTimeoutException;-><init>()V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_3
    :try_start_3
    new-instance p2, Lcom/zebra/sdk/comm/snmp/internal/OidNotFoundException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/snmp/internal/OidNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->destroy()V

    :cond_4
    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method
