.class public Lcom/zebra/sdk/settings/internal/SettingRangeString;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/settings/internal/SettingRange;


# instance fields
.field private maxLength:I

.field private minLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zebra/sdk/settings/internal/SettingRangeString;->minLength:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/zebra/sdk/settings/internal/SettingRangeString;->maxLength:I

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

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zebra/sdk/settings/internal/SettingRangeString;->minLength:I

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zebra/sdk/settings/internal/SettingRangeString;->maxLength:I

    :cond_0
    return-void
.end method


# virtual methods
.method public isInRange(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v0, p0, Lcom/zebra/sdk/settings/internal/SettingRangeString;->minLength:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/zebra/sdk/settings/internal/SettingRangeString;->maxLength:I

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
