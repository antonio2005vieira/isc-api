.class public Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;
.super Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6d0829fb09bcd1d7L


# instance fields
.field protected MAX_INTER_CHARACTER_DELAY_TIME:J

.field private fullObjectPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V

    const-wide/16 p2, 0x3a98

    iput-wide p2, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->MAX_INTER_CHARACTER_DELAY_TIME:J

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 p3, 0x3a

    if-ne p2, p3, :cond_0

    iput-object p1, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->fullObjectPath:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Drive letter not specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "File name not provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isOkToProceed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->isLinkOs2_5_OrHigher()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    instance-of v0, v0, Lcom/zebra/sdk/comm/StatusConnection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Cannot retrieve objects over status channel on this version of firmware"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->isPrintingChannelInLineMode()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Cannot retrieve objects from printer over printing channel when in line mode"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private retrieveStreamToObject()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->shouldRequestMultipartForm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->fullObjectPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zebra/sdk/util/internal/MultipartFileRequester;->send(Lcom/zebra/sdk/comm/Connection;Ljava/lang/String;)V

    new-instance v0, Lcom/zebra/sdk/printer/internal/MultipartFormReceiverStream;

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    iget-wide v2, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->MAX_INTER_CHARACTER_DELAY_TIME:J

    invoke-direct {v0, v1, v2, v3}, Lcom/zebra/sdk/printer/internal/MultipartFormReceiverStream;-><init>(Lcom/zebra/sdk/comm/Connection;J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->fullObjectPath:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zebra/sdk/util/internal/FileWrapper;->isHzoExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->fullObjectPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/zebra/sdk/util/internal/ZPLUtilities;->getHZO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zebra/sdk/comm/Connection;->write([B)V
    :try_end_0
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStream;

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    iget-wide v2, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->MAX_INTER_CHARACTER_DELAY_TIME:J

    const-string v4, "</ZEBRA-ELTRON-PERSONALITY>\r\n"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStream;-><init>(Lcom/zebra/sdk/comm/Connection;JLjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {v0}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private shouldRequestMultipartForm()Z
    .locals 2

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->isLinkOs2_5_OrHigher()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    sget-object v1, Lcom/zebra/sdk/printer/PrinterLanguage;->LINE_PRINT:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    instance-of v0, v0, Lcom/zebra/sdk/comm/StatusConnection;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public execute()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->selectProperChannel()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->isOkToProceed()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->retrieveStreamToObject()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/ObjectGrabberOperation;->execute()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
