.class Lcom/zebra/sdk/printer/internal/CommandType;
.super Ljava/lang/Object;


# static fields
.field public static final ccCommand:Lcom/zebra/sdk/printer/internal/CommandType;

.field public static final dfCommand:Lcom/zebra/sdk/printer/internal/CommandType;

.field public static final fnCommand:Lcom/zebra/sdk/printer/internal/CommandType;

.field public static final unknownCommand:Lcom/zebra/sdk/printer/internal/CommandType;

.field public static final xaCommand:Lcom/zebra/sdk/printer/internal/CommandType;

.field public static final xgCommand:Lcom/zebra/sdk/printer/internal/CommandType;

.field public static final xzCommand:Lcom/zebra/sdk/printer/internal/CommandType;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zebra/sdk/printer/internal/CommandType;

    const-string v1, "FN"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/printer/internal/CommandType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/internal/CommandType;->fnCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    new-instance v0, Lcom/zebra/sdk/printer/internal/CommandType;

    const-string v1, "CC"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/printer/internal/CommandType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/internal/CommandType;->ccCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    new-instance v0, Lcom/zebra/sdk/printer/internal/CommandType;

    const-string v1, "XG"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/printer/internal/CommandType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/internal/CommandType;->xgCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    new-instance v0, Lcom/zebra/sdk/printer/internal/CommandType;

    const-string v1, "DF"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/printer/internal/CommandType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/internal/CommandType;->dfCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    new-instance v0, Lcom/zebra/sdk/printer/internal/CommandType;

    const-string v1, "XA"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/printer/internal/CommandType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/internal/CommandType;->xaCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    new-instance v0, Lcom/zebra/sdk/printer/internal/CommandType;

    const-string v1, "XZ"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/printer/internal/CommandType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/internal/CommandType;->xzCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    new-instance v0, Lcom/zebra/sdk/printer/internal/CommandType;

    const-string v1, "unknown"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/printer/internal/CommandType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/internal/CommandType;->unknownCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/CommandType;->id:Ljava/lang/String;

    return-void
.end method

.method protected static getCommand(Ljava/lang/String;)Lcom/zebra/sdk/printer/internal/CommandType;
    .locals 2

    sget-object v0, Lcom/zebra/sdk/printer/internal/CommandType;->unknownCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    sget-object v1, Lcom/zebra/sdk/printer/internal/CommandType;->fnCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/internal/CommandType;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/zebra/sdk/printer/internal/CommandType;->fnCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/zebra/sdk/printer/internal/CommandType;->ccCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/internal/CommandType;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/zebra/sdk/printer/internal/CommandType;->ccCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/zebra/sdk/printer/internal/CommandType;->dfCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/internal/CommandType;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/zebra/sdk/printer/internal/CommandType;->dfCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/zebra/sdk/printer/internal/CommandType;->xaCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/internal/CommandType;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/zebra/sdk/printer/internal/CommandType;->xaCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/zebra/sdk/printer/internal/CommandType;->xzCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/internal/CommandType;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/zebra/sdk/printer/internal/CommandType;->xzCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/zebra/sdk/printer/internal/CommandType;->xgCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/internal/CommandType;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object v0, Lcom/zebra/sdk/printer/internal/CommandType;->xgCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    :cond_5
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/CommandType;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
