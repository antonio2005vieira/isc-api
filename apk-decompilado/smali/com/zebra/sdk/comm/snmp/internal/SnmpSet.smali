.class public Lcom/zebra/sdk/comm/snmp/internal/SnmpSet;
.super Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private timeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->getCommunityNameSet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->getMaxRetries()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/zebra/sdk/comm/snmp/internal/SnmpPreferences;->getTimeoutSet()I

    move-result p1

    iput p1, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpSet;->timeout:I

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->isWellFormedOid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/comm/snmp/internal/SnmpSet;->setPduInFlight(Z)V

    new-instance v0, Luk/co/westhawk/snmp/stack/SetPdu;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/snmp/internal/SnmpSet;->getContext()Luk/co/westhawk/snmp/stack/SnmpContext;

    move-result-object v1

    invoke-direct {v0, v1}, Luk/co/westhawk/snmp/stack/SetPdu;-><init>(Luk/co/westhawk/snmp/stack/SnmpContextBasisFace;)V

    iget v1, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpSet;->timeout:I

    iget v2, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpSet;->maxRetries:I

    invoke-static {v1, v2}, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->formTimeOut(II)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Luk/co/westhawk/snmp/stack/SetPdu;->setRetryIntervals([I)V

    check-cast p2, Luk/co/westhawk/snmp/stack/AsnObject;

    invoke-virtual {v0, p1, p2}, Luk/co/westhawk/snmp/stack/SetPdu;->addOid(Ljava/lang/String;Luk/co/westhawk/snmp/stack/AsnObject;)V

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/comm/snmp/internal/SnmpSet;->setPdu(Luk/co/westhawk/snmp/stack/Pdu;)V

    return-void
.end method
