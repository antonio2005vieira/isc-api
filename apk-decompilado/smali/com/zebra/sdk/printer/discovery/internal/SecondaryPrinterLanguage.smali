.class public final enum Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

.field public static final enum SGD:Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

.field public static final enum SNMP:Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

.field public static final enum UNKNOWN:Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;


# instance fields
.field private final secondaryPrinterLanguageString:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const-string v3, "Unknown"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;->UNKNOWN:Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

    const-string v1, "SGD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v1}, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;->SGD:Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

    const-string v1, "SNMP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v1}, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;->SNMP:Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

    sget-object v5, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;->UNKNOWN:Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

    aput-object v5, v1, v2

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;->SGD:Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;->$VALUES:[Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

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

    iput p3, p0, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;->value:I

    iput-object p4, p0, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;->secondaryPrinterLanguageString:Ljava/lang/String;

    return-void
.end method

.method public static getEnumSetFromBitmask(I)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;->values()[Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

    move-result-object v0

    const-class v1, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;->bitFieldValue()I

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

.method public static intToEnum(I)Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;
    .locals 6

    sget-object v0, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;->UNKNOWN:Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

    invoke-static {}, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;->values()[Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;->bitFieldValue()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;
    .locals 1

    const-class v0, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

    return-object p0
.end method

.method public static values()[Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;->$VALUES:[Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

    invoke-virtual {v0}, [Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;

    return-object v0
.end method


# virtual methods
.method public bitFieldValue()I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/SecondaryPrinterLanguage;->secondaryPrinterLanguageString:Ljava/lang/String;

    return-object v0
.end method
