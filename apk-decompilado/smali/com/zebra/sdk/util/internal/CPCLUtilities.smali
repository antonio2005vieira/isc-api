.class public Lcom/zebra/sdk/util/internal/CPCLUtilities;
.super Ljava/lang/Object;


# static fields
.field private static final ASCII_FF:I = 0xc

.field private static final ASCII_H:I = 0x68

.field private static final ASCII_V:I = 0x56

.field private static final CPCL_ESC:I = 0x1b

.field public static final PRINTER_CONFIG_LABEL:Ljava/lang/String;

.field public static final PRINTER_FORM_FEED:Ljava/lang/String;

.field public static final PRINTER_STATUS:Ljava/lang/String;

.field public static final VERSION_PREFIXES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SH"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "H8"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "C"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sput-object v0, Lcom/zebra/sdk/util/internal/CPCLUtilities;->VERSION_PREFIXES:[Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zebra/sdk/util/internal/CPCLUtilities;->PRINTER_STATUS:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [B

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zebra/sdk/util/internal/CPCLUtilities;->PRINTER_CONFIG_LABEL:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    new-array v1, v3, [B

    const/16 v3, 0xc

    aput-byte v3, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zebra/sdk/util/internal/CPCLUtilities;->PRINTER_FORM_FEED:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x1bt
        0x68t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1bt
        0x56t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
