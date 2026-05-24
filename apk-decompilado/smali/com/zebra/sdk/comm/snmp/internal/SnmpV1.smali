.class public abstract Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Observer;


# static fields
.field public static final default_retry_interval:[I

.field public static port:I = 0xa1


# instance fields
.field private context:Luk/co/westhawk/snmp/stack/SnmpContext;

.field private host:Ljava/lang/String;

.field protected maxRetries:I

.field private pdu:Luk/co/westhawk/snmp/stack/Pdu;

.field private pduInFlight:Z

.field private socketType:Ljava/lang/String;

.field private var:Luk/co/westhawk/snmp/stack/varbind;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->default_retry_interval:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1f4
        0x3e8
        0x7d0
        0x1388
        0x1388
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "public"

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1}, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Standard"

    iput-object v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->socketType:Ljava/lang/String;

    iput-object p1, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->host:Ljava/lang/String;

    iput p3, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->maxRetries:I

    invoke-virtual {p0, p2}, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->setupSnmpContext(Ljava/lang/String;)V

    return-void
.end method

.method public static formTimeOut(II)[I
    .locals 4

    if-lez p1, :cond_2

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    mul-int/lit16 v2, p0, 0x3e8

    div-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x1

    mul-int v2, v2, v3

    aput v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    sget-object p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->default_retry_interval:[I

    return-object p0
.end method

.method public static isWellFormedOid(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v0, Luk/co/westhawk/snmp/stack/AsnObjectId;

    invoke-direct {v0, p0}, Luk/co/westhawk/snmp/stack/AsnObjectId;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad oid: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null oid"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->getContext()Luk/co/westhawk/snmp/stack/SnmpContext;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/westhawk/snmp/stack/SnmpContext;->destroy()V

    return-void
.end method

.method public getContext()Luk/co/westhawk/snmp/stack/SnmpContext;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->context:Luk/co/westhawk/snmp/stack/SnmpContext;

    return-object v0
.end method

.method public getPdu()Luk/co/westhawk/snmp/stack/Pdu;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->pdu:Luk/co/westhawk/snmp/stack/Pdu;

    return-object v0
.end method

.method public getReturnOid()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/snmp/internal/OidNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->var:Luk/co/westhawk/snmp/stack/varbind;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luk/co/westhawk/snmp/stack/varbind;->getOid()Luk/co/westhawk/snmp/stack/AsnObjectId;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/westhawk/snmp/stack/AsnObjectId;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/snmp/internal/OidNotFoundException;

    invoke-direct {v0}, Lcom/zebra/sdk/comm/snmp/internal/OidNotFoundException;-><init>()V

    throw v0
.end method

.method public getReturnValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/snmp/internal/OidNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->var:Luk/co/westhawk/snmp/stack/varbind;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luk/co/westhawk/snmp/stack/varbind;->getValue()Luk/co/westhawk/snmp/stack/AsnObject;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/snmp/internal/OidNotFoundException;

    invoke-direct {v0}, Lcom/zebra/sdk/comm/snmp/internal/OidNotFoundException;-><init>()V

    throw v0
.end method

.method public sendRequest()V
    .locals 1

    iget-boolean v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->pduInFlight:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->pduInFlight:Z

    iget-object v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->pdu:Luk/co/westhawk/snmp/stack/Pdu;

    invoke-virtual {v0, p0}, Luk/co/westhawk/snmp/stack/Pdu;->addObserver(Ljava/util/Observer;)V

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->pdu:Luk/co/westhawk/snmp/stack/Pdu;

    invoke-virtual {v0}, Luk/co/westhawk/snmp/stack/Pdu;->send()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Luk/co/westhawk/snmp/stack/PduException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Luk/co/westhawk/snmp/stack/PduException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setContext(Luk/co/westhawk/snmp/stack/SnmpContext;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->context:Luk/co/westhawk/snmp/stack/SnmpContext;

    return-void
.end method

.method public setPdu(Luk/co/westhawk/snmp/stack/Pdu;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->pdu:Luk/co/westhawk/snmp/stack/Pdu;

    return-void
.end method

.method public setPduInFlight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->pduInFlight:Z

    return-void
.end method

.method protected setupSnmpContext(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Luk/co/westhawk/snmp/stack/SnmpContext;

    iget-object v1, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->host:Ljava/lang/String;

    sget v2, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->port:I

    iget-object v3, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->socketType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Luk/co/westhawk/snmp/stack/SnmpContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->context:Luk/co/westhawk/snmp/stack/SnmpContext;

    invoke-virtual {v0, p1}, Luk/co/westhawk/snmp/stack/SnmpContext;->setCommunity(Ljava/lang/String;)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Luk/co/westhawk/snmp/stack/Pdu;

    invoke-virtual {p1}, Luk/co/westhawk/snmp/stack/Pdu;->getErrorStatus()I

    move-result p1

    if-nez p1, :cond_0

    check-cast p2, Luk/co/westhawk/snmp/stack/varbind;

    iput-object p2, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->var:Luk/co/westhawk/snmp/stack/varbind;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zebra/sdk/comm/snmp/internal/SnmpV1;->var:Luk/co/westhawk/snmp/stack/varbind;

    :goto_0
    return-void
.end method
