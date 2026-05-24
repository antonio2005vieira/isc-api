.class public final enum Lcom/zebra/sdk/weblink/WeblinkConfigurationState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/sdk/weblink/WeblinkConfigurationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

.field public static final enum ConfigureWeblink:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

.field public static final enum ConnectToPrinter:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

.field public static final enum GetSettings:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

.field public static final enum ReconnectToPrinter:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

.field public static final enum RestartPrinter:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

.field public static final enum VerifyWeblinkConnection:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    const-string v1, "ConnectToPrinter"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->ConnectToPrinter:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    new-instance v0, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    const-string v1, "GetSettings"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->GetSettings:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    new-instance v0, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    const-string v1, "ConfigureWeblink"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->ConfigureWeblink:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    new-instance v0, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    const-string v1, "RestartPrinter"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->RestartPrinter:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    new-instance v0, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    const-string v1, "ReconnectToPrinter"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->ReconnectToPrinter:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    new-instance v0, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    const-string v1, "VerifyWeblinkConnection"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->VerifyWeblinkConnection:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    sget-object v8, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->ConnectToPrinter:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    aput-object v8, v1, v2

    sget-object v2, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->GetSettings:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->ConfigureWeblink:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->RestartPrinter:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->ReconnectToPrinter:Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->$VALUES:[Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

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

.method public static getIndex(Lcom/zebra/sdk/weblink/WeblinkConfigurationState;)I
    .locals 1

    invoke-static {}, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->values()[Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/sdk/weblink/WeblinkConfigurationState;
    .locals 1

    const-class v0, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    return-object p0
.end method

.method public static values()[Lcom/zebra/sdk/weblink/WeblinkConfigurationState;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->$VALUES:[Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    invoke-virtual {v0}, [Lcom/zebra/sdk/weblink/WeblinkConfigurationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/sdk/weblink/WeblinkConfigurationState;

    return-object v0
.end method
