.class Lcom/zebra/sdk/weblink/WeblinkConfigurator$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/PrinterReconnectionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zebra/sdk/weblink/WeblinkConfigurator;->reconnectToPrinter(Lcom/zebra/sdk/weblink/WeblinkConfigurationStateUpdater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zebra/sdk/weblink/WeblinkConfigurator;


# direct methods
.method constructor <init>(Lcom/zebra/sdk/weblink/WeblinkConfigurator;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator$1;->this$0:Lcom/zebra/sdk/weblink/WeblinkConfigurator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public printerOnline(Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/zebra/sdk/weblink/WeblinkConfigurator$1;->this$0:Lcom/zebra/sdk/weblink/WeblinkConfigurator;

    invoke-interface {p1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    iput-object p1, p2, Lcom/zebra/sdk/weblink/WeblinkConfigurator;->connection:Lcom/zebra/sdk/comm/Connection;

    return-void
.end method
