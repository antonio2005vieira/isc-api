.class public final enum Lcom/zebra/sdk/settings/internal/SettingType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/sdk/settings/internal/SettingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/sdk/settings/internal/SettingType;

.field public static final enum BOOL:Lcom/zebra/sdk/settings/internal/SettingType;

.field public static final enum DOUBLE:Lcom/zebra/sdk/settings/internal/SettingType;

.field public static final enum ENUM:Lcom/zebra/sdk/settings/internal/SettingType;

.field public static final enum INTEGER:Lcom/zebra/sdk/settings/internal/SettingType;

.field public static final enum IPV4ADDRESS:Lcom/zebra/sdk/settings/internal/SettingType;

.field public static final enum STRING:Lcom/zebra/sdk/settings/internal/SettingType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/zebra/sdk/settings/internal/SettingType;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    const-string v3, "integer"

    invoke-direct {v0, v1, v2, v3}, Lcom/zebra/sdk/settings/internal/SettingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/internal/SettingType;->INTEGER:Lcom/zebra/sdk/settings/internal/SettingType;

    new-instance v0, Lcom/zebra/sdk/settings/internal/SettingType;

    const-string v1, "ENUM"

    const/4 v3, 0x1

    const-string v4, "enum"

    invoke-direct {v0, v1, v3, v4}, Lcom/zebra/sdk/settings/internal/SettingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/internal/SettingType;->ENUM:Lcom/zebra/sdk/settings/internal/SettingType;

    new-instance v0, Lcom/zebra/sdk/settings/internal/SettingType;

    const-string v1, "STRING"

    const/4 v4, 0x2

    const-string v5, "string"

    invoke-direct {v0, v1, v4, v5}, Lcom/zebra/sdk/settings/internal/SettingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/internal/SettingType;->STRING:Lcom/zebra/sdk/settings/internal/SettingType;

    new-instance v0, Lcom/zebra/sdk/settings/internal/SettingType;

    const-string v1, "BOOL"

    const/4 v5, 0x3

    const-string v6, "bool"

    invoke-direct {v0, v1, v5, v6}, Lcom/zebra/sdk/settings/internal/SettingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/internal/SettingType;->BOOL:Lcom/zebra/sdk/settings/internal/SettingType;

    new-instance v0, Lcom/zebra/sdk/settings/internal/SettingType;

    const-string v1, "DOUBLE"

    const/4 v6, 0x4

    const-string v7, "double"

    invoke-direct {v0, v1, v6, v7}, Lcom/zebra/sdk/settings/internal/SettingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/internal/SettingType;->DOUBLE:Lcom/zebra/sdk/settings/internal/SettingType;

    new-instance v0, Lcom/zebra/sdk/settings/internal/SettingType;

    const-string v1, "IPV4ADDRESS"

    const/4 v7, 0x5

    const-string v8, "ipv4-address"

    invoke-direct {v0, v1, v7, v8}, Lcom/zebra/sdk/settings/internal/SettingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/internal/SettingType;->IPV4ADDRESS:Lcom/zebra/sdk/settings/internal/SettingType;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/zebra/sdk/settings/internal/SettingType;

    sget-object v8, Lcom/zebra/sdk/settings/internal/SettingType;->INTEGER:Lcom/zebra/sdk/settings/internal/SettingType;

    aput-object v8, v1, v2

    sget-object v2, Lcom/zebra/sdk/settings/internal/SettingType;->ENUM:Lcom/zebra/sdk/settings/internal/SettingType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/internal/SettingType;->STRING:Lcom/zebra/sdk/settings/internal/SettingType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/zebra/sdk/settings/internal/SettingType;->BOOL:Lcom/zebra/sdk/settings/internal/SettingType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/zebra/sdk/settings/internal/SettingType;->DOUBLE:Lcom/zebra/sdk/settings/internal/SettingType;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/zebra/sdk/settings/internal/SettingType;->$VALUES:[Lcom/zebra/sdk/settings/internal/SettingType;

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

    iput-object p3, p0, Lcom/zebra/sdk/settings/internal/SettingType;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/zebra/sdk/settings/internal/SettingType;
    .locals 5

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/zebra/sdk/settings/internal/SettingType;->values()[Lcom/zebra/sdk/settings/internal/SettingType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/zebra/sdk/settings/internal/SettingType;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/sdk/settings/internal/SettingType;
    .locals 1

    const-class v0, Lcom/zebra/sdk/settings/internal/SettingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/settings/internal/SettingType;

    return-object p0
.end method

.method public static values()[Lcom/zebra/sdk/settings/internal/SettingType;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/settings/internal/SettingType;->$VALUES:[Lcom/zebra/sdk/settings/internal/SettingType;

    invoke-virtual {v0}, [Lcom/zebra/sdk/settings/internal/SettingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/sdk/settings/internal/SettingType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/settings/internal/SettingType;->name:Ljava/lang/String;

    return-object v0
.end method
