.class public final enum Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

.field public static final enum CPCL:Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

.field public static final enum EPL:Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

.field public static final enum UNKNOWN:Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

.field public static final enum ZPL:Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;


# instance fields
.field private final printerLanguageString:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const-string v3, "Unknown"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;->UNKNOWN:Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

    const-string v1, "ZPL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v1}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;->ZPL:Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

    const-string v1, "CPCL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v1}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;->CPCL:Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

    const-string v1, "EPL"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6, v1}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;->EPL:Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

    new-array v1, v6, [Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

    sget-object v6, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;->UNKNOWN:Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

    aput-object v6, v1, v2

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;->ZPL:Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;->CPCL:Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;->$VALUES:[Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

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

    iput p3, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;->value:I

    iput-object p4, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;->printerLanguageString:Ljava/lang/String;

    return-void
.end method

.method public static getEnumSetFromBitmask(I)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;->values()[Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

    move-result-object v0

    const-class v1, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;->bitFieldValue()I

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

.method public static intToEnum(I)Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;
    .locals 6

    sget-object v0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;->UNKNOWN:Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

    invoke-static {}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;->values()[Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;->bitFieldValue()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;
    .locals 1

    const-class v0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

    return-object p0
.end method

.method public static values()[Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;->$VALUES:[Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

    invoke-virtual {v0}, [Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;

    return-object v0
.end method


# virtual methods
.method public bitFieldValue()I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/DiscoveredPrinterLanguage;->printerLanguageString:Ljava/lang/String;

    return-object v0
.end method
