.class public final enum Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

.field public static final enum BATTERY_LOW:Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

.field public static final enum HEAD_UNDER_TEMP:Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

.field public static final enum NONE:Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

.field public static final enum RFID_ERROR:Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

.field public static final enum RIBBON_IN:Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;


# instance fields
.field private final bitFieldValue:I

.field private final printerWarningString:Ljava/lang/String;

.field private final segment:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "None"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->NONE:Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    const-string v8, "HEAD_UNDER_TEMP"

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v11, 0x1000

    const-string v12, "Head Cold"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->HEAD_UNDER_TEMP:Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    const-string v2, "RIBBON_IN"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/16 v5, 0x2000

    const-string v6, "Ribbon In"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->RIBBON_IN:Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    const-string v8, "BATTERY_LOW"

    const/4 v9, 0x3

    const/16 v11, 0x4000

    const-string v12, "Battery Low"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->BATTERY_LOW:Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    const-string v2, "RFID_ERROR"

    const/4 v3, 0x4

    const v5, 0x8000

    const-string v6, "RFID Error"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->RFID_ERROR:Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->NONE:Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->HEAD_UNDER_TEMP:Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->RIBBON_IN:Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->BATTERY_LOW:Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->$VALUES:[Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p4, p0, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->bitFieldValue:I

    iput p3, p0, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->segment:I

    iput-object p5, p0, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->printerWarningString:Ljava/lang/String;

    return-void
.end method

.method public static getEnumSetFromBitmask(II)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->values()[Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    move-result-object v0

    const-class v1, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->bitFieldValue()I

    move-result v5

    and-int/2addr v5, p1

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->segment()I

    move-result v5

    if-ne v5, p0, :cond_0

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static intToEnum(II)Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;
    .locals 6

    sget-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->NONE:Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    invoke-static {}, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->values()[Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->bitFieldValue()I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v4}, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->segment()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;
    .locals 1

    const-class v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    return-object p0
.end method

.method public static values()[Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->$VALUES:[Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    invoke-virtual {v0}, [Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;

    return-object v0
.end method


# virtual methods
.method public bitFieldValue()I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->bitFieldValue:I

    return v0
.end method

.method public segment()I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->segment:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/PrinterWarning;->printerWarningString:Ljava/lang/String;

    return-object v0
.end method
