.class synthetic Lcom/zebra/android/printer/PrinterStatus$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zebra/android/printer/PrinterStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$zebra$sdk$printer$ZplPrintMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/zebra/sdk/printer/ZplPrintMode;->values()[Lcom/zebra/sdk/printer/ZplPrintMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/zebra/android/printer/PrinterStatus$1;->$SwitchMap$com$zebra$sdk$printer$ZplPrintMode:[I

    :try_start_0
    sget-object v1, Lcom/zebra/sdk/printer/ZplPrintMode;->REWIND:Lcom/zebra/sdk/printer/ZplPrintMode;

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/ZplPrintMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/zebra/android/printer/PrinterStatus$1;->$SwitchMap$com$zebra$sdk$printer$ZplPrintMode:[I

    sget-object v1, Lcom/zebra/sdk/printer/ZplPrintMode;->PEEL_OFF:Lcom/zebra/sdk/printer/ZplPrintMode;

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/ZplPrintMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/zebra/android/printer/PrinterStatus$1;->$SwitchMap$com$zebra$sdk$printer$ZplPrintMode:[I

    sget-object v1, Lcom/zebra/sdk/printer/ZplPrintMode;->TEAR_OFF:Lcom/zebra/sdk/printer/ZplPrintMode;

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/ZplPrintMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/zebra/android/printer/PrinterStatus$1;->$SwitchMap$com$zebra$sdk$printer$ZplPrintMode:[I

    sget-object v1, Lcom/zebra/sdk/printer/ZplPrintMode;->CUTTER:Lcom/zebra/sdk/printer/ZplPrintMode;

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/ZplPrintMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/zebra/android/printer/PrinterStatus$1;->$SwitchMap$com$zebra$sdk$printer$ZplPrintMode:[I

    sget-object v1, Lcom/zebra/sdk/printer/ZplPrintMode;->APPLICATOR:Lcom/zebra/sdk/printer/ZplPrintMode;

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/ZplPrintMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/zebra/android/printer/PrinterStatus$1;->$SwitchMap$com$zebra$sdk$printer$ZplPrintMode:[I

    sget-object v1, Lcom/zebra/sdk/printer/ZplPrintMode;->DELAYED_CUT:Lcom/zebra/sdk/printer/ZplPrintMode;

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/ZplPrintMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/zebra/android/printer/PrinterStatus$1;->$SwitchMap$com$zebra$sdk$printer$ZplPrintMode:[I

    sget-object v1, Lcom/zebra/sdk/printer/ZplPrintMode;->LINERLESS_PEEL:Lcom/zebra/sdk/printer/ZplPrintMode;

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/ZplPrintMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/zebra/android/printer/PrinterStatus$1;->$SwitchMap$com$zebra$sdk$printer$ZplPrintMode:[I

    sget-object v1, Lcom/zebra/sdk/printer/ZplPrintMode;->LINERLESS_REWIND:Lcom/zebra/sdk/printer/ZplPrintMode;

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/ZplPrintMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/zebra/android/printer/PrinterStatus$1;->$SwitchMap$com$zebra$sdk$printer$ZplPrintMode:[I

    sget-object v1, Lcom/zebra/sdk/printer/ZplPrintMode;->PARTIAL_CUTTER:Lcom/zebra/sdk/printer/ZplPrintMode;

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/ZplPrintMode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/zebra/android/printer/PrinterStatus$1;->$SwitchMap$com$zebra$sdk$printer$ZplPrintMode:[I

    sget-object v1, Lcom/zebra/sdk/printer/ZplPrintMode;->RFID:Lcom/zebra/sdk/printer/ZplPrintMode;

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/ZplPrintMode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/zebra/android/printer/PrinterStatus$1;->$SwitchMap$com$zebra$sdk$printer$ZplPrintMode:[I

    sget-object v1, Lcom/zebra/sdk/printer/ZplPrintMode;->KIOSK:Lcom/zebra/sdk/printer/ZplPrintMode;

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/ZplPrintMode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
