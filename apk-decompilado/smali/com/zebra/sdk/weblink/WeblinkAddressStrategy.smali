.class public final enum Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

.field public static final enum AUTO_SELECT:Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

.field public static final enum FORCE_CONNECTION_1:Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

.field public static final enum FORCE_CONNECTION_2:Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

    const-string v1, "AUTO_SELECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;->AUTO_SELECT:Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

    new-instance v0, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

    const-string v1, "FORCE_CONNECTION_1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;->FORCE_CONNECTION_1:Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

    new-instance v0, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

    const-string v1, "FORCE_CONNECTION_2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;->FORCE_CONNECTION_2:Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

    sget-object v5, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;->AUTO_SELECT:Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

    aput-object v5, v1, v2

    sget-object v2, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;->FORCE_CONNECTION_1:Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;->$VALUES:[Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

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

.method public static lookupInt(I)Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;
    .locals 2

    sget-object v0, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;->AUTO_SELECT:Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;->FORCE_CONNECTION_2:Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;->FORCE_CONNECTION_1:Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;
    .locals 1

    const-class v0, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

    return-object p0
.end method

.method public static values()[Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;->$VALUES:[Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

    invoke-virtual {v0}, [Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/sdk/weblink/WeblinkAddressStrategy;

    return-object v0
.end method
