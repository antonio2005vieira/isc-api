.class public Lcom/zebra/sdk/printer/TcpPortStatus;
.super Ljava/lang/Object;


# instance fields
.field private portName:Ljava/lang/String;

.field private printerPort:Ljava/lang/String;

.field private remoteIpAddress:Ljava/lang/String;

.field private remotePort:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/TcpPortStatus;->printerPort:Ljava/lang/String;

    iput-object p2, p0, Lcom/zebra/sdk/printer/TcpPortStatus;->portName:Ljava/lang/String;

    iput-object p3, p0, Lcom/zebra/sdk/printer/TcpPortStatus;->remoteIpAddress:Ljava/lang/String;

    iput-object p4, p0, Lcom/zebra/sdk/printer/TcpPortStatus;->remotePort:Ljava/lang/String;

    iput-object p5, p0, Lcom/zebra/sdk/printer/TcpPortStatus;->status:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPortName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/TcpPortStatus;->portName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrinterPort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/TcpPortStatus;->printerPort:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteIpAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/TcpPortStatus;->remoteIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRemotePort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/TcpPortStatus;->remotePort:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/TcpPortStatus;->status:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zebra/sdk/printer/TcpPortStatus;->printerPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zebra/sdk/printer/TcpPortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zebra/sdk/printer/TcpPortStatus;->remoteIpAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zebra/sdk/printer/TcpPortStatus;->remotePort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zebra/sdk/printer/TcpPortStatus;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
