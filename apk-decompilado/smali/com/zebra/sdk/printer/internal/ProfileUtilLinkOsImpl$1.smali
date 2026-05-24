.class Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/FirmwareUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->loadFirmwareFromProfile(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;


# direct methods
.method constructor <init>(Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl$1;->this$0:Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;

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

    invoke-interface {p1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Lcom/zebra/sdk/comm/Connection;->open()V

    iget-object p2, p0, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl$1;->this$0:Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;

    iget-object p2, p2, Lcom/zebra/sdk/printer/internal/ProfileUtilLinkOsImpl;->linkOsPrinter:Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;

    invoke-virtual {p2, p1}, Lcom/zebra/sdk/printer/internal/ZebraPrinterLinkOsImpl;->setConnection(Lcom/zebra/sdk/comm/Connection;)V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public progressUpdate(II)V
    .locals 0

    return-void
.end method
