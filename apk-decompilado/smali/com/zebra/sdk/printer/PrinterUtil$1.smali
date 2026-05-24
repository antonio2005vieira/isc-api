.class final Lcom/zebra/sdk/printer/PrinterUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/FirmwareUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zebra/sdk/printer/PrinterUtil;->updateFirmware(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public firmwareDownloadComplete()V
    .locals 0

    return-void
.end method

.method public printerOnline(Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public progressUpdate(II)V
    .locals 0

    return-void
.end method
