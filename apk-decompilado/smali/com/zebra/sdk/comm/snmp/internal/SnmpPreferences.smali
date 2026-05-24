.class public Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;
.super Ljava/lang/Object;


# static fields
.field private static final MAXRETRIES:I = 0x4

.field private static final TIMEOUTGET:I = 0x5

.field private static final TIMEOUTSET:I = 0x5


# instance fields
.field private communityNameGet:Ljava/lang/String;

.field private communityNameSet:Ljava/lang/String;

.field private maxRetries:I

.field private timeoutGet:I

.field private timeoutSet:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "public"

    iput-object v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->communityNameGet:Ljava/lang/String;

    iput-object v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->communityNameSet:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->maxRetries:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->timeoutGet:I

    iput v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->timeoutSet:I

    return-void
.end method

.method public constructor <init>(Lcom/zebra/sdk/comm/internal/ConnectionAttributes;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "public"

    iput-object v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->communityNameGet:Ljava/lang/String;

    iput-object v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->communityNameSet:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->maxRetries:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->timeoutGet:I

    iput v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->timeoutSet:I

    iget-object v0, p1, Lcom/zebra/sdk/comm/internal/ConnectionAttributes;->snmpGetCommunityName:Ljava/lang/String;

    iput-object v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->communityNameGet:Ljava/lang/String;

    iget-object v0, p1, Lcom/zebra/sdk/comm/internal/ConnectionAttributes;->snmpSetCommunityName:Ljava/lang/String;

    iput-object v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->communityNameSet:Ljava/lang/String;

    iget v0, p1, Lcom/zebra/sdk/comm/internal/ConnectionAttributes;->snmpTimeoutGet:I

    iput v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->timeoutGet:I

    iget v0, p1, Lcom/zebra/sdk/comm/internal/ConnectionAttributes;->snmpTimeoutSet:I

    iput v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->timeoutSet:I

    iget p1, p1, Lcom/zebra/sdk/comm/internal/ConnectionAttributes;->snmpMaxRetries:I

    iput p1, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->maxRetries:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "public"

    iput-object v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->communityNameGet:Ljava/lang/String;

    iput-object v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->communityNameSet:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->maxRetries:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->timeoutGet:I

    iput v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->timeoutSet:I

    iput-object p1, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->communityNameGet:Ljava/lang/String;

    iput-object p2, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->communityNameSet:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommunityNameGet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->communityNameGet:Ljava/lang/String;

    return-object v0
.end method

.method public getCommunityNameSet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->communityNameSet:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxRetries()I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->maxRetries:I

    return v0
.end method

.method public getTimeoutGet()I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->timeoutGet:I

    return v0
.end method

.method public getTimeoutSet()I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->timeoutSet:I

    return v0
.end method

.method public setCommunityNameGet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->communityNameGet:Ljava/lang/String;

    return-void
.end method

.method public setCommunityNameSet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->communityNameSet:Ljava/lang/String;

    return-void
.end method
