.class public Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesCisdf;
.super Lcom/zebra/sdk/printer/PrinterObjectProperties;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lcom/zebra/sdk/printer/PrinterObjectProperties;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesCisdf;->drivePrefix:Ljava/lang/String;

    iput-object p2, p0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesCisdf;->fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesCisdf;->extension:Ljava/lang/String;

    iput-wide p4, p0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesCisdf;->fileSize:J

    return-void
.end method
