.class public Lcom/zebra/sdk/comm/TcpStatusConnection;
.super Lcom/zebra/sdk/comm/TcpConnection;

# interfaces
.implements Lcom/zebra/sdk/comm/StatusConnectionWithWriteLogging;


# static fields
.field public static final DEFAULT_STATUS_TCP_PORT:I = 0x23f0


# direct methods
.method protected constructor <init>(Lcom/zebra/sdk/comm/internal/ConnectionInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/internal/NotMyConnectionDataException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/zebra/sdk/comm/TcpConnection;-><init>(Lcom/zebra/sdk/comm/internal/ConnectionInfo;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x23f0

    const/16 v1, 0x1388

    const/16 v2, 0x1f4

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/zebra/sdk/comm/TcpStatusConnection;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/16 v0, 0x1388

    const/16 v1, 0x1f4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/zebra/sdk/comm/TcpStatusConnection;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zebra/sdk/comm/TcpConnection;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method protected getConnectionBuilderPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "TCP_STATUS"

    return-object v0
.end method

.method protected getDefaultPort()I
    .locals 1

    const/16 v0, 0x23f0

    return v0
.end method

.method public getSimpleConnectionName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/TcpStatusConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/TcpStatusConnection;->getConnectionBuilderPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/TcpStatusConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/TcpStatusConnection;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
