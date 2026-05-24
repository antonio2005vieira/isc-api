.class public final enum Lcom/zebra/sdk/printer/discovery/internal/ZbiState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/sdk/printer/discovery/internal/ZbiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/sdk/printer/discovery/internal/ZbiState;

.field public static final enum DISABLED:Lcom/zebra/sdk/printer/discovery/internal/ZbiState;

.field public static final enum RUNNING:Lcom/zebra/sdk/printer/discovery/internal/ZbiState;

.field public static final enum STOPPED:Lcom/zebra/sdk/printer/discovery/internal/ZbiState;


# instance fields
.field private final value:I

.field private final zbiStateString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    const-string v3, "Disabled"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;->DISABLED:Lcom/zebra/sdk/printer/discovery/internal/ZbiState;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;

    const-string v1, "STOPPED"

    const/4 v3, 0x1

    const-string v4, "Stopped"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;->STOPPED:Lcom/zebra/sdk/printer/discovery/internal/ZbiState;

    new-instance v0, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;

    const-string v1, "RUNNING"

    const/4 v4, 0x2

    const-string v5, "Running"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;->RUNNING:Lcom/zebra/sdk/printer/discovery/internal/ZbiState;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/zebra/sdk/printer/discovery/internal/ZbiState;

    sget-object v5, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;->DISABLED:Lcom/zebra/sdk/printer/discovery/internal/ZbiState;

    aput-object v5, v1, v2

    sget-object v2, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;->STOPPED:Lcom/zebra/sdk/printer/discovery/internal/ZbiState;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;->$VALUES:[Lcom/zebra/sdk/printer/discovery/internal/ZbiState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;->value:I

    iput-object p4, p0, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;->zbiStateString:Ljava/lang/String;

    return-void
.end method

.method public static intToEnum(I)Lcom/zebra/sdk/printer/discovery/internal/ZbiState;
    .locals 6

    sget-object v0, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;->STOPPED:Lcom/zebra/sdk/printer/discovery/internal/ZbiState;

    invoke-static {}, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;->values()[Lcom/zebra/sdk/printer/discovery/internal/ZbiState;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;->value()I

    move-result v5

    if-ne v5, p0, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/sdk/printer/discovery/internal/ZbiState;
    .locals 1

    const-class v0, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;

    return-object p0
.end method

.method public static values()[Lcom/zebra/sdk/printer/discovery/internal/ZbiState;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;->$VALUES:[Lcom/zebra/sdk/printer/discovery/internal/ZbiState;

    invoke-virtual {v0}, [Lcom/zebra/sdk/printer/discovery/internal/ZbiState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/sdk/printer/discovery/internal/ZbiState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;->zbiStateString:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/printer/discovery/internal/ZbiState;->value:I

    return v0
.end method
