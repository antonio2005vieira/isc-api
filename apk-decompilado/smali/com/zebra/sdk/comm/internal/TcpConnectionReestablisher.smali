.class public Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;
.super Lcom/zebra/sdk/comm/internal/ConnectionReestablisherBase;

# interfaces
.implements Lcom/zebra/sdk/comm/ConnectionReestablisher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$FullSubnetDiscoveryHandler;,
        Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;
    }
.end annotation


# static fields
.field public static final INITIAL_DISCOVERY_TIMEOUT:I = 0x3e


# instance fields
.field private macAddr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zebra/sdk/comm/internal/ConnectionReestablisherBase;-><init>(Lcom/zebra/sdk/comm/Connection;J)V

    :try_start_0
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;->getPrinterMacAddressViaDiscovery()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;->macAddr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected getConnectionAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;->zebraPrinterConnection:Lcom/zebra/sdk/comm/Connection;

    instance-of v0, v0, Lcom/zebra/sdk/comm/TcpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;->zebraPrinterConnection:Lcom/zebra/sdk/comm/Connection;

    :goto_0
    check-cast v0, Lcom/zebra/sdk/comm/TcpConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/TcpConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;->zebraPrinterConnection:Lcom/zebra/sdk/comm/Connection;

    instance-of v0, v0, Lcom/zebra/sdk/comm/MultichannelTcpConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;->zebraPrinterConnection:Lcom/zebra/sdk/comm/Connection;

    check-cast v0, Lcom/zebra/sdk/comm/MultichannelTcpConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/MultichannelTcpConnection;->getPrintingChannel()Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method protected getConnectionPortNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;->zebraPrinterConnection:Lcom/zebra/sdk/comm/Connection;

    check-cast v0, Lcom/zebra/sdk/comm/TcpConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/TcpConnection;->getPortNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNewConnection(Ljava/lang/String;)Lcom/zebra/sdk/comm/Connection;
    .locals 2

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;->getConnectionPortNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;->zebraPrinterConnection:Lcom/zebra/sdk/comm/Connection;

    instance-of v1, v1, Lcom/zebra/sdk/comm/TcpStatusConnection;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/zebra/sdk/comm/TcpStatusConnection;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, p1, v0}, Lcom/zebra/sdk/comm/TcpStatusConnection;-><init>(Ljava/lang/String;I)V

    return-object v1

    :cond_0
    new-instance v1, Lcom/zebra/sdk/comm/TcpConnection;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, p1, v0}, Lcom/zebra/sdk/comm/TcpConnection;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method protected getPrinterMacAddressViaDiscovery()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;,
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;->getConnectionAddress()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;-><init>(Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$1;)V

    invoke-static {v0, v1}, Lcom/zebra/sdk/util/internal/NetworkUtil;->startSinglePrinterDiscovery(Ljava/lang/String;Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x3e

    if-ge v0, v2, :cond_1

    iget-boolean v2, v1, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;->isFinished:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Lcom/zebra/sdk/util/internal/Sleeper;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, v1, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;->printer:Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;->printer:Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;->getDiscoveryDataMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "HARDWARE_ADDRESS"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v0, ""

    :goto_2
    return-object v0
.end method

.method protected getUpdatedFwVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;-><init>(Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$1;)V

    :goto_0
    invoke-static {p1, v0}, Lcom/zebra/sdk/util/internal/NetworkUtil;->startSinglePrinterDiscovery(Ljava/lang/String;Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V

    :cond_0
    iget-boolean v2, v0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;->isFinished:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;->timeoutCheck()V

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Lcom/zebra/sdk/util/internal/Sleeper;->sleep(J)V

    iget-boolean v2, v0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;->isFinished:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;->printer:Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;

    if-nez v2, :cond_0

    new-instance v0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;

    invoke-direct {v0, p0, v1}, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;-><init>(Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$1;)V

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;->printer:Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;->getDiscoveryDataMap()Ljava/util/Map;

    move-result-object p1

    const-string v0, "FIRMWARE_VER"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public reestablishConnection(Lcom/zebra/sdk/printer/PrinterReconnectionHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;,
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;->macAddr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;->waitForPrinterToComeOnlineViaSnmpAndSubnetDiscovery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x9c4

    invoke-static {v1, v2}, Lcom/zebra/sdk/util/internal/Sleeper;->sleep(J)V

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;->waitForConnectionToSucceed(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;->getNewConnection(Ljava/lang/String;)Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->open()V

    const-string v1, "appl.name"

    invoke-static {v1, v0}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->getInstance(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

    move-result-object v0

    invoke-static {v0}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->createLinkOsPrinter(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/zebra/sdk/printer/PrinterReconnectionHandler;->printerOnline(Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;Ljava/lang/String;)V

    return-void
.end method

.method protected waitForConnectionToSucceed(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;->getNewConnection(Ljava/lang/String;)Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lcom/zebra/sdk/comm/Connection;->open()V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_1
    :try_start_1
    invoke-interface {v1}, Lcom/zebra/sdk/comm/Connection;->close()V
    :try_end_1
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    :try_start_2
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;->timeoutCheck()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    :try_start_3
    invoke-interface {v1}, Lcom/zebra/sdk/comm/Connection;->close()V
    :try_end_3
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    throw p1

    :cond_0
    return-void
.end method

.method protected waitForPrinterToComeOnlineViaSnmpAndSubnetDiscovery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;,
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;->startTime:J

    new-instance v0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$FullSubnetDiscoveryHandler;

    invoke-direct {v0, p0, p1}, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$FullSubnetDiscoveryHandler;-><init>(Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;Ljava/lang/String;)V

    new-instance p1, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;-><init>(Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$1;)V

    :cond_0
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;->timeoutCheck()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$FullSubnetDiscoveryHandler;->isFinished:Z

    iput-boolean v1, p1, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;->isFinished:Z

    invoke-static {v0}, Lcom/zebra/sdk/printer/discovery/NetworkDiscoverer;->findPrinters(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;)V

    :try_start_0
    iget-object v1, p0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher;->zebraPrinterConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v1}, Lcom/zebra/sdk/comm/Connection;->getSimpleConnectionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/zebra/sdk/printer/discovery/NetworkDiscoverer;->subnetSearch(Lcom/zebra/sdk/printer/discovery/DiscoveryHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-boolean v1, v0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$FullSubnetDiscoveryHandler;->isFinished:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;->isFinished:Z

    if-nez v1, :cond_0

    :cond_2
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Lcom/zebra/sdk/util/internal/Sleeper;->sleep(J)V

    iget-boolean v1, v0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$FullSubnetDiscoveryHandler;->isFinished:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$FullSubnetDiscoveryHandler;->address:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object p1, v0, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$FullSubnetDiscoveryHandler;->address:Ljava/lang/String;

    return-object p1

    :cond_3
    iget-boolean v1, p1, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;->isFinished:Z

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;->printer:Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/zebra/sdk/comm/internal/TcpConnectionReestablisher$SinglePrinterDiscoveryHandler;->printer:Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;

    iget-object p1, p1, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinter;->address:Ljava/lang/String;

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/printer/discovery/DiscoveryException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unkown Host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method
