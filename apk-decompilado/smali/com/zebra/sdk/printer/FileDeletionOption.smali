.class public final enum Lcom/zebra/sdk/printer/FileDeletionOption;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/sdk/printer/FileDeletionOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/sdk/printer/FileDeletionOption;

.field public static final enum ALL:Lcom/zebra/sdk/printer/FileDeletionOption;

.field public static final enum CLONEABLE:Lcom/zebra/sdk/printer/FileDeletionOption;

.field public static final enum NONE:Lcom/zebra/sdk/printer/FileDeletionOption;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/zebra/sdk/printer/FileDeletionOption;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zebra/sdk/printer/FileDeletionOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/printer/FileDeletionOption;->ALL:Lcom/zebra/sdk/printer/FileDeletionOption;

    new-instance v0, Lcom/zebra/sdk/printer/FileDeletionOption;

    const-string v1, "CLONEABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zebra/sdk/printer/FileDeletionOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/printer/FileDeletionOption;->CLONEABLE:Lcom/zebra/sdk/printer/FileDeletionOption;

    new-instance v0, Lcom/zebra/sdk/printer/FileDeletionOption;

    const-string v1, "NONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zebra/sdk/printer/FileDeletionOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zebra/sdk/printer/FileDeletionOption;->NONE:Lcom/zebra/sdk/printer/FileDeletionOption;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/zebra/sdk/printer/FileDeletionOption;

    sget-object v5, Lcom/zebra/sdk/printer/FileDeletionOption;->ALL:Lcom/zebra/sdk/printer/FileDeletionOption;

    aput-object v5, v1, v2

    sget-object v2, Lcom/zebra/sdk/printer/FileDeletionOption;->CLONEABLE:Lcom/zebra/sdk/printer/FileDeletionOption;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/zebra/sdk/printer/FileDeletionOption;->$VALUES:[Lcom/zebra/sdk/printer/FileDeletionOption;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/sdk/printer/FileDeletionOption;
    .locals 1

    const-class v0, Lcom/zebra/sdk/printer/FileDeletionOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/printer/FileDeletionOption;

    return-object p0
.end method

.method public static values()[Lcom/zebra/sdk/printer/FileDeletionOption;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/printer/FileDeletionOption;->$VALUES:[Lcom/zebra/sdk/printer/FileDeletionOption;

    invoke-virtual {v0}, [Lcom/zebra/sdk/printer/FileDeletionOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/sdk/printer/FileDeletionOption;

    return-object v0
.end method
