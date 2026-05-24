.class public Lcom/zebra/sdk/printer/internal/MagCardReaderImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/device/MagCardReader;


# instance fields
.field protected printerConnection:Lcom/zebra/sdk/comm/Connection;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/printer/ZebraPrinter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/zebra/sdk/printer/ZebraPrinter;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/MagCardReaderImpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    return-void
.end method


# virtual methods
.method public read(I)[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const/16 v3, 0x3e8

    if-gtz p1, :cond_0

    const/16 p1, 0x3e8

    :cond_0
    mul-int/lit8 v6, p1, 0x8

    div-int/2addr v6, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "! U1 MCR "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " T1 T2 T3"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\r\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;

    invoke-direct {v7, v3}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zebra/sdk/printer/internal/MagCardReaderImpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v3}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v8

    invoke-interface {v7, v3, p1, v8}, Lcom/zebra/sdk/comm/internal/PrinterCommand;->sendAndWaitForResponse(Lcom/zebra/sdk/comm/Connection;II)[B

    move-result-object p1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, "T1:"

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v7, -0x1

    if-eq p1, v7, :cond_1

    invoke-virtual {v3, v6, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    goto :goto_0

    :cond_1
    const/4 v8, -0x1

    :goto_0
    if-eq p1, v7, :cond_2

    if-eq v8, v7, :cond_2

    add-int/2addr p1, v0

    invoke-virtual {v3, p1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    :cond_2
    const-string p1, "T2:"

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v7, :cond_3

    invoke-virtual {v3, v6, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :goto_1
    if-eq p1, v7, :cond_4

    if-eq v2, v7, :cond_4

    add-int/2addr p1, v0

    invoke-virtual {v3, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    :cond_4
    const-string p1, "T3:"

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v7, :cond_5

    invoke-virtual {v3, v6, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_2

    :cond_5
    const/4 v2, -0x1

    :goto_2
    if-eq p1, v7, :cond_6

    if-eq v2, v7, :cond_6

    add-int/2addr p1, v0

    invoke-virtual {v3, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    :cond_6
    return-object v1
.end method
