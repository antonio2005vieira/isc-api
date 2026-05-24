.class public final enum Lcom/zebra/sdk/settings/AlertCondition;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonAutoDetect;
    fieldVisibility = .enum Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->ANY:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    getterVisibility = .enum Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->ANY:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    setterVisibility = .enum Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->ANY:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/sdk/settings/AlertCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum ALL_MESSAGES:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum BATTERY_LOW:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum CLEAN_PRINTHEAD:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum COLD_START:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum COUNTRY_CODE_ERROR:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum CUTTER_JAMMED:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum HEAD_COLD:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum HEAD_ELEMENT_BAD:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum HEAD_OPEN:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum HEAD_TOO_HOT:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum INVALID_HEAD:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum LABEL_READY:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum MCR_RESULT_READY:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum MEDIA_LOW:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum MOTOR_OVERTEMP:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum NONE:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum NO_READER_PRESENT:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum PAPER_OUT:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum PMCU_DOWNLOAD:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum POWER_ON:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum POWER_SUPPLY_OVER_TEMP:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum PQ_JOB_COMPLETED:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum PRINTER_PAUSED:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum PRINTHEAD_SHUTDOWN:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum REPLACE_HEAD:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum RESTARTING:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum REWIND_FULL:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum RFID_ERROR:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum RIBBON_IN_WARNING:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum RIBBON_LOW:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum RIBBON_OUT:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum SGD_SET:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum SHUTTING_DOWN:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum THERMISTOR_FAULT:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum ZBI_BASIC_FORCED_ERROR:Lcom/zebra/sdk/settings/AlertCondition;

.field public static final enum ZBI_BASIC_RUNTIME_ERROR:Lcom/zebra/sdk/settings/AlertCondition;


