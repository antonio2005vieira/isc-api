.class Lcom/zebra/sdk/printer/QuoteRemovingOutputStream;
.super Ljava/io/FilterOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    :cond_0
    return-void
.end method
