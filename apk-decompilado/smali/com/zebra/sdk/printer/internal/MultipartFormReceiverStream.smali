.class public Lcom/zebra/sdk/printer/internal/MultipartFormReceiverStream;
.super Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;


# instance fields
.field private boundaryBuffer:Ljava/io/ByteArrayOutputStream;

.field private numBytesRead:J


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;-><init>(Lcom/zebra/sdk/comm/Connection;J)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/zebra/sdk/printer/internal/MultipartFormReceiverStream;->numBytesRead:J

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/MultipartFormReceiverStream;->boundaryBuffer:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method protected setTerminatorBasedOnData(I)V
    .locals 5

    iget-wide v0, p0, Lcom/zebra/sdk/printer/internal/MultipartFormReceiverStream;->numBytesRead:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zebra/sdk/printer/internal/MultipartFormReceiverStream;->numBytesRead:J

    const-wide/16 v2, 0x64

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/MultipartFormReceiverStream;->boundaryBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/MultipartFormReceiverStream;->terminator:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, "^[\\s]*--([^\\s|^-]+)\\r\\n"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/MultipartFormReceiverStream;->boundaryBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "--%s--\r\n"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/MultipartFormReceiverStream;->terminator:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method
