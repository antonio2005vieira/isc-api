.class public Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocketImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocket;


# instance fields
.field private mySocket:Ljava/net/MulticastSocket;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Ljava/net/MulticastSocket;

    invoke-direct {v0}, Ljava/net/MulticastSocket;-><init>()V

    iput-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocketImpl;->mySocket:Ljava/net/MulticastSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/printer/discovery/DiscoveryException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/printer/discovery/DiscoveryException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocketImpl;->mySocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    return-void
.end method

.method public joinGroup(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocketImpl;->mySocket:Ljava/net/MulticastSocket;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    return-void
.end method

.method public receive(Ljava/net/DatagramPacket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocketImpl;->mySocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    return-void
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocketImpl;->mySocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    return-void
.end method

.method public setInterface(Ljava/net/InetAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocketImpl;->mySocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->setInterface(Ljava/net/InetAddress;)V

    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocketImpl;->mySocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->setSoTimeout(I)V

    return-void
.end method

.method public setTimeToLive(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/discovery/internal/ZebraDiscoSocketImpl;->mySocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    return-void
.end method
