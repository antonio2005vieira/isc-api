.class Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation$1;
.super Lcom/zebra/sdk/printer/internal/PrinterStatusLinkOs;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;->execute()Lcom/zebra/sdk/printer/PrinterStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;


# direct methods
.method constructor <init>(Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;Lcom/zebra/sdk/comm/Connection;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation$1;->this$0:Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;

    invoke-direct {p0, p2}, Lcom/zebra/sdk/printer/internal/PrinterStatusLinkOs;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    return-void
.end method


# virtual methods
.method protected getStatusInfoFromPrinter()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation$1;->this$0:Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;

    iget-object v0, v0, Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    const-string v1, "device.host_status"

    invoke-static {v1}, Lcom/zebra/sdk/util/internal/SGDUtilities;->decorateWithGetCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation$1;->this$0:Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;

    iget-object v2, v2, Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v2}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v2

    iget-object v3, p0, Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation$1;->this$0:Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;

    iget-object v3, v3, Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v3}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForResponse([BIILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
