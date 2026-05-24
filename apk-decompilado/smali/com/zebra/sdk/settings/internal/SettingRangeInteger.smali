.class public Lcom/zebra/sdk/settings/internal/SettingRangeInteger;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/settings/internal/SettingRange;


# instance fields
.field private max:J

.field private min:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/zebra/sdk/settings/internal/SettingRangeInteger;->min:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/zebra/sdk/settings/internal/SettingRangeInteger;->max:J

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

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zebra/sdk/settings/internal/SettingRangeInteger;->min:J

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zebra/sdk/settings/internal/SettingRangeInteger;->max:J

    :cond_0
    return-void
.end method


# virtual methods
.method public isInRange(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iget-wide v3, p0, Lcom/zebra/sdk/settings/internal/SettingRangeInteger;->min:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    iget-wide v3, p0, Lcom/zebra/sdk/settings/internal/SettingRangeInteger;->max:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method
