.class public final enum Lcom/zebra/sdk/printer/PrinterLanguage;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/sdk/printer/PrinterLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/sdk/printer/PrinterLanguage;

.field public static final enum CPCL:Lcom/zebra/sdk/printer/PrinterLanguage;

.field public static final enum LINE_PRINT:Lcom/zebra/sdk/printer/PrinterLanguage;

.field public static final enum ZPL:Lcom/zebra/sdk/printer/PrinterLanguage;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/zebra/sdk/printer/PrinterLanguage;

    const-string v1, "ZPL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/zebra/sdk/printer/PrinterLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/PrinterLanguage;->ZPL:Lcom/zebra/sdk/printer/PrinterLanguage;

    new-instance v0, Lcom/zebra/sdk/printer/PrinterLanguage;

    const-string v1, "CPCL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/zebra/sdk/printer/PrinterLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/PrinterLanguage;->CPCL:Lcom/zebra/sdk/printer/PrinterLanguage;

    new-instance v0, Lcom/zebra/sdk/printer/PrinterLanguage;

    const-string v1, "LINE_PRINT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v1}, Lcom/zebra/sdk/printer/PrinterLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/sdk/printer/PrinterLanguage;->LINE_PRINT:Lcom/zebra/sdk/printer/PrinterLanguage;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/zebra/sdk/printer/PrinterLanguage;

    sget-object v5, Lcom/zebra/sdk/printer/PrinterLanguage;->ZPL:Lcom/zebra/sdk/printer/PrinterLanguage;

    aput-object v5, v1, v2

    sget-object v2, Lcom/zebra/sdk/printer/PrinterLanguage;->CPCL:Lcom/zebra/sdk/printer/PrinterLanguage;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/zebra/sdk/printer/PrinterLanguage;->$VALUES:[Lcom/zebra/sdk/printer/PrinterLanguage;

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

    iput-object p3, p0, Lcom/zebra/sdk/printer/PrinterLanguage;->name:Ljava/lang/String;

    return-void
.end method

.method public static getLanguage(Ljava/lang/String;)Lcom/zebra/sdk/printer/PrinterLanguage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;
        }
    .end annotation

    const-string v0, "ZPL"

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "<null>"

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/zebra/sdk/printer/PrinterLanguage;->valueOf(Ljava/lang/String;)Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid Zebra printer language"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/sdk/printer/PrinterLanguage;
    .locals 1

    const-class v0, Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/printer/PrinterLanguage;

    return-object p0
.end method

.method public static values()[Lcom/zebra/sdk/printer/PrinterLanguage;
    .locals 1

    sget-object v0, Lcom/zebra/sdk/printer/PrinterLanguage;->$VALUES:[Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-virtual {v0}, [Lcom/zebra/sdk/printer/PrinterLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/sdk/printer/PrinterLanguage;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/PrinterLanguage;->name:Ljava/lang/String;

    return-object v0
.end method
