.class public Lcom/zebra/sdk/comm/ConnectionBuilder;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addConnectionType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/zebra/sdk/comm/Connection;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/zebra/sdk/comm/internal/ConnectionBuilderInternal;->addConnectionType(Ljava/lang/Class;)V

    return-void
.end method

.method public static build(Ljava/lang/String;)Lcom/zebra/sdk/comm/Connection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-static {p0}, Lcom/zebra/sdk/comm/internal/ConnectionBuilderInternal;->build(Ljava/lang/String;)Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    return-object p0
.end method

.method private static initializeClasses()V
    .locals 1

    const-class v0, Lcom/zebra/sdk/comm/MultichannelTcpConnection;

    invoke-static {v0}, Lcom/zebra/sdk/comm/ConnectionBuilder;->addConnectionType(Ljava/lang/Class;)V

    const-class v0, Lcom/zebra/sdk/comm/TcpConnection;

    invoke-static {v0}, Lcom/zebra/sdk/comm/ConnectionBuilder;->addConnectionType(Ljava/lang/Class;)V

    const-class v0, Lcom/zebra/sdk/comm/TcpStatusConnection;

    invoke-static {v0}, Lcom/zebra/sdk/comm/ConnectionBuilder;->addConnectionType(Ljava/lang/Class;)V

    const-class v0, Lcom/zebra/sdk/comm/MultichannelBluetoothConnection;

    invoke-static {v0}, Lcom/zebra/sdk/comm/ConnectionBuilder;->addConnectionType(Ljava/lang/Class;)V

    const-class v0, Lcom/zebra/sdk/comm/BluetoothConnectionInsecure;

    invoke-static {v0}, Lcom/zebra/sdk/comm/ConnectionBuilder;->addConnectionType(Ljava/lang/Class;)V

    const-class v0, Lcom/zebra/sdk/comm/BluetoothConnection;

    invoke-static {v0}, Lcom/zebra/sdk/comm/ConnectionBuilder;->addConnectionType(Ljava/lang/Class;)V

    const-class v0, Lcom/zebra/sdk/comm/BluetoothStatusConnectionInsecure;

    invoke-static {v0}, Lcom/zebra/sdk/comm/ConnectionBuilder;->addConnectionType(Ljava/lang/Class;)V

    const-class v0, Lcom/zebra/sdk/comm/BluetoothStatusConnection;

    invoke-static {v0}, Lcom/zebra/sdk/comm/ConnectionBuilder;->addConnectionType(Ljava/lang/Class;)V

    return-void
.end method
