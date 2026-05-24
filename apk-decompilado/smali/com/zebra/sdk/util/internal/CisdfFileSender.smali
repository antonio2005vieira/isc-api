.class public Lcom/zebra/sdk/util/internal/CisdfFileSender;
.super Ljava/lang/Object;


# instance fields
.field private connection:Lcom/zebra/sdk/comm/Connection;

.field private fileDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zebra/sdk/comm/Connection;",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/CisdfFileSender;->connection:Lcom/zebra/sdk/comm/Connection;

    iput-object p2, p0, Lcom/zebra/sdk/util/internal/CisdfFileSender;->fileDescriptors:Ljava/util/List;

    return-void
.end method

.method private send()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/CisdfFileSender;->fileDescriptors:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/CisdfFileSender;->fileDescriptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;

    invoke-direct {p0, v1}, Lcom/zebra/sdk/util/internal/CisdfFileSender;->sendToPrinter(Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No files to send"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static send(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0}, Lcom/zebra/sdk/util/internal/CisdfFileSender;->send(Lcom/zebra/sdk/comm/Connection;Ljava/util/List;)V

    return-void
.end method

.method public static send(Lcom/zebra/sdk/comm/Connection;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zebra/sdk/comm/Connection;",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/util/internal/CisdfFileSender;

    invoke-direct {v0, p0, p1}, Lcom/zebra/sdk/util/internal/CisdfFileSender;-><init>(Lcom/zebra/sdk/comm/Connection;Ljava/util/List;)V

    invoke-direct {v0}, Lcom/zebra/sdk/util/internal/CisdfFileSender;->send()V

    return-void
.end method

.method private sendToPrinter(Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/CisdfFileSender;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-static {p1}, Lcom/zebra/sdk/util/internal/FileWrapper;->createCisdfHeader(Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/CisdfFileSender;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-virtual {p1}, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;->getSourceStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zebra/sdk/util/internal/FileUtilities;->sendFileContentsInChunks(Lcom/zebra/sdk/comm/Connection;Ljava/io/InputStream;)V

    iget-object p1, p0, Lcom/zebra/sdk/util/internal/CisdfFileSender;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-static {}, Lcom/zebra/sdk/util/internal/FileWrapper;->getCisdfTrailer()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    return-void
.end method
