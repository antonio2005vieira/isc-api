.class public final enum Lcom/zebra/sdk/printer/discovery/internal/PrintMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/sdk/printer/discovery/internal/PrintMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

.field public static final enum APPLICATOR:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

.field public static final enum CUTTER:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

.field public static final enum DELAYED_CUT:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

.field public static final enum LINERLESS_PEEL:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

.field public static final enum LINERLESS_REWIND:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

.field public static final enum LINERLESS_TEAR:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

.field public static final enum PACE:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

.field public static final enum PARTIAL_CUTTER:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

.field public static final enum PEEL_OFF:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

.field public static final enum REWIND:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

.field public static final enum RFID:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

.field public static final enum TEAR_OFF:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;


# instance fields
.field private final printModeString:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    const-string v1, "REWIND"

    const/4 v2, 0x0

    const-string v3, "Rewind"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->REWIND:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    const-string v1, "TEAR_OFF"

    const/4 v3, 0x1

    const-string v4, "Tear Off"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->TEAR_OFF:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    const-string v1, "PEEL_OFF"

    const/4 v4, 0x2

    const-string v5, "Peel Off"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->PEEL_OFF:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    const-string v1, "PACE"

    const/4 v5, 0x3

    const-string v6, "Pace"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->PACE:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    const-string v1, "CUTTER"

    const/4 v6, 0x4

    const-string v7, "Cutter"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->CUTTER:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    const-string v1, "DELAYED_CUT"

    const/4 v7, 0x5

    const-string v8, "Delayed Cuts"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->DELAYED_CUT:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    const-string v1, "APPLICATOR"

    const/4 v8, 0x6

    const-string v9, "Applicator"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->APPLICATOR:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    const-string v1, "LINERLESS_PEEL"

    const/4 v9, 0x7

    const-string v10, "Linerless Peel"

    invoke-direct {v0, v1, v9, v9, v10}, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->LINERLESS_PEEL:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    const-string v1, "LINERLESS_REWIND"

    const/16 v10, 0x8

    const-string v11, "Linerless Rewind"

    invoke-direct {v0, v1, v10, v10, v11}, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->LINERLESS_REWIND:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    const-string v1, "PARTIAL_CUTTER"

    const/16 v11, 0x9

    const-string v12, "Partial Cutter"

    invoke-direct {v0, v1, v11, v11, v12}, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->PARTIAL_CUTTER:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    const-string v1, "RFID"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12, v1}, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->RFID:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    const-string v1, "LINERLESS_TEAR"

    const/16 v13, 0xb

    const-string v14, "Linerless Tear"

    invoke-direct {v0, v1, v13, v13, v14}, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->LINERLESS_TEAR:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    sget-object v14, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->REWIND:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    aput-object v14, v1, v2

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->TEAR_OFF:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->PEEL_OFF:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->PACE:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->CUTTER:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->DELAYED_CUT:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    aput-object v2, v1, v7

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->APPLICATOR:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    aput-object v2, v1, v8

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->LINERLESS_PEEL:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    aput-object v2, v1, v9

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->LINERLESS_REWIND:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    aput-object v2, v1, v10

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->PARTIAL_CUTTER:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    aput-object v2, v1, v11

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->RFID:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    aput-object v2, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->$VALUES:[Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

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

    iput p3, p0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->value:I

    iput-object p4, p0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->printModeString:Ljava/lang/String;

    return-void
.end method

.method public static intToEnum(I)Lcom/zebra/sdk/printer/discovery/internal/PrintMode;
    .locals 6

    sget-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->REWIND:Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    invoke-static {}, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->values()[Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->value()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/sdk/printer/discovery/internal/PrintMode;
    .locals 1

    const-class v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    return-object p0
.end method

.method public static values()[Lcom/zebra/sdk/printer/discovery/internal/PrintMode;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->$VALUES:[Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    invoke-virtual {v0}, [Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/sdk/printer/discovery/internal/PrintMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->printModeString:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/printer/discovery/internal/PrintMode;->value:I

    return v0
.end method
