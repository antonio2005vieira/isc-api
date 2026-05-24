.class final enum Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zebra/sdk/weblink/WeblinkConfigurator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WeblinkLocationToSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

.field public static final enum SET_LOCATION_1:Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

.field public static final enum SET_LOCATION_2:Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    const-string v1, "SET_LOCATION_1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;->SET_LOCATION_1:Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    new-instance v0, Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    const-string v1, "SET_LOCATION_2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;->SET_LOCATION_2:Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    sget-object v4, Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;->SET_LOCATION_1:Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;->$VALUES:[Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;
    .locals 1

    const-class v0, Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    return-object p0
.end method

.method public static values()[Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;->$VALUES:[Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    invoke-virtual {v0}, [Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/sdk/weblink/WeblinkConfigurator$WeblinkLocationToSet;

    return-object v0
.end method
