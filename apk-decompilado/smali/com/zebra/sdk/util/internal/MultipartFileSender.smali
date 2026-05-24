.class public Lcom/zebra/sdk/util/internal/MultipartFileSender;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zebra/sdk/util/internal/MultipartFileSender$PrinterOutputStream;
    }
.end annotation


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

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/MultipartFileSender;->connection:Lcom/zebra/sdk/comm/Connection;

    iput-object p2, p0, Lcom/zebra/sdk/util/internal/MultipartFileSender;->fileDescriptors:Ljava/util/List;

    return-void
.end method

.method private buildEntity()Lorg/apache/http/HttpEntity;
    .locals 5

    invoke-static {}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->create()Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->setMode(Lorg/apache/http/entity/mime/HttpMultipartMode;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    iget-object v1, p0, Lcom/zebra/sdk/util/internal/MultipartFileSender;->fileDescriptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;

    new-instance v3, Lorg/apache/http/entity/mime/content/InputStreamBody;

    invoke-virtual {v2}, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;->getSourceStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v2}, Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/apache/http/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v2, "files"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->build()Lorg/apache/http/HttpEntity;

    move-result-object v0

    return-object v0
.end method

.method public static getPrinterObjectPropertiesFromJsonData([B)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterObjectProperties;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    new-instance v1, Lcom/zebra/sdk/util/internal/MultipartFileSender$1;

    invoke-direct {v1}, Lcom/zebra/sdk/util/internal/MultipartFileSender$1;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/zebra/sdk/util/internal/JacksonObjectMapperFactory;->getInstance()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue([BLcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zebra/sdk/util/internal/MpfPrinterResponse;

    invoke-virtual {v1}, Lcom/zebra/sdk/util/internal/MpfPrinterResponse;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zebra/sdk/util/internal/FileUtilities;->parseDriveAndExtension(Ljava/lang/String;)Lcom/zebra/sdk/util/internal/PrinterFilePath;

    move-result-object v2

    new-instance v11, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesZpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/zebra/sdk/util/internal/PrinterFilePath;->getDrive()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/zebra/sdk/util/internal/PrinterFilePath;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/zebra/sdk/util/internal/PrinterFilePath;->getExtension()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/zebra/sdk/util/internal/MpfPrinterResponse;->getSize()J

    move-result-wide v7

    invoke-virtual {v1}, Lcom/zebra/sdk/util/internal/MpfPrinterResponse;->getCrc32()J

    move-result-wide v9

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesZpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private getPrinterResponse()Ljava/util/List;
    .locals 5
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

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/MultipartFileSender;->connection:Lcom/zebra/sdk/comm/Connection;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/zebra/sdk/util/internal/MultipartFileSender;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v2}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v2

    iget-object v3, p0, Lcom/zebra/sdk/util/internal/MultipartFileSender;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v3}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v3

    new-instance v4, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {v4}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/zebra/sdk/util/internal/MultipartFileSender;->getPrinterObjectPropertiesFromJsonData([B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static send(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;)Lcom/zebra/sdk/printer/PrinterObjectProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0}, Lcom/zebra/sdk/util/internal/MultipartFileSender;->send(Lcom/zebra/sdk/comm/Connection;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zebra/sdk/printer/PrinterObjectProperties;

    return-object p0

    :cond_0
    new-instance p0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string p1, "No printer response to MPF storage request"

    invoke-direct {p0, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private send()Ljava/util/List;
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

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/MultipartFileSender;->fileDescriptors:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zebra/sdk/util/internal/MultipartFileSender;->buildEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zebra/sdk/util/internal/MultipartFileSender;->sendToPrinter(Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0}, Lcom/zebra/sdk/util/internal/MultipartFileSender;->getPrinterResponse()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No files to send"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static send(Lcom/zebra/sdk/comm/Connection;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zebra/sdk/comm/Connection;",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/util/internal/PrinterFileDescriptor;",
            ">;)",
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

    new-instance v0, Lcom/zebra/sdk/util/internal/MultipartFileSender;

    invoke-direct {v0, p0, p1}, Lcom/zebra/sdk/util/internal/MultipartFileSender;-><init>(Lcom/zebra/sdk/comm/Connection;Ljava/util/List;)V

    invoke-direct {v0}, Lcom/zebra/sdk/util/internal/MultipartFileSender;->send()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private sendToPrinter(Lorg/apache/http/HttpEntity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/zebra/sdk/util/internal/MultipartFileSender$PrinterOutputStream;

    iget-object v1, p0, Lcom/zebra/sdk/util/internal/MultipartFileSender;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {v0, p0, v1}, Lcom/zebra/sdk/util/internal/MultipartFileSender$PrinterOutputStream;-><init>(Lcom/zebra/sdk/util/internal/MultipartFileSender;Lcom/zebra/sdk/comm/Connection;)V

    const-string v1, "{}"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-interface {p1, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
