.class public Lcom/zebra/sdk/printer/internal/PortStatus;
.super Ljava/lang/Object;


# static fields
.field private static final PORT_STATUS_OID:Ljava/lang/String; = "1.3.6.1.2.1.6.13.1.1"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPortStatus(Lcom/zebra/sdk/comm/Connection;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zebra/sdk/comm/Connection;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/TcpPortStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lcom/zebra/sdk/printer/internal/PortStatus;->getPortStatusViaSnmp(Lcom/zebra/sdk/comm/Connection;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/internal/PortStatus;->getPortStatusViaSGD(Lcom/zebra/sdk/comm/Connection;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getPortStatusViaSGD(Lcom/zebra/sdk/comm/Connection;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zebra/sdk/comm/Connection;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zebra/sdk/printer/TcpPortStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "ip.netstat"

    invoke-static {v1, p0}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x2

    if-le v1, v2, :cond_5

    :goto_0
    array-length v1, p0

    if-ge v2, v1, :cond_4

    aget-object v1, p0, v2

    const-string v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x4

    if-le v3, v4, :cond_3

    const/4 v3, 0x0

    aget-object v5, v1, v3

    const-string v6, "tcp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    array-length v5, v1

    const/4 v6, 0x5

    if-le v5, v6, :cond_0

    aget-object v5, v1, v6

    goto :goto_1

    :cond_0
    const-string v5, ""

    :goto_1
    move-object v11, v5

    const/4 v5, 0x3

    aget-object v6, v1, v5

    aget-object v5, v1, v5

    const/16 v7, 0x2e

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aget-object v6, v1, v4

    aget-object v8, v1, v4

    invoke-virtual {v8, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v6, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v6, "*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v3, "0.0.0.0"

    :cond_1
    move-object v9, v3

    aget-object v3, v1, v4

    aget-object v1, v1, v4

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "0"

    :cond_2
    move-object v10, v1

    new-instance v1, Lcom/zebra/sdk/printer/TcpPortStatus;

    invoke-static {v5}, Lcom/zebra/sdk/printer/internal/PortStatus;->lookupType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v1

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lcom/zebra/sdk/printer/TcpPortStatus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/zebra/sdk/printer/internal/PortStatus$1;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/PortStatus$1;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0

    :cond_5
    new-instance p0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v0, "Port status could not be obtained."

    invoke-direct {p0, v0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static getPortStatusViaSnmp(Lcom/zebra/sdk/comm/Connection;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zebra/sdk/comm/Connection;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zebra/sdk/printer/TcpPortStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    instance-of v1, p0, Lcom/zebra/sdk/comm/IpAddressable;

    if-eqz v1, :cond_3

    const-string v1, "1.3.6.1.2.1.6.13.1.1.([0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}).([0-9]{1,5}).([0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}).([0-9]{1,5})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    new-instance v2, Lcom/zebra/sdk/comm/internal/ConnectionAttributeProvider;

    invoke-direct {v2}, Lcom/zebra/sdk/comm/internal/ConnectionAttributeProvider;-><init>()V

    invoke-virtual {v2, p0}, Lcom/zebra/sdk/comm/internal/ConnectionAttributeProvider;->getAttributes(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/comm/internal/ConnectionAttributes;

    move-result-object v2

    iput-object p1, v2, Lcom/zebra/sdk/comm/internal/ConnectionAttributes;->snmpGetCommunityName:Ljava/lang/String;

    check-cast p0, Lcom/zebra/sdk/comm/IpAddressable;

    invoke-interface {p0}, Lcom/zebra/sdk/comm/IpAddressable;->getAddress()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    new-instance v3, Lcom/zebra/sdk/comm/snmp/internal/SnmpGetNext;

    new-instance v4, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;

    invoke-direct {v4, v2}, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;-><init>(Lcom/zebra/sdk/comm/internal/ConnectionAttributes;)V

    invoke-direct {v3, p0, v4}, Lcom/zebra/sdk/comm/snmp/internal/SnmpGetNext;-><init>(Ljava/lang/String;Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;)V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/snmp/internal/OidNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string p0, "1.3.6.1.2.1.6.13.1.1"

    const-string p1, "KNOWN"

    :goto_0
    :try_start_1
    const-string v2, "UNKNOWN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v3, p0}, Lcom/zebra/sdk/comm/snmp/internal/SnmpGetNext;->init(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/zebra/sdk/comm/snmp/internal/SnmpGetNext;->sendRequest()V

    invoke-virtual {v3}, Lcom/zebra/sdk/comm/snmp/internal/SnmpGetNext;->getPdu()Luk/co/westhawk/snmp/stack/Pdu;

    move-result-object p0

    invoke-virtual {p0}, Luk/co/westhawk/snmp/stack/Pdu;->waitForSelf()Z

    invoke-virtual {v3}, Lcom/zebra/sdk/comm/snmp/internal/SnmpGetNext;->getReturnOid()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {v3}, Lcom/zebra/sdk/comm/snmp/internal/SnmpGetNext;->getReturnValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zebra/sdk/printer/internal/PortStatus;->lookupStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    new-instance p1, Lcom/zebra/sdk/printer/TcpPortStatus;

    invoke-static {v5}, Lcom/zebra/sdk/printer/internal/PortStatus;->lookupType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, p1

    move-object v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/zebra/sdk/printer/TcpPortStatus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/zebra/sdk/comm/snmp/internal/OidNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    move-object p1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/zebra/sdk/comm/snmp/internal/SnmpGetNext;->destroy()V

    return-object v0

    :catchall_0
    move-exception p0

    move-object p1, v3

    goto :goto_3

    :catch_0
    move-exception p0

    move-object p1, v3

    goto :goto_1

    :catch_1
    move-exception p0

    move-object p1, v3

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    :goto_1
    :try_start_2
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception p0

    :goto_2
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/snmp/internal/OidNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/snmp/internal/SnmpGetNext;->destroy()V

    :cond_2
    throw p0

    :cond_3
    new-instance p0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string p1, "Connection does not support SNMP"

    invoke-direct {p0, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method private static lookupStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "UNKNOWN"

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p0, "TIME_WAIT"

    goto :goto_0

    :pswitch_1
    const-string p0, "LAST_ACK"

    goto :goto_0

    :pswitch_2
    const-string p0, "CLOSING"

    goto :goto_0

    :pswitch_3
    const-string p0, "CLOSED_WAIT"

    goto :goto_0

    :pswitch_4
    const-string p0, "FIN_WAIT_2"

    goto :goto_0

    :pswitch_5
    const-string p0, "FIN_WAIT_1"

    goto :goto_0

    :pswitch_6
    const-string p0, "ESTABLISHED"

    goto :goto_0

    :pswitch_7
    const-string p0, "SYN_RCVD"

    goto :goto_0

    :pswitch_8
    const-string p0, "SYN_SENT"

    goto :goto_0

    :pswitch_9
    const-string p0, "LISTEN"

    goto :goto_0

    :pswitch_a
    const-string p0, "CLOSED"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    :catch_0
    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static lookupType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x14

    const-string v2, "FTP"

    if-eq p0, v1, :cond_8

    const/16 v1, 0x15

    if-eq p0, v1, :cond_7

    const/16 v1, 0x17

    if-eq p0, v1, :cond_6

    const/16 v1, 0x19

    if-eq p0, v1, :cond_5

    const/16 v1, 0x50

    if-eq p0, v1, :cond_4

    const/16 v1, 0x6e

    if-eq p0, v1, :cond_3

    const/16 v1, 0x203

    if-eq p0, v1, :cond_2

    const/16 v1, 0x277

    if-eq p0, v1, :cond_1

    const/16 v1, 0x17d5

    const-string v2, "RAW"

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v1, 0x238c

    if-lt p0, v1, :cond_9

    const/16 v1, 0x2398

    if-gt p0, v1, :cond_9

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "IPP"

    :goto_3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LPD"

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "POP3"

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "HTTP"

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SMTP"

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Telnet"

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_9
    :goto_4
    return-object v0
.end method
