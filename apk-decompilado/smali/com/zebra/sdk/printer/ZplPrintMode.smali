.class public final enum Lcom/zebra/sdk/printer/ZplPrintMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/sdk/printer/ZplPrintMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/sdk/printer/ZplPrintMode;

.field public static final enum APPLICATOR:Lcom/zebra/sdk/printer/ZplPrintMode;

.field public static final enum CUTTER:Lcom/zebra/sdk/printer/ZplPrintMode;

.field public static final enum DELAYED_CUT:Lcom/zebra/sdk/printer/ZplPrintMode;

.field public static final enum KIOSK:Lcom/zebra/sdk/printer/ZplPrintMode;

.field public static final enum LINERLESS_PEEL:Lcom/zebra/sdk/printer/ZplPrintMode;

.field public static final enum LINERLESS_REWIND:Lcom/zebra/sdk/printer/ZplPrintMode;

.field public static final enum PARTIAL_CUTTER:Lcom/zebra/sdk/printer/ZplPrintMode;

.field public static final enum PEEL_OFF:Lcom/zebra/sdk/printer/ZplPrintMode;

.field public static final enum REWIND:Lcom/zebra/sdk/printer/ZplPrintMode;

.field public static final enum RFID:Lcom/zebra/sdk/printer/ZplPrintMode;

.field public static final enum TEAR_OFF:Lcom/zebra/sdk/printer/ZplPrintMode;

