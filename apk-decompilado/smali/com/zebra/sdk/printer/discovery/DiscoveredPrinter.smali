.class public abstract Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4db1e81eb2b8d7afL


# instance fields
.field public final address:Ljava/lang/String;

.field protected discoSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;->address:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;->discoSettings:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;

    iget-object p1, p1, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;->address:Ljava/lang/String;

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract getConnection()Lcom/zebra/sdk/comm/Connection;
.end method

.method public getDiscoveryDataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;->discoSettings:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiscoveredPrinter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;->address:Ljava/lang/String;

    return-object v0
.end method
