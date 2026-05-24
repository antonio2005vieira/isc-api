.class public final enum Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;
.super Ljava/lang/Enum;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

.field public static final enum CISDF:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

.field public static final enum DC:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

.field public static final enum DG:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

.field public static final enum DY:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

.field public static final enum DZ:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

.field public static final enum HZO:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

.field public static final enum MPF:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

.field public static final enum UNSUPPORTED:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    const-string v1, "UNSUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->UNSUPPORTED:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    const-string v1, "CISDF"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->CISDF:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    const-string v1, "DY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->DY:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    const-string v1, "DG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->DG:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    const-string v1, "DZ"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->DZ:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    const-string v1, "DC"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->DC:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    const-string v1, "HZO"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->HZO:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    const-string v1, "MPF"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->MPF:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    sget-object v10, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->UNSUPPORTED:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    aput-object v10, v1, v2

    sget-object v2, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->CISDF:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->DY:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->DG:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->DZ:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->DC:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->HZO:Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->$VALUES:[Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;
    .locals 1

    const-class v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    return-object p0
.end method

.method public static values()[Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->$VALUES:[Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    invoke-virtual {v0}, [Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/sdk/util/fileConversion/internal/PrinterWrappingType;

    return-object v0
.end method
