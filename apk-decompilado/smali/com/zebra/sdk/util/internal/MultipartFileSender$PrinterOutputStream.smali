.class Lcom/zebra/sdk/util/internal/MultipartFileSender$PrinterOutputStream;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zebra/sdk/util/internal/MultipartFileSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrinterOutputStream"
.end annotation


# instance fields
.field private connection:Lcom/zebra/sdk/comm/Connection;

.field final synthetic this$0:Lcom/zebra/sdk/util/internal/MultipartFileSender;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/util/internal/MultipartFileSender;Lcom/zebra/sdk/comm/Connection;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/MultipartFileSender$PrinterOutputStream;->this$0:Lcom/zebra/sdk/util/internal/MultipartFileSender;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lcom/zebra/sdk/util/internal/MultipartFileSender$PrinterOutputStream;->connection:Lcom/zebra/sdk/comm/Connection;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unsupported Operation"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/zebra/sdk/util/internal/MultipartFileSender$PrinterOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/util/internal/MultipartFileSender$PrinterOutputStream;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v0, p1, p2, p3}, Lcom/zebra/sdk/comm/Connection;->write([BII)V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
