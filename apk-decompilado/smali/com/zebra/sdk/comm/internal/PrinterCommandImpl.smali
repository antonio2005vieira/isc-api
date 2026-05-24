.class public Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/comm/internal/PrinterCommand;


# instance fields
.field private command:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;->command:Ljava/lang/String;

    iput-object p1, p0, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;->command:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public sendAndWaitForResponse(Ljava/io/OutputStream;Lcom/zebra/sdk/comm/Connection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;->command:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p2}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v3

    invoke-interface {p2}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse(Ljava/io/OutputStream;Ljava/io/InputStream;IILcom/zebra/sdk/comm/ResponseValidator;)V

    return-void
.end method

.method public sendAndWaitForResponse(Ljava/io/OutputStream;Lcom/zebra/sdk/comm/Connection;IILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object p3, p0, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;->command:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-direct {v2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p2}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v3

    invoke-interface {p2}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v4

    move-object v0, p2

    move-object v1, p1

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForResponse(Ljava/io/OutputStream;Ljava/io/InputStream;IILjava/lang/String;)V

    return-void
.end method

.method public sendAndWaitForResponse(Lcom/zebra/sdk/comm/Connection;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v0

    invoke-interface {p1}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;->sendAndWaitForResponse(Lcom/zebra/sdk/comm/Connection;II)[B

    move-result-object p1

    return-object p1
.end method

.method public sendAndWaitForResponse(Lcom/zebra/sdk/comm/Connection;II)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;->sendAndWaitForResponse(Lcom/zebra/sdk/comm/Connection;IILjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public sendAndWaitForResponse(Lcom/zebra/sdk/comm/Connection;IILjava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;->command:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForResponse([BIILjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public sendAndWaitForValidJsonResponse(Lcom/zebra/sdk/comm/Connection;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;->command:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-interface {p1}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v1

    invoke-interface {p1}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v2

    new-instance v3, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {v3}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    move-result-object p1

    return-object p1
.end method
