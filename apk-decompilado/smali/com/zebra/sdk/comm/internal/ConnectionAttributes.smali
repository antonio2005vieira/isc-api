.class public Lcom/zebra/sdk/comm/internal/ConnectionAttributes;
.super Ljava/lang/Object;


# instance fields
.field public snmpGetCommunityName:Ljava/lang/String;

.field public snmpMaxRetries:I

.field public snmpSetCommunityName:Ljava/lang/String;

.field public snmpTimeoutGet:I

.field public snmpTimeoutSet:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "public"

    iput-object v0, p0, Lcom/zebra/sdk/comm/internal/ConnectionAttributes;->snmpSetCommunityName:Ljava/lang/String;

    iput-object v0, p0, Lcom/zebra/sdk/comm/internal/ConnectionAttributes;->snmpGetCommunityName:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/zebra/sdk/comm/internal/ConnectionAttributes;->snmpMaxRetries:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/zebra/sdk/comm/internal/ConnectionAttributes;->snmpTimeoutGet:I

    iput v0, p0, Lcom/zebra/sdk/comm/internal/ConnectionAttributes;->snmpTimeoutSet:I

    return-void
.end method
