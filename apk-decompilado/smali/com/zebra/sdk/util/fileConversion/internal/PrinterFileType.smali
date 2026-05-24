.class public final enum Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;
.super Ljava/lang/Enum;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

.field public static final enum BMP:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

.field public static final enum FIRMWARE:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

.field public static final enum FONT:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

.field public static final enum NRD:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

.field public static final enum PAC:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

.field public static final enum PCX:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

.field public static final enum PRINTER_GRF:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

.field public static final enum PRINTER_PNG:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

.field public static final enum UNSUPPORTED:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

.field public static final enum ZPL:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;


# instance fields
.field private extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "UNSUPPORTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->UNSUPPORTED:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, ".PNG"

    aput-object v4, v3, v1

    const-string v4, "~DY_P"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "PRINTER_PNG"

    invoke-direct {v0, v4, v5, v3}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->PRINTER_PNG:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, ".GRF"

    aput-object v4, v3, v1

    const-string v4, "~DY_G"

    aput-object v4, v3, v5

    const-string v4, "PRINTER_GRF"

    invoke-direct {v0, v4, v2, v3}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->PRINTER_GRF:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    const-string v6, ".TTF"

    aput-object v6, v4, v1

    const-string v6, ".TTE"

    aput-object v6, v4, v5

    const-string v6, ".FNT"

    aput-object v6, v4, v2

    const-string v6, "~DY_E"

    const/4 v7, 0x3

    aput-object v6, v4, v7

    const-string v6, "~DY_T"

    const/4 v8, 0x4

    aput-object v6, v4, v8

    const-string v6, "FONT"

    invoke-direct {v0, v6, v7, v4}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->FONT:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    new-array v4, v5, [Ljava/lang/String;

    const-string v6, ".ZPL"

    aput-object v6, v4, v1

    const-string v6, "ZPL"

    invoke-direct {v0, v6, v8, v4}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->ZPL:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, ".NRD"

    aput-object v6, v4, v1

    const-string v6, "~DY_NRD"

    aput-object v6, v4, v5

    const-string v6, "NRD"

    invoke-direct {v0, v6, v3, v4}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->NRD:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, ".PAC"

    aput-object v6, v4, v1

    const-string v6, "~DY_PAC"

    aput-object v6, v4, v5

    const-string v6, "PAC"

    const/4 v9, 0x6

    invoke-direct {v0, v6, v9, v4}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->PAC:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    new-array v4, v1, [Ljava/lang/String;

    const-string v6, "FIRMWARE"

    const/4 v10, 0x7

    invoke-direct {v0, v6, v10, v4}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->FIRMWARE:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, ".PCX"

    aput-object v6, v4, v1

    const-string v6, "~DY_X"

    aput-object v6, v4, v5

    const-string v6, "PCX"

    const/16 v11, 0x8

    invoke-direct {v0, v6, v11, v4}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->PCX:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, ".BMP"

    aput-object v6, v4, v1

    const-string v6, "~DY_B"

    aput-object v6, v4, v5

    const-string v6, "BMP"

    const/16 v12, 0x9

    invoke-direct {v0, v6, v12, v4}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->BMP:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    const/16 v4, 0xa

    new-array v4, v4, [Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    sget-object v6, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->UNSUPPORTED:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    aput-object v6, v4, v1

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->PRINTER_PNG:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    aput-object v1, v4, v5

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->PRINTER_GRF:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    aput-object v1, v4, v2

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->FONT:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    aput-object v1, v4, v7

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->ZPL:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    aput-object v1, v4, v8

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->NRD:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    aput-object v1, v4, v3

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->PAC:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    aput-object v1, v4, v9

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->FIRMWARE:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    aput-object v1, v4, v10

    sget-object v1, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->PCX:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    aput-object v1, v4, v11

    aput-object v0, v4, v12

    sput-object v4, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->$VALUES:[Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->extensions:Ljava/util/List;

    return-void
.end method

.method public static getUnwrappedType(Ljava/lang/String;)Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;
    .locals 7

    invoke-static {}, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->values()[Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->extensions:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->extensions:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3

    :cond_2
    sget-object p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->UNSUPPORTED:Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;
    .locals 1

    const-class v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    return-object p0
.end method

.method public static values()[Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->$VALUES:[Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    invoke-virtual {v0}, [Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/sdk/util/fileConversion/internal/PrinterFileType;

    return-object v0
.end method
