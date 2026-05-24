.class public Lcom/zebra/sdk/printer/operations/internal/FileStorer;
.super Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion<",
        "Ljava/util/List<",
        "Lcom/zebra/sdk/printer/PrinterObjectProperties;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6423a0cf34a43f58L


# instance fields
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
.method public constructor <init>(Ljava/util/List;Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;",
            ">;",
            "Lcom/zebra/sdk/comm/Connection;",
            "Lcom/zebra/sdk/printer/PrinterLanguage;",
            "Lcom/zebra/sdk/printer/LinkOsInformation;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V

    iput-object p1, p0, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->fileDescriptors:Ljava/util/List;

    return-void
.end method

.method private createPrinterFilePropertiesFromFileDescriptors()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterObjectProperties;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->fileDescriptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;

    :try_start_0
    invoke-virtual {v2}, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zebra/sdk/util/internal/FileUtilities;->parseDriveAndExtension(Ljava/lang/String;)Lcom/zebra/sdk/util/internal/PrinterFilePath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zebra/sdk/util/internal/PrinterFilePath;->getDrive()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/zebra/sdk/util/internal/PrinterFilePath;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/zebra/sdk/util/internal/PrinterFilePath;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;->getFileSize()J

    move-result-wide v12

    new-instance v2, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesCisdf;

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesCisdf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private isOkToProceed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->isLinkOs2_5_OrHigher()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->connection:Lcom/zebra/sdk/comm/Connection;

    instance-of v0, v0, Lcom/zebra/sdk/comm/StatusConnection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Cannot store objects over status channel on this version of firmware"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private shouldSendMultipartForm()Z
    .locals 2

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->isLinkOs2_5_OrHigher()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    sget-object v1, Lcom/zebra/sdk/printer/PrinterLanguage;->LINE_PRINT:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->connection:Lcom/zebra/sdk/comm/Connection;

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

.method private storeFile()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterObjectProperties;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->shouldSendMultipartForm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->connection:Lcom/zebra/sdk/comm/Connection;

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->fileDescriptors:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/zebra/sdk/util/internal/MultipartFileSender;->send(Lcom/zebra/sdk/comm/Connection;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->connection:Lcom/zebra/sdk/comm/Connection;

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->fileDescriptors:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/zebra/sdk/util/internal/CisdfFileSender;->send(Lcom/zebra/sdk/comm/Connection;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->createPrinterFilePropertiesFromFileDescriptors()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterObjectProperties;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->selectProperChannel()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->isOkToProceed()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/FileStorer;->storeFile()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
