.class public Lcom/zebra/sdk/comm/internal/ConnectionAttributeProvider;
.super Ljava/lang/Object;


# static fields
.field static connectionAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/zebra/sdk/comm/Connection;",
            "Lcom/zebra/sdk/comm/internal/ConnectionAttributes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/zebra/sdk/comm/internal/ConnectionAttributeProvider;->connectionAttributes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributes(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/comm/internal/ConnectionAttributes;
    .locals 2

    sget-object v0, Lcom/zebra/sdk/comm/internal/ConnectionAttributeProvider;->connectionAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zebra/sdk/comm/internal/ConnectionAttributeProvider;->connectionAttributes:Ljava/util/Map;

    new-instance v1, Lcom/zebra/sdk/comm/internal/ConnectionAttributes;

    invoke-direct {v1}, Lcom/zebra/sdk/comm/internal/ConnectionAttributes;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/zebra/sdk/comm/internal/ConnectionAttributeProvider;->connectionAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zebra/sdk/comm/internal/ConnectionAttributes;

    return-object p1
.end method
