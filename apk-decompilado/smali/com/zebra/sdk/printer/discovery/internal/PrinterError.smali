.class public final enum Lcom/zebra/sdk/printer/discovery/internal/PrinterError;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/sdk/printer/discovery/internal/PrinterError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

.field public static final enum BASIC_FORCED:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

.field public static final enum BASIC_RUNTIME_ERROR:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

.field public static final enum HEAD_OPEN:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

.field public static final enum INVALID_HEAD:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

.field public static final enum MEDIA_OUT:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

.field public static final enum MOTOR_OVERTEMP:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

.field public static final enum NONE:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

.field public static final enum PAPER_FEED_ERROR:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

.field public static final enum PAUSED:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

.field public static final enum PRINTHEAD_SHUTDOWN:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

.field public static final enum RIBBON_OUT:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

.field public static final enum THERMISTOR_FAULT:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;


# instance fields
.field private final bitFieldValue:I

.field private final printErrorString:Ljava/lang/String;

.field private final segment:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "None"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->NONE:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const-string v8, "MEDIA_OUT"

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x1

    const-string v12, "Paper Out"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->MEDIA_OUT:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const-string v2, "RIBBON_OUT"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-string v6, "Ribbon Out"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->RIBBON_OUT:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const-string v8, "HEAD_OPEN"

    const/4 v9, 0x3

    const/4 v11, 0x4

    const-string v12, "Head Open"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->HEAD_OPEN:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const-string v2, "PRINTHEAD_SHUTDOWN"

    const/4 v3, 0x4

    const/16 v5, 0x10

    const-string v6, "Printhead Shutdown"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->PRINTHEAD_SHUTDOWN:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const-string v8, "MOTOR_OVERTEMP"

    const/4 v9, 0x5

    const/16 v11, 0x20

    const-string v12, "Motor Overtemp"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->MOTOR_OVERTEMP:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const-string v2, "INVALID_HEAD"

    const/4 v3, 0x6

    const/16 v5, 0x80

    const-string v6, "Invalid Head"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->INVALID_HEAD:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const-string v8, "THERMISTOR_FAULT"

    const/4 v9, 0x7

    const/16 v11, 0x200

    const-string v12, "Thermistor Fault"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->THERMISTOR_FAULT:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const-string v2, "PAPER_FEED_ERROR"

    const/16 v3, 0x8

    const/16 v5, 0x4000

    const-string v6, "Paper Feed"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->PAPER_FEED_ERROR:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const-string v8, "PAUSED"

    const/16 v9, 0x9

    const/high16 v11, 0x10000

    const-string v12, "Paused"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->PAUSED:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const-string v2, "BASIC_RUNTIME_ERROR"

    const/16 v3, 0xa

    const/high16 v5, 0x100000

    const-string v6, "Basic Runtime Error"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->BASIC_RUNTIME_ERROR:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const-string v8, "BASIC_FORCED"

    const/16 v9, 0xb

    const/high16 v11, 0x200000

    const-string v12, "Basic Forced"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->BASIC_FORCED:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->NONE:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->MEDIA_OUT:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->RIBBON_OUT:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->HEAD_OPEN:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->PRINTHEAD_SHUTDOWN:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->MOTOR_OVERTEMP:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->INVALID_HEAD:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->THERMISTOR_FAULT:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->PAPER_FEED_ERROR:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->PAUSED:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->BASIC_RUNTIME_ERROR:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const/16 v2, 0xb

    aput-object v0, v1, v2

    sput-object v1, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->$VALUES:[Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

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

    iput p4, p0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->bitFieldValue:I

    iput p3, p0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->segment:I

    iput-object p5, p0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->printErrorString:Ljava/lang/String;

    return-void
.end method

.method public static getEnumSetFromBitmask(II)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Lcom/zebra/sdk/printer/discovery/internal/PrinterError;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->values()[Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    move-result-object v0

    const-class v1, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->bitFieldValue()I

    move-result v5

    and-int/2addr v5, p1

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->segment()I

    move-result v5

    if-ne v5, p0, :cond_0

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static intToEnum(II)Lcom/zebra/sdk/printer/discovery/internal/PrinterError;
    .locals 6

    sget-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->NONE:Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    invoke-static {}, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->values()[Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->bitFieldValue()I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v4}, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->segment()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/sdk/printer/discovery/internal/PrinterError;
    .locals 1

    const-class v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    return-object p0
.end method

.method public static values()[Lcom/zebra/sdk/printer/discovery/internal/PrinterError;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->$VALUES:[Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    invoke-virtual {v0}, [Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/sdk/printer/discovery/internal/PrinterError;

    return-object v0
.end method


# virtual methods
.method public bitFieldValue()I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->bitFieldValue:I

    return v0
.end method

.method public segment()I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->segment:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/PrinterError;->printErrorString:Ljava/lang/String;

    return-object v0
.end method
