.class public Lcom/zebra/sdk/settings/internal/SettingRangeIpV4Address;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/settings/internal/SettingRange;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/zebra/sdk/util/internal/IPAddressUtil;->ipAddressIsValid(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
