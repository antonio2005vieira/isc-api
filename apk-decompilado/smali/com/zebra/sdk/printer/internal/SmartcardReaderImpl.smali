.class public Lcom/zebra/sdk/printer/internal/SmartcardReaderImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/device/SmartcardReader;


# instance fields
.field protected printerConnection:Lcom/zebra/sdk/comm/Connection;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/printer/ZebraPrinter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/zebra/sdk/printer/ZebraPrinter;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/SmartcardReaderImpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/SmartcardReaderImpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    const-string v1, "! U1 S-CARD CT_CLOSE\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    return-void
.end method

.method public doCommand(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "! U1 S-CARD CT_DATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/SmartcardReaderImpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/comm/internal/PrinterCommand;->sendAndWaitForResponse(Lcom/zebra/sdk/comm/Connection;)[B

    move-result-object p1

    return-object p1
.end method

.method public getATR()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;

    const-string v1, "! U1 S-CARD CT_ATR\r\n"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zebra/sdk/printer/internal/SmartcardReaderImpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v0, v1}, Lcom/zebra/sdk/comm/internal/PrinterCommand;->sendAndWaitForResponse(Lcom/zebra/sdk/comm/Connection;)[B

    move-result-object v0

    return-object v0
.end method
