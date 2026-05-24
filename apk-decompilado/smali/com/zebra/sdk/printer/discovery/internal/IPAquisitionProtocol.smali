.class public final enum Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

.field public static final enum ALL:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

.field public static final enum BOOTP:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

.field public static final enum DHCP:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

.field public static final enum DHCP_AND_BOOTP:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

.field public static final enum GLEAN:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

.field public static final enum RARP:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

.field public static final enum STATIC:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;


# instance fields
.field private final ipProtocolString:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    const-string v1, "ALL"

    const/4 v2, 0x0

    const-string v3, "All"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->ALL:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    const-string v1, "GLEAN"

    const/4 v3, 0x1

    const-string v4, "Glean"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->GLEAN:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    const-string v1, "RARP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v1}, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->RARP:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    const-string v1, "BOOTP"

    const/4 v5, 0x3

    const-string v6, "Bootp"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->BOOTP:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    const-string v1, "DHCP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6, v1}, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->DHCP:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    const-string v1, "DHCP_AND_BOOTP"

    const/4 v7, 0x5

    const-string v8, "DHCP and Bootp"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->DHCP_AND_BOOTP:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    const-string v1, "STATIC"

    const/4 v8, 0x6

    const-string v9, "Static"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->STATIC:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    sget-object v9, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->ALL:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    aput-object v9, v1, v2

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->GLEAN:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->RARP:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    aput-object v2, v1, v4

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->BOOTP:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    aput-object v2, v1, v5

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->DHCP:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    aput-object v2, v1, v6

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->DHCP_AND_BOOTP:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->$VALUES:[Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

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

    iput p3, p0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->value:I

    iput-object p4, p0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->ipProtocolString:Ljava/lang/String;

    return-void
.end method

.method public static intToEnum(I)Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;
    .locals 6

    sget-object v0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->ALL:Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    invoke-static {}, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->values()[Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->bitFieldValue()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;
    .locals 1

    const-class v0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    return-object p0
.end method

.method public static values()[Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->$VALUES:[Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    invoke-virtual {v0}, [Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;

    return-object v0
.end method


# virtual methods
.method public bitFieldValue()I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/IPAquisitionProtocol;->ipProtocolString:Ljava/lang/String;

    return-object v0
.end method