# instance fields
.field private conditionType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->NONE:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "PAPER_OUT"

    const/4 v3, 0x1

    const-string v4, "PAPER OUT"

    invoke-direct {v0, v1, v3, v4}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->PAPER_OUT:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "RIBBON_OUT"

    const/4 v4, 0x2

    const-string v5, "RIBBON OUT"

    invoke-direct {v0, v1, v4, v5}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->RIBBON_OUT:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "HEAD_TOO_HOT"

    const/4 v5, 0x3

    const-string v6, "HEAD TOO HOT"

    invoke-direct {v0, v1, v5, v6}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->HEAD_TOO_HOT:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "HEAD_COLD"

    const/4 v6, 0x4

    const-string v7, "HEAD COLD"

    invoke-direct {v0, v1, v6, v7}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->HEAD_COLD:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "HEAD_OPEN"

    const/4 v7, 0x5

    const-string v8, "HEAD OPEN"

    invoke-direct {v0, v1, v7, v8}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->HEAD_OPEN:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "POWER_SUPPLY_OVER_TEMP"

    const/4 v8, 0x6

    const-string v9, "SUPPLY TOO HOT"

    invoke-direct {v0, v1, v8, v9}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->POWER_SUPPLY_OVER_TEMP:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "RIBBON_IN_WARNING"

    const/4 v9, 0x7

    const-string v10, "RIBBON IN"

    invoke-direct {v0, v1, v9, v10}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->RIBBON_IN_WARNING:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "REWIND_FULL"

    const/16 v10, 0x8

    const-string v11, "REWIND"

    invoke-direct {v0, v1, v10, v11}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->REWIND_FULL:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "CUTTER_JAMMED"

    const/16 v11, 0x9

    const-string v12, "CUTTER JAMMED"

    invoke-direct {v0, v1, v11, v12}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->CUTTER_JAMMED:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "PRINTER_PAUSED"

    const/16 v12, 0xa

    const-string v13, "PRINTER PAUSED"

    invoke-direct {v0, v1, v12, v13}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->PRINTER_PAUSED:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "PQ_JOB_COMPLETED"

    const/16 v13, 0xb

    const-string v14, "PQ JOB COMPLETED"

    invoke-direct {v0, v1, v13, v14}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->PQ_JOB_COMPLETED:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "LABEL_READY"

    const/16 v14, 0xc

    const-string v15, "LABEL READY"

    invoke-direct {v0, v1, v14, v15}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->LABEL_READY:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "HEAD_ELEMENT_BAD"

    const/16 v15, 0xd

    const-string v14, "HEAD ELEMENT BAD"

    invoke-direct {v0, v1, v15, v14}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->HEAD_ELEMENT_BAD:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "ZBI_BASIC_RUNTIME_ERROR"

    const/16 v14, 0xe

    const-string v15, "BASIC RUNTIME"

    invoke-direct {v0, v1, v14, v15}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->ZBI_BASIC_RUNTIME_ERROR:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "ZBI_BASIC_FORCED_ERROR"

    const/16 v15, 0xf

    const-string v14, "BASIC FORCED"

    invoke-direct {v0, v1, v15, v14}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->ZBI_BASIC_FORCED_ERROR:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "POWER_ON"

    const/16 v14, 0x10

    const-string v15, "POWER ON"

    invoke-direct {v0, v1, v14, v15}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->POWER_ON:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "CLEAN_PRINTHEAD"

    const/16 v15, 0x11

    const-string v14, "CLEAN PRINTHEAD"

    invoke-direct {v0, v1, v15, v14}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->CLEAN_PRINTHEAD:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "MEDIA_LOW"

    const/16 v14, 0x12

    const-string v15, "MEDIA LOW"

    invoke-direct {v0, v1, v14, v15}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->MEDIA_LOW:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "RIBBON_LOW"

    const/16 v15, 0x13

    const-string v14, "RIBBON LOW"

    invoke-direct {v0, v1, v15, v14}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->RIBBON_LOW:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "REPLACE_HEAD"

    const/16 v14, 0x14

    const-string v15, "REPLACE HEAD"

    invoke-direct {v0, v1, v14, v15}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->REPLACE_HEAD:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "BATTERY_LOW"

    const/16 v15, 0x15

    const-string v14, "BATTERY LOW"

    invoke-direct {v0, v1, v15, v14}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->BATTERY_LOW:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "RFID_ERROR"

    const/16 v14, 0x16

    const-string v15, "RFID ERROR"

    invoke-direct {v0, v1, v14, v15}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->RFID_ERROR:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "ALL_MESSAGES"

    const/16 v14, 0x17

    const-string v15, "ALL MESSAGES"

    invoke-direct {v0, v1, v14, v15}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->ALL_MESSAGES:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "COLD_START"

    const/16 v14, 0x18

    const-string v15, "COLD START"

    invoke-direct {v0, v1, v14, v15}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->COLD_START:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "SGD_SET"

    const/16 v14, 0x19

    const-string v15, "SGD SET"

    invoke-direct {v0, v1, v14, v15}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->SGD_SET:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "MOTOR_OVERTEMP"

    const/16 v14, 0x1a

    const-string v15, "MOTOR OVERTEMP"

    invoke-direct {v0, v1, v14, v15}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->MOTOR_OVERTEMP:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "PRINTHEAD_SHUTDOWN"

    const/16 v14, 0x1b

    const-string v15, "PRINTHEAD SHUTDOWN"

    invoke-direct {v0, v1, v14, v15}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->PRINTHEAD_SHUTDOWN:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "SHUTTING_DOWN"

    const/16 v14, 0x1c

    const-string v15, "SHUTTING DOWN"

    invoke-direct {v0, v1, v14, v15}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->SHUTTING_DOWN:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "RESTARTING"

    const/16 v14, 0x1d

    const-string v15, "RESTARTING"

    invoke-direct {v0, v1, v14, v15}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->RESTARTING:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "NO_READER_PRESENT"

    const/16 v14, 0x1e

    const-string v15, "NO READER PRESENT"

    invoke-direct {v0, v1, v14, v15}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->NO_READER_PRESENT:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "THERMISTOR_FAULT"

    const/16 v14, 0x1f

    const-string v15, "THERMISTOR FAULT"

    invoke-direct {v0, v1, v14, v15}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->THERMISTOR_FAULT:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "INVALID_HEAD"

    const/16 v14, 0x20

    const-string v15, "INVALID HEAD"

    invoke-direct {v0, v1, v14, v15}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->INVALID_HEAD:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "COUNTRY_CODE_ERROR"

    const/16 v14, 0x21

    const-string v15, "COUNTRY CODE ERROR"

    invoke-direct {v0, v1, v14, v15}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->COUNTRY_CODE_ERROR:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "MCR_RESULT_READY"

    const/16 v14, 0x22

    const-string v15, "MCR RESULT READY"

    invoke-direct {v0, v1, v14, v15}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->MCR_RESULT_READY:Lcom/zebra/sdk/settings/AlertCondition;

    new-instance v0, Lcom/zebra/sdk/settings/AlertCondition;

    const-string v1, "PMCU_DOWNLOAD"

    const/16 v14, 0x23

    const-string v15, "PMCU DOWNLOAD"

    invoke-direct {v0, v1, v14, v15}, Lcom/zebra/sdk/settings/AlertCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/settings/AlertCondition;->PMCU_DOWNLOAD:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v1, 0x24

    new-array v1, v1, [Lcom/zebra/sdk/settings/AlertCondition;

    sget-object v14, Lcom/zebra/sdk/settings/AlertCondition;->NONE:Lcom/zebra/sdk/settings/AlertCondition;

    aput-object v14, v1, v2

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->PAPER_OUT:Lcom/zebra/sdk/settings/AlertCondition;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->RIBBON_OUT:Lcom/zebra/sdk/settings/AlertCondition;

    aput-object v2, v1, v4

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->HEAD_TOO_HOT:Lcom/zebra/sdk/settings/AlertCondition;

    aput-object v2, v1, v5

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->HEAD_COLD:Lcom/zebra/sdk/settings/AlertCondition;

    aput-object v2, v1, v6

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->HEAD_OPEN:Lcom/zebra/sdk/settings/AlertCondition;

    aput-object v2, v1, v7

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->POWER_SUPPLY_OVER_TEMP:Lcom/zebra/sdk/settings/AlertCondition;

    aput-object v2, v1, v8

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->RIBBON_IN_WARNING:Lcom/zebra/sdk/settings/AlertCondition;

    aput-object v2, v1, v9

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->REWIND_FULL:Lcom/zebra/sdk/settings/AlertCondition;

    aput-object v2, v1, v10

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->CUTTER_JAMMED:Lcom/zebra/sdk/settings/AlertCondition;

    aput-object v2, v1, v11

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->PRINTER_PAUSED:Lcom/zebra/sdk/settings/AlertCondition;

    aput-object v2, v1, v12

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->PQ_JOB_COMPLETED:Lcom/zebra/sdk/settings/AlertCondition;

    aput-object v2, v1, v13

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->LABEL_READY:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->HEAD_ELEMENT_BAD:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->ZBI_BASIC_RUNTIME_ERROR:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->ZBI_BASIC_FORCED_ERROR:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->POWER_ON:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->CLEAN_PRINTHEAD:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->MEDIA_LOW:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->RIBBON_LOW:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->REPLACE_HEAD:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->BATTERY_LOW:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->RFID_ERROR:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->ALL_MESSAGES:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->COLD_START:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->SGD_SET:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->MOTOR_OVERTEMP:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->PRINTHEAD_SHUTDOWN:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->SHUTTING_DOWN:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->RESTARTING:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->NO_READER_PRESENT:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->THERMISTOR_FAULT:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->INVALID_HEAD:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->COUNTRY_CODE_ERROR:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0x21

    aput-object v2, v1, v3

    sget-object v2, Lcom/zebra/sdk/settings/AlertCondition;->MCR_RESULT_READY:Lcom/zebra/sdk/settings/AlertCondition;

    const/16 v3, 0x22

    aput-object v2, v1, v3

    const/16 v2, 0x23

    aput-object v0, v1, v2

    sput-object v1, Lcom/zebra/sdk/settings/AlertCondition;->$VALUES:[Lcom/zebra/sdk/settings/AlertCondition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/zebra/sdk/settings/AlertCondition;->conditionType:Ljava/lang/String;

    return-void
.end method

.method public static createAlertCondition(Ljava/lang/String;)Lcom/zebra/sdk/settings/AlertCondition;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-static {}, Lcom/zebra/sdk/settings/AlertCondition;->values()[Lcom/zebra/sdk/settings/AlertCondition;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/zebra/sdk/settings/AlertCondition;->conditionType:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    const-string v0, "Invalid alert condition."

    invoke-direct {p0, v0}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/sdk/settings/AlertCondition;
    .locals 1

    const-class v0, Lcom/zebra/sdk/settings/AlertCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/settings/AlertCondition;

    return-object p0
.end method

.method public static values()[Lcom/zebra/sdk/settings/AlertCondition;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/settings/AlertCondition;->$VALUES:[Lcom/zebra/sdk/settings/AlertCondition;

    invoke-virtual {v0}, [Lcom/zebra/sdk/settings/AlertCondition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/sdk/settings/AlertCondition;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/settings/AlertCondition;->conditionType:Ljava/lang/String;

    return-object v0
.end method
