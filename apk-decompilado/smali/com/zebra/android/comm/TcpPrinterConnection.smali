.class public Lcom/zebra/android/comm/TcpPrinterConnection;
.super Lcom/zebra/android/comm/ZebraPrinterConnectionA;


# static fields
.field public static final DEFAULT_CPCL_TCP_PORT:I = 0x17d5

.field public static final DEFAULT_ZPL_TCP_PORT:I = 0x238c


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/zebra/sdk/comm/TcpConnection;

    invoke-direct {v0, p1, p2}, Lcom/zebra/sdk/comm/TcpConnection;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/zebra/android/comm/ZebraPrinterConnectionA;-><init>(Lcom/zebra/sdk/comm/ConnectionA;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    new-instance v0, Lcom/zebra/sdk/comm/TcpConnection;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/zebra/sdk/comm/TcpConnection;-><init>(Ljava/lang/String;III)V

    invoke-direct {p0, v0}, Lcom/zebra/android/comm/ZebraPrinterConnectionA;-><init>(Lcom/zebra/sdk/comm/ConnectionA;)V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/android/comm/TcpPrinterConnection;->myDelegator:Lcom/zebra/sdk/comm/Connection;

    check-cast v0, Lcom/zebra/sdk/comm/TcpConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/TcpConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPortNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/android/comm/TcpPrinterConnection;->myDelegator:Lcom/zebra/sdk/comm/Connection;

    check-cast v0, Lcom/zebra/sdk/comm/TcpConnection;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/TcpConnection;->getPortNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TCP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zebra/android/comm/TcpPrinterConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zebra/android/comm/TcpPrinterConnection;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
