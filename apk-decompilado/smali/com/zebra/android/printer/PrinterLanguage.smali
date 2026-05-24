.class public final enum Lcom/zebra/android/printer/PrinterLanguage;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zebra/android/printer/PrinterLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zebra/android/printer/PrinterLanguage;

.field public static final enum CPCL:Lcom/zebra/android/printer/PrinterLanguage;

.field public static final enum ZPL:Lcom/zebra/android/printer/PrinterLanguage;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/zebra/android/printer/PrinterLanguage;

    const-string v1, "ZPL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/zebra/android/printer/PrinterLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/android/printer/PrinterLanguage;->ZPL:Lcom/zebra/android/printer/PrinterLanguage;

    new-instance v0, Lcom/zebra/android/printer/PrinterLanguage;

    const-string v1, "CPCL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/zebra/android/printer/PrinterLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zebra/android/printer/PrinterLanguage;->CPCL:Lcom/zebra/android/printer/PrinterLanguage;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/zebra/android/printer/PrinterLanguage;

    sget-object v4, Lcom/zebra/android/printer/PrinterLanguage;->ZPL:Lcom/zebra/android/printer/PrinterLanguage;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/zebra/android/printer/PrinterLanguage;->$VALUES:[Lcom/zebra/android/printer/PrinterLanguage;

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

    iput-object p3, p0, Lcom/zebra/android/printer/PrinterLanguage;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zebra/android/printer/PrinterLanguage;
    .locals 1

    const-class v0, Lcom/zebra/android/printer/PrinterLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zebra/android/printer/PrinterLanguage;

    return-object p0
.end method

.method public static values()[Lcom/zebra/android/printer/PrinterLanguage;
    .locals 1

    sget-object v0, Lcom/zebra/android/printer/PrinterLanguage;->$VALUES:[Lcom/zebra/android/printer/PrinterLanguage;

    invoke-virtual {v0}, [Lcom/zebra/android/printer/PrinterLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zebra/android/printer/PrinterLanguage;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/android/printer/PrinterLanguage;->name:Ljava/lang/String;

    return-object v0
.end method
