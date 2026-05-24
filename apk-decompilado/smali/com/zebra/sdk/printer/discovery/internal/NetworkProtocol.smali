.class public final enum Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

.field public static final enum FTP:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

.field public static final enum HTTP:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

.field public static final enum LPD:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

.field public static final enum NONE:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

.field public static final enum POP3:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

.field public static final enum SMTP:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

.field public static final enum SNMP:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

.field public static final enum TCP_RAW:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

.field public static final enum TELNET:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

.field public static final enum UDP_RAW:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;


# instance fields
.field private final bitFieldValue:I

.field private final networkProtocolString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "None"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->NONE:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    const-string v1, "FTP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v1}, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->FTP:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    const-string v1, "LPD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v1}, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->LPD:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    const-string v1, "TCP_RAW"

    const/4 v5, 0x3

    const/4 v6, 0x4

    const-string v7, "TCP"

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->TCP_RAW:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    const-string v1, "UDP_RAW"

    const/16 v7, 0x8

    const-string v8, "UDP"

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->UDP_RAW:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    const-string v1, "HTTP"

    const/4 v8, 0x5

    const/16 v9, 0x10

    invoke-direct {v0, v1, v8, v9, v1}, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->HTTP:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    const-string v1, "SMTP"

    const/4 v9, 0x6

    const/16 v10, 0x20

    invoke-direct {v0, v1, v9, v10, v1}, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->SMTP:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    const-string v1, "POP3"

    const/4 v10, 0x7

    const/16 v11, 0x40

    invoke-direct {v0, v1, v10, v11, v1}, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->POP3:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    const-string v1, "SNMP"

    const/16 v11, 0x80

    invoke-direct {v0, v1, v7, v11, v1}, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->SNMP:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    const-string v1, "TELNET"

    const/16 v11, 0x9

    const/16 v12, 0x100

    const-string v13, "Telnet"

    invoke-direct {v0, v1, v11, v12, v13}, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->TELNET:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    sget-object v12, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->NONE:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    aput-object v12, v1, v2

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->FTP:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->LPD:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    aput-object v2, v1, v4

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->TCP_RAW:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    aput-object v2, v1, v5

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->UDP_RAW:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    aput-object v2, v1, v6

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->HTTP:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    aput-object v2, v1, v8

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->SMTP:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    aput-object v2, v1, v9

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->POP3:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    aput-object v2, v1, v10

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->SNMP:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    aput-object v2, v1, v7

    aput-object v0, v1, v11

    sput-object v1, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->$VALUES:[Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->bitFieldValue:I

    iput-object p4, p0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->networkProtocolString:Ljava/lang/String;

    return-void
.end method

.method public static getEnumSetFromBitmask(I)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->values()[Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    move-result-object v0

    const-class v1, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->bitFieldValue()I

    move-result v5

    and-int/2addr v5, p0

    if-eqz v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static intToEnum(I)Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;
    .locals 6

    sget-object v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->NONE:Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    invoke-static {}, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->values()[Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->bitFieldValue()I

    move-result v5

    if-ne v5, p0, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;
    .locals 1

    const-class v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    return-object p0
.end method

.method public static values()[Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->$VALUES:[Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    invoke-virtual {v0}, [Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;

    return-object v0
.end method


# virtual methods
.method public bitFieldValue()I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->bitFieldValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/NetworkProtocol;->networkProtocolString:Ljava/lang/String;

    return-object v0
.end method
