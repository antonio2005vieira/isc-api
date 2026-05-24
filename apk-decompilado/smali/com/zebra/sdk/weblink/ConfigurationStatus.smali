.class public final enum Lcom/zebra/sdk/weblink/ConfigurationStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/sdk/weblink/ConfigurationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/sdk/weblink/ConfigurationStatus;

.field public static final enum CONFIGURATION_FAILED:Lcom/zebra/sdk/weblink/ConfigurationStatus;

.field public static final enum IN_PROCESS:Lcom/zebra/sdk/weblink/ConfigurationStatus;

.field public static final enum NOT_STARTED:Lcom/zebra/sdk/weblink/ConfigurationStatus;

.field public static final enum SUCCESSFULLY_COMPLETED:Lcom/zebra/sdk/weblink/ConfigurationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/zebra/sdk/weblink/ConfigurationStatus;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/weblink/ConfigurationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/weblink/ConfigurationStatus;->NOT_STARTED:Lcom/zebra/sdk/weblink/ConfigurationStatus;

    new-instance v0, Lcom/zebra/sdk/weblink/ConfigurationStatus;

    const-string v1, "IN_PROCESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zebra/sdk/weblink/ConfigurationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/weblink/ConfigurationStatus;->IN_PROCESS:Lcom/zebra/sdk/weblink/ConfigurationStatus;

    new-instance v0, Lcom/zebra/sdk/weblink/ConfigurationStatus;

    const-string v1, "SUCCESSFULLY_COMPLETED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zebra/sdk/weblink/ConfigurationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/weblink/ConfigurationStatus;->SUCCESSFULLY_COMPLETED:Lcom/zebra/sdk/weblink/ConfigurationStatus;

    new-instance v0, Lcom/zebra/sdk/weblink/ConfigurationStatus;

    const-string v1, "CONFIGURATION_FAILED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/zebra/sdk/weblink/ConfigurationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/weblink/ConfigurationStatus;->CONFIGURATION_FAILED:Lcom/zebra/sdk/weblink/ConfigurationStatus;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/zebra/sdk/weblink/ConfigurationStatus;

    sget-object v6, Lcom/zebra/sdk/weblink/ConfigurationStatus;->NOT_STARTED:Lcom/zebra/sdk/weblink/ConfigurationStatus;

    aput-object v6, v1, v2

    sget-object v2, Lcom/zebra/sdk/weblink/ConfigurationStatus;->IN_PROCESS:Lcom/zebra/sdk/weblink/ConfigurationStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/weblink/ConfigurationStatus;->SUCCESSFULLY_COMPLETED:Lcom/zebra/sdk/weblink/ConfigurationStatus;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/zebra/sdk/weblink/ConfigurationStatus;->$VALUES:[Lcom/zebra/sdk/weblink/ConfigurationStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/sdk/weblink/ConfigurationStatus;
    .locals 1

    const-class v0, Lcom/zebra/sdk/weblink/ConfigurationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/weblink/ConfigurationStatus;

    return-object p0
.end method

.method public static values()[Lcom/zebra/sdk/weblink/ConfigurationStatus;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/weblink/ConfigurationStatus;->$VALUES:[Lcom/zebra/sdk/weblink/ConfigurationStatus;

    invoke-virtual {v0}, [Lcom/zebra/sdk/weblink/ConfigurationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/sdk/weblink/ConfigurationStatus;

    return-object v0
.end method
