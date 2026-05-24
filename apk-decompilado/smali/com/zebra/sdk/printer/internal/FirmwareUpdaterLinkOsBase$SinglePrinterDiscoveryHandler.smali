.class final Lcom/zebra/sdk/printer/internal/FirmwareUpdaterLinkOsBase$SinglePrinterDiscoveryHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zebra/sdk/printer/internal/FirmwareUpdaterLinkOsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SinglePrinterDiscoveryHandler"
.end annotation


# instance fields
.field public isFinished:Z

.field public printer:Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;

.field final synthetic this$0:Lcom/zebra/sdk/printer/internal/FirmwareUpdaterLinkOsBase;


# direct methods
.method private constructor <init>(Lcom/zebra/sdk/printer/internal/FirmwareUpdaterLinkOsBase;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/FirmwareUpdaterLinkOsBase$SinglePrinterDiscoveryHandler;->this$0:Lcom/zebra/sdk/printer/internal/FirmwareUpdaterLinkOsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zebra/sdk/printer/internal/FirmwareUpdaterLinkOsBase$SinglePrinterDiscoveryHandler;->isFinished:Z

    return-void
.end method


# virtual methods
.method public discoveryError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public discoveryFinished()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zebra/sdk/printer/internal/FirmwareUpdaterLinkOsBase$SinglePrinterDiscoveryHandler;->isFinished:Z

    return-void
.end method

.method public foundPrinter(Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/FirmwareUpdaterLinkOsBase$SinglePrinterDiscoveryHandler;->printer:Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zebra/sdk/printer/internal/FirmwareUpdaterLinkOsBase$SinglePrinterDiscoveryHandler;->isFinished:Z

    return-void
.end method
