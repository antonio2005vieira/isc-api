.class public final enum Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;
.super Ljava/lang/Enum;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

.field public static final enum ASCII_HEX:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

.field public static final enum MIME_COMPRESSED:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

.field public static final enum MIME_UNCOMPRESSED:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

.field public static final enum OTHER:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

.field public static final enum RAW_BINARY:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    const-string v1, "MIME_COMPRESSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->MIME_COMPRESSED:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    const-string v1, "MIME_UNCOMPRESSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->MIME_UNCOMPRESSED:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    const-string v1, "RAW_BINARY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->RAW_BINARY:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    const-string v1, "ASCII_HEX"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->ASCII_HEX:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    new-instance v0, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    const-string v1, "OTHER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->OTHER:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    sget-object v7, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->MIME_COMPRESSED:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    aput-object v7, v1, v2

    sget-object v2, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->MIME_UNCOMPRESSED:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->RAW_BINARY:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    aput-object v2, v1, v4

    sget-object v2, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->ASCII_HEX:Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->$VALUES:[Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;
    .locals 1

    const-class v0, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    return-object p0
.end method

.method public static values()[Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->$VALUES:[Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    invoke-virtual {v0}, [Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/sdk/util/fileConversion/internal/DataFormatSpecifier;

    return-object v0
.end method