.field public static final enum UNKNOWN:Lcom/zebra/sdk/printer/ZplPrintMode;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/zebra/sdk/printer/ZplPrintMode;

    const-string v1, "REWIND"

    const/4 v2, 0x0

    const-string v3, "Rewind"

    invoke-direct {v0, v1, v2, v3}, Lcom/zebra/sdk/printer/ZplPrintMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/ZplPrintMode;->REWIND:Lcom/zebra/sdk/printer/ZplPrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/ZplPrintMode;

    const-string v1, "PEEL_OFF"

    const/4 v3, 0x1

    const-string v4, "Peel-Off"

    invoke-direct {v0, v1, v3, v4}, Lcom/zebra/sdk/printer/ZplPrintMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/ZplPrintMode;->PEEL_OFF:Lcom/zebra/sdk/printer/ZplPrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/ZplPrintMode;

    const-string v1, "TEAR_OFF"

    const/4 v4, 0x2

    const-string v5, "Tear-Off"

    invoke-direct {v0, v1, v4, v5}, Lcom/zebra/sdk/printer/ZplPrintMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/ZplPrintMode;->TEAR_OFF:Lcom/zebra/sdk/printer/ZplPrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/ZplPrintMode;

    const-string v1, "CUTTER"

    const/4 v5, 0x3

    const-string v6, "Cutter"

    invoke-direct {v0, v1, v5, v6}, Lcom/zebra/sdk/printer/ZplPrintMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/ZplPrintMode;->CUTTER:Lcom/zebra/sdk/printer/ZplPrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/ZplPrintMode;

    const-string v1, "APPLICATOR"

    const/4 v6, 0x4

    const-string v7, "Applicator"

    invoke-direct {v0, v1, v6, v7}, Lcom/zebra/sdk/printer/ZplPrintMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/ZplPrintMode;->APPLICATOR:Lcom/zebra/sdk/printer/ZplPrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/ZplPrintMode;

    const-string v1, "DELAYED_CUT"

    const/4 v7, 0x5

    const-string v8, "Delayed Cut"

    invoke-direct {v0, v1, v7, v8}, Lcom/zebra/sdk/printer/ZplPrintMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/ZplPrintMode;->DELAYED_CUT:Lcom/zebra/sdk/printer/ZplPrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/ZplPrintMode;

    const-string v1, "LINERLESS_PEEL"

    const/4 v8, 0x6

    const-string v9, "Linerless Peel"

    invoke-direct {v0, v1, v8, v9}, Lcom/zebra/sdk/printer/ZplPrintMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/ZplPrintMode;->LINERLESS_PEEL:Lcom/zebra/sdk/printer/ZplPrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/ZplPrintMode;

    const-string v1, "LINERLESS_REWIND"

    const/4 v9, 0x7

    const-string v10, "Linerless Rewind"

    invoke-direct {v0, v1, v9, v10}, Lcom/zebra/sdk/printer/ZplPrintMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/ZplPrintMode;->LINERLESS_REWIND:Lcom/zebra/sdk/printer/ZplPrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/ZplPrintMode;

    const-string v1, "PARTIAL_CUTTER"

    const/16 v10, 0x8

    const-string v11, "Partial Cutter"

    invoke-direct {v0, v1, v10, v11}, Lcom/zebra/sdk/printer/ZplPrintMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/ZplPrintMode;->PARTIAL_CUTTER:Lcom/zebra/sdk/printer/ZplPrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/ZplPrintMode;

    const-string v1, "RFID"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v1}, Lcom/zebra/sdk/printer/ZplPrintMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/ZplPrintMode;->RFID:Lcom/zebra/sdk/printer/ZplPrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/ZplPrintMode;

    const-string v1, "KIOSK"

    const/16 v12, 0xa

    const-string v13, "Kiosk"

    invoke-direct {v0, v1, v12, v13}, Lcom/zebra/sdk/printer/ZplPrintMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/ZplPrintMode;->KIOSK:Lcom/zebra/sdk/printer/ZplPrintMode;

    new-instance v0, Lcom/zebra/sdk/printer/ZplPrintMode;

    const-string v1, "UNKNOWN"

    const/16 v13, 0xb

    const-string v14, "Unknown"

    invoke-direct {v0, v1, v13, v14}, Lcom/zebra/sdk/printer/ZplPrintMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/ZplPrintMode;->UNKNOWN:Lcom/zebra/sdk/printer/ZplPrintMode;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/zebra/sdk/printer/ZplPrintMode;

    sget-object v14, Lcom/zebra/sdk/printer/ZplPrintMode;->REWIND:Lcom/zebra/sdk/printer/ZplPrintMode;

    aput-object v14, v1, v2

    sget-object v2, Lcom/zebra/sdk/printer/ZplPrintMode;->PEEL_OFF:Lcom/zebra/sdk/printer/ZplPrintMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/printer/ZplPrintMode;->TEAR_OFF:Lcom/zebra/sdk/printer/ZplPrintMode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/zebra/sdk/printer/ZplPrintMode;->CUTTER:Lcom/zebra/sdk/printer/ZplPrintMode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/zebra/sdk/printer/ZplPrintMode;->APPLICATOR:Lcom/zebra/sdk/printer/ZplPrintMode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/zebra/sdk/printer/ZplPrintMode;->DELAYED_CUT:Lcom/zebra/sdk/printer/ZplPrintMode;

    aput-object v2, v1, v7

    sget-object v2, Lcom/zebra/sdk/printer/ZplPrintMode;->LINERLESS_PEEL:Lcom/zebra/sdk/printer/ZplPrintMode;

    aput-object v2, v1, v8

    sget-object v2, Lcom/zebra/sdk/printer/ZplPrintMode;->LINERLESS_REWIND:Lcom/zebra/sdk/printer/ZplPrintMode;

    aput-object v2, v1, v9

    sget-object v2, Lcom/zebra/sdk/printer/ZplPrintMode;->PARTIAL_CUTTER:Lcom/zebra/sdk/printer/ZplPrintMode;

    aput-object v2, v1, v10

    sget-object v2, Lcom/zebra/sdk/printer/ZplPrintMode;->RFID:Lcom/zebra/sdk/printer/ZplPrintMode;

    aput-object v2, v1, v11

    sget-object v2, Lcom/zebra/sdk/printer/ZplPrintMode;->KIOSK:Lcom/zebra/sdk/printer/ZplPrintMode;

    aput-object v2, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lcom/zebra/sdk/printer/ZplPrintMode;->$VALUES:[Lcom/zebra/sdk/printer/ZplPrintMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/zebra/sdk/printer/ZplPrintMode;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZplPrintMode;
    .locals 1

    const-class v0, Lcom/zebra/sdk/printer/ZplPrintMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/printer/ZplPrintMode;

    return-object p0
.end method

.method public static values()[Lcom/zebra/sdk/printer/ZplPrintMode;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/printer/ZplPrintMode;->$VALUES:[Lcom/zebra/sdk/printer/ZplPrintMode;

    invoke-virtual {v0}, [Lcom/zebra/sdk/printer/ZplPrintMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/sdk/printer/ZplPrintMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/ZplPrintMode;->name:Ljava/lang/String;

    return-object v0
.end method
