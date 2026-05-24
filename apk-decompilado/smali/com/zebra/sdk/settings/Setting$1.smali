.class synthetic Lcom/zebra/sdk/settings/Setting$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zebra/sdk/settings/Setting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$zebra$sdk$settings$internal$SettingType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/zebra/sdk/settings/internal/SettingType;->values()[Lcom/zebra/sdk/settings/internal/SettingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/zebra/sdk/settings/Setting$1;->$SwitchMap$com$zebra$sdk$settings$internal$SettingType:[I

    :try_start_0
    sget-object v1, Lcom/zebra/sdk/settings/internal/SettingType;->DOUBLE:Lcom/zebra/sdk/settings/internal/SettingType;

    invoke-virtual {v1}, Lcom/zebra/sdk/settings/internal/SettingType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/zebra/sdk/settings/Setting$1;->$SwitchMap$com$zebra$sdk$settings$internal$SettingType:[I

    sget-object v1, Lcom/zebra/sdk/settings/internal/SettingType;->INTEGER:Lcom/zebra/sdk/settings/internal/SettingType;

    invoke-virtual {v1}, Lcom/zebra/sdk/settings/internal/SettingType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/zebra/sdk/settings/Setting$1;->$SwitchMap$com$zebra$sdk$settings$internal$SettingType:[I

    sget-object v1, Lcom/zebra/sdk/settings/internal/SettingType;->ENUM:Lcom/zebra/sdk/settings/internal/SettingType;

    invoke-virtual {v1}, Lcom/zebra/sdk/settings/internal/SettingType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/zebra/sdk/settings/Setting$1;->$SwitchMap$com$zebra$sdk$settings$internal$SettingType:[I

    sget-object v1, Lcom/zebra/sdk/settings/internal/SettingType;->BOOL:Lcom/zebra/sdk/settings/internal/SettingType;

    invoke-virtual {v1}, Lcom/zebra/sdk/settings/internal/SettingType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/zebra/sdk/settings/Setting$1;->$SwitchMap$com$zebra$sdk$settings$internal$SettingType:[I

    sget-object v1, Lcom/zebra/sdk/settings/internal/SettingType;->STRING:Lcom/zebra/sdk/settings/internal/SettingType;

    invoke-virtual {v1}, Lcom/zebra/sdk/settings/internal/SettingType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/zebra/sdk/settings/Setting$1;->$SwitchMap$com$zebra$sdk$settings$internal$SettingType:[I

    sget-object v1, Lcom/zebra/sdk/settings/internal/SettingType;->IPV4ADDRESS:Lcom/zebra/sdk/settings/internal/SettingType;

    invoke-virtual {v1}, Lcom/zebra/sdk/settings/internal/SettingType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
