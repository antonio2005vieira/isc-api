.class public Lcom/zebra/sdk/util/internal/ZPLUtilities;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zebra/sdk/util/internal/ZPLUtilities$InternalCharacterFilteringOutputStream;,
        Lcom/zebra/sdk/util/internal/ZPLUtilities$FileObjectDetails;
    }
.end annotation


# static fields
.field public static final FILE_DRIVE_INFO_SETTING_NAME:Ljava/lang/String; = "file.drive_info"

.field public static final FILE_DRIVE_LISTING_SETTING_NAME:Ljava/lang/String; = "file.drive_listing"

.field public static final PRINTER_CALIBRATE:Ljava/lang/String;

.field public static final PRINTER_CONFIG_LABEL:Ljava/lang/String;

.field public static final PRINTER_DIRECTORY_LABEL:Ljava/lang/String;

.field public static final PRINTER_GET_STORAGE_INFO_COMMAND:Ljava/lang/String;

.field public static final PRINTER_GET_SUPER_HOST_STATUS:Ljava/lang/String;

.field public static final PRINTER_INFO:Ljava/lang/String;

.field public static final PRINTER_NETWORK_CONFIG_LABEL:Ljava/lang/String;

.field public static final PRINTER_RESET:Ljava/lang/String;

.field public static final PRINTER_RESET_NETWORK:Ljava/lang/String;

.field public static final PRINTER_RESTORE_DEFAULTS:Ljava/lang/String;

.field public static final PRINTER_STATUS:Ljava/lang/String;

.field public static final ZPL_INTERNAL_COMMAND_PREFIX:Ljava/lang/String;

.field public static final ZPL_INTERNAL_COMMAND_PREFIX_CHAR:I = 0x10

.field public static final ZPL_INTERNAL_DELIMITER:Ljava/lang/String;

.field public static final ZPL_INTERNAL_DELIMITER_CHAR:I = 0x1f

.field public static final ZPL_INTERNAL_FORMAT_PREFIX:Ljava/lang/String;

