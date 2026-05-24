.class public Lcom/zebra/sdk/settings/internal/SettingRangeNull;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/settings/internal/SettingRange;


# instance fields
.field private final alwaysReturnTrueToAvoidFailingIfRangeIsNotProvided:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zebra/sdk/settings/internal/SettingRangeNull;->alwaysReturnTrueToAvoidFailingIfRangeIsNotProvided:Z

    return-void
.end method


# virtual methods
.method public isInRange(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
