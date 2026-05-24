.class public Lcom/zebra/sdk/settings/internal/SettingRangeFloat;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/settings/internal/SettingRange;


# instance fields
.field private max:Ljava/lang/String;

.field private min:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/settings/internal/SettingRangeFloat;->min:Ljava/lang/String;

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/settings/internal/SettingRangeFloat;->max:Ljava/lang/String;

    const-string v0, "^(.+)-(.+)$"

    invoke-static {v0, p1}, Lcom/zebra/sdk/util/internal/RegexUtil;->getMatches(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/zebra/sdk/settings/internal/SettingRangeFloat;->min:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/zebra/sdk/settings/internal/SettingRangeFloat;->max:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public isInRange(Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x1

    :try_start_1
    new-instance v2, Ljava/math/BigDecimal;

    iget-object v3, p0, Lcom/zebra/sdk/settings/internal/SettingRangeFloat;->min:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigDecimal;

    iget-object v4, p0, Lcom/zebra/sdk/settings/internal/SettingRangeFloat;->max:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    move p1, v1

    :catch_0
    return p1

    :catch_1
    return v1
.end method