.field public static final ZPL_INTERNAL_FORMAT_PREFIX_CHAR:I = 0x1e


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/16 v3, 0x1e

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_FORMAT_PREFIX:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    new-array v2, v1, [B

    const/16 v3, 0x10

    aput-byte v3, v2, v4

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_COMMAND_PREFIX:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    new-array v1, v1, [B

    const/16 v2, 0x1f

    aput-byte v2, v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_DELIMITER:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x3

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->PRINTER_INFO:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->PRINTER_STATUS:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    new-array v2, v1, [B

    fill-array-data v2, :array_2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->PRINTER_CONFIG_LABEL:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->PRINTER_DIRECTORY_LABEL:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    new-array v2, v1, [B

    fill-array-data v2, :array_4

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->PRINTER_NETWORK_CONFIG_LABEL:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    new-array v2, v1, [B

    fill-array-data v2, :array_5

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->PRINTER_CALIBRATE:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    new-array v2, v1, [B

    fill-array-data v2, :array_6

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->PRINTER_RESET:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->PRINTER_RESET_NETWORK:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v2, v1, [B

    fill-array-data v2, :array_8

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->PRINTER_RESTORE_DEFAULTS:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->PRINTER_GET_SUPER_HOST_STATUS:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_a

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->PRINTER_GET_STORAGE_INFO_COMMAND:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x10t
        0x48t
        0x49t
    .end array-data

    :array_1
    .array-data 1
        0x10t
        0x48t
        0x53t
    .end array-data

    :array_2
    .array-data 1
        0x10t
        0x57t
        0x43t
    .end array-data

    :array_3
    .array-data 1
        0x1et
        0x58t
        0x41t
        0x1et
        0x57t
        0x44t
        0x2at
        0x3at
        0x2at
        0x2et
        0x2at
        0x1et
        0x58t
        0x5at
    .end array-data

    nop

    :array_4
    .array-data 1
        0x10t
        0x57t
        0x4ct
    .end array-data

    :array_5
    .array-data 1
        0x10t
        0x4at
        0x43t
    .end array-data

    :array_6
    .array-data 1
        0x10t
        0x4at
        0x52t
    .end array-data

    :array_7
    .array-data 1
        0x10t
        0x57t
        0x52t
    .end array-data

    :array_8
    .array-data 1
        0x1et
        0x58t
        0x41t
        0x1et
        0x4at
        0x55t
        0x46t
        0x1et
        0x58t
        0x5at
    .end array-data

    nop

    :array_9
    .array-data 1
        0x1et
        0x58t
        0x41t
        0x1et
        0x48t
        0x5at
        0x41t
        0x1et
        0x58t
        0x5at
    .end array-data

    nop

    :array_a
    .array-data 1
        0x1et
        0x58t
        0x41t
        0x1et
        0x48t
        0x57t
        0x2at
        0x3at
        0x58t
        0x58t
        0x58t
        0x58t
        0x2et
        0x51t
        0x51t
        0x51t
        0x1et
        0x58t
        0x5at
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFileNameRegex(Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "([A-Za-z]{1}:)?"

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "\\*:"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\*"

    const-string v3, "[A-Za-z0-9\\-_]*"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decorateWithCommandPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "~"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/16 v0, 0x7e

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_COMMAND_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decorateWithFormatPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "^"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/16 v0, 0x5e

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_FORMAT_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static filterFileList([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "*:*.*"

    :cond_1
    const-string v0, "(([A-Za-z\\*]{1}):)?([A-Za-z0-9\\-_\\*]+)\\.([A-Za-z0-9\\-_\\*]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    :cond_2
    invoke-static {p1}, Lcom/zebra/sdk/util/internal/ZPLUtilities;->createFileNameRegex(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p0, v3

    invoke-virtual {p1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    new-array p0, v1, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getDYPrefix(CLjava/lang/String;CLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_COMMAND_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_DELIMITER:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_DELIMITER:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_DELIMITER:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_DELIMITER:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_DELIMITER:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDpmm(Ljava/lang/String;)I
    .locals 3

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    const/4 v0, 0x2

    :try_start_0
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method public static getHZO(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/zebra/sdk/util/internal/FileUtilities;->parseDriveAndExtension(Ljava/lang/String;)Lcom/zebra/sdk/util/internal/PrinterFilePath;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_FORMAT_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "XA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_FORMAT_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "HZO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_DELIMITER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/zebra/sdk/util/internal/PrinterFilePath;->getDrive()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/zebra/sdk/util/internal/PrinterFilePath;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_FORMAT_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "XZ"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isValidZplFirmware(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "[Vv][\\w-]+\\.[\\w-]+\\.[\\w-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static parseFileDriveInfoJson(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/StorageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/zebra/sdk/util/internal/JacksonObjectMapperFactory;->getInstance()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v2

    const-class v3, Ljava/util/LinkedHashMap;

    const-class v4, Ljava/lang/String;

    const-class v5, Lcom/zebra/sdk/util/internal/ZPLUtilities$FileObjectDetails;

    invoke-virtual {v2, v3, v4, v5}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructMapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v2

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v3

    const-class v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructMapType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string v1, "file.drive_info"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Lcom/zebra/sdk/printer/StorageInfo;

    invoke-direct {v2}, Lcom/zebra/sdk/printer/StorageInfo;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, v2, Lcom/zebra/sdk/printer/StorageInfo;->driveLetter:C

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zebra/sdk/util/internal/ZPLUtilities$FileObjectDetails;

    iget-wide v5, v3, Lcom/zebra/sdk/util/internal/ZPLUtilities$FileObjectDetails;->free:J

    iput-wide v5, v2, Lcom/zebra/sdk/printer/StorageInfo;->bytesFree:J

    sget-object v3, Lcom/zebra/sdk/printer/DriveType;->UNKNOWN:Lcom/zebra/sdk/printer/DriveType;

    iput-object v3, v2, Lcom/zebra/sdk/printer/StorageInfo;->driveType:Lcom/zebra/sdk/printer/DriveType;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/zebra/sdk/printer/StorageInfo;->isPersistent:Z

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zebra/sdk/util/internal/ZPLUtilities$FileObjectDetails;

    iget-object v1, v1, Lcom/zebra/sdk/util/internal/ZPLUtilities$FileObjectDetails;->storage:Ljava/lang/String;

    const-string v5, "RAM"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v1, Lcom/zebra/sdk/printer/DriveType;->RAM:Lcom/zebra/sdk/printer/DriveType;

    iput-object v1, v2, Lcom/zebra/sdk/printer/StorageInfo;->driveType:Lcom/zebra/sdk/printer/DriveType;

    iput-boolean v4, v2, Lcom/zebra/sdk/printer/StorageInfo;->isPersistent:Z

    goto :goto_2

    :cond_0
    const-string v4, "READ ONLY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v1, Lcom/zebra/sdk/printer/DriveType;->READ_ONLY:Lcom/zebra/sdk/printer/DriveType;

    :goto_1
    iput-object v1, v2, Lcom/zebra/sdk/printer/StorageInfo;->driveType:Lcom/zebra/sdk/printer/DriveType;

    iput-boolean v3, v2, Lcom/zebra/sdk/printer/StorageInfo;->isPersistent:Z

    goto :goto_2

    :cond_1
    const-string v4, "ONBOARD FLASH"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/zebra/sdk/printer/DriveType;->FLASH:Lcom/zebra/sdk/printer/DriveType;

    goto :goto_1

    :cond_2
    :goto_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static parseHWCommand(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/StorageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "(\\d+).+([A-Z]): ([\\w\\s]+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    new-instance v6, Lcom/zebra/sdk/printer/StorageInfo;

    invoke-direct {v6}, Lcom/zebra/sdk/printer/StorageInfo;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v6, Lcom/zebra/sdk/printer/StorageInfo;->bytesFree:J

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    iput-char v9, v6, Lcom/zebra/sdk/printer/StorageInfo;->driveLetter:C

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/zebra/sdk/printer/DriveType;->UNKNOWN:Lcom/zebra/sdk/printer/DriveType;

    iput-object v7, v6, Lcom/zebra/sdk/printer/StorageInfo;->driveType:Lcom/zebra/sdk/printer/DriveType;

    iput-boolean v8, v6, Lcom/zebra/sdk/printer/StorageInfo;->isPersistent:Z

    const-string v7, "RAM"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v5, Lcom/zebra/sdk/printer/DriveType;->RAM:Lcom/zebra/sdk/printer/DriveType;

    iput-object v5, v6, Lcom/zebra/sdk/printer/StorageInfo;->driveType:Lcom/zebra/sdk/printer/DriveType;

    iput-boolean v3, v6, Lcom/zebra/sdk/printer/StorageInfo;->isPersistent:Z

    goto :goto_3

    :cond_0
    const-string v7, "OPTION MEMORY"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_1
    sget-object v5, Lcom/zebra/sdk/printer/DriveType;->MASS_STORAGE:Lcom/zebra/sdk/printer/DriveType;

    :goto_2
    iput-object v5, v6, Lcom/zebra/sdk/printer/StorageInfo;->driveType:Lcom/zebra/sdk/printer/DriveType;

    iput-boolean v8, v6, Lcom/zebra/sdk/printer/StorageInfo;->isPersistent:Z

    goto :goto_3

    :cond_1
    const-string v7, "MEMORY CARD"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    const-string v7, "ONBOARD FLASH"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/zebra/sdk/printer/DriveType;->FLASH:Lcom/zebra/sdk/printer/DriveType;

    goto :goto_2

    :cond_3
    :goto_3
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static replaceAllWithInternalCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/zebra/sdk/util/internal/ZPLUtilities;->replaceAllWithInternalDelimeter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_FORMAT_PREFIX:Ljava/lang/String;

    const-string v1, "^"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_COMMAND_PREFIX:Ljava/lang/String;

    const-string v1, "~"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceAllWithInternalDelimeter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_DELIMITER:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceInternalCharactersWithReadableCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_COMMAND_PREFIX:Ljava/lang/String;

    const-string v1, "~"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_FORMAT_PREFIX:Ljava/lang/String;

    const-string v1, "^"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_DELIMITER:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceInternalCharactersWithReadableCharacters(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;

    invoke-direct {v0}, Lcom/zebra/sdk/util/internal/ZPLUtilities;-><init>()V

    new-instance v1, Lcom/zebra/sdk/util/internal/ZPLUtilities$InternalCharacterFilteringOutputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, p0}, Lcom/zebra/sdk/util/internal/ZPLUtilities$InternalCharacterFilteringOutputStream;-><init>(Lcom/zebra/sdk/util/internal/ZPLUtilities;Ljava/io/OutputStream;)V

    const/16 p0, 0x4000

    new-array p0, p0, [B

    :goto_0
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/zebra/sdk/util/internal/ZPLUtilities$InternalCharacterFilteringOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/zebra/sdk/util/internal/ZPLUtilities$InternalCharacterFilteringOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_2
    new-instance p1, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    invoke-virtual {p0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lcom/zebra/sdk/util/internal/ZPLUtilities$InternalCharacterFilteringOutputStream;->close()V

    throw p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    new-instance p1, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    invoke-virtual {p0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public static replaceInternalCharactersWithReadableCharacters([B)[B
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    aget-byte v1, p0, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const/16 v1, 0x7e

    aput-byte v1, p0, v0

    goto :goto_1

    :cond_0
    aget-byte v1, p0, v0

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_1

    const/16 v1, 0x2c

    aput-byte v1, p0, v0

    goto :goto_1

    :cond_1
    aget-byte v1, p0, v0

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_2

    const/16 v1, 0x5e

    aput-byte v1, p0, v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method
