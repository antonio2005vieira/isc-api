.class public Lcom/zebra/sdk/device/SmartcardReaderFactory;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/sdk/device/SmartcardReader;
    .locals 1

    instance-of v0, p0, Lcom/zebra/sdk/printer/internal/ZebraPrinterCpcl;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zebra/sdk/printer/internal/SmartcardReaderImpl;

    invoke-direct {v0, p0}, Lcom/zebra/sdk/printer/internal/SmartcardReaderImpl;-><init>(Lcom/zebra/sdk/printer/ZebraPrinter;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
