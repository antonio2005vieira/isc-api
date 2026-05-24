.class public Lcom/zebra/sdk/printer/internal/FileUtilZpl;
.super Lcom/zebra/sdk/printer/internal/FileUtilA;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zebra/sdk/printer/internal/FileUtilZpl$FileObjectWithCrc32Data;
    }
.end annotation


# static fields
.field private static final ONBOARD_FLASH:Ljava/lang/String; = "ONBOARD FLASH"

.field private static final RAM:Ljava/lang/String; = "RAM"

.field private static final READ_ONLY:Ljava/lang/String; = "READ ONLY"


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/FileUtilA;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    return-void
.end method

.method private extractFilePropertiesFromHZLResponse(Ljava/lang/String;)Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    invoke-direct {v0}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    const-string v1, "OBJECT"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "SIZE"

    invoke-interface {v4, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    const/4 v3, 0x0

    :goto_1
    :try_start_2
    new-instance v11, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesZpl;

    const-string v5, "MEMORY-LOCATION"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const-string v5, "TYPE"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    int-to-long v9, v3

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesZpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v11}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->add(Lcom/zebra/sdk/printer/PrinterObjectProperties;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_1
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    invoke-virtual {p1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private extractFilePropertiesFromJsonFileDriveListingResponse(Ljava/lang/String;)Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;
    .locals 13

    new-instance v0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    invoke-direct {v0}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;-><init>()V

    invoke-static {}, Lcom/zebra/sdk/util/internal/JacksonObjectMapperFactory;->getInstance()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v2

    const-class v3, Ljava/util/LinkedHashMap;

    const-class v4, Ljava/lang/String;

    const-class v5, Lcom/zebra/sdk/printer/internal/FileUtilZpl$FileObjectWithCrc32Data;

    invoke-virtual {v2, v3, v4, v5}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructMapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v2

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v3

    const-class v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructMapType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v2

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v3

    const-class v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructMapType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v2

    :try_start_0
    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v1, "file.drive_listing"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zebra/sdk/printer/internal/FileUtilZpl$FileObjectWithCrc32Data;

    iget-wide v9, v4, Lcom/zebra/sdk/printer/internal/FileUtilZpl$FileObjectWithCrc32Data;->size:J

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zebra/sdk/printer/internal/FileUtilZpl$FileObjectWithCrc32Data;

    iget-wide v11, v4, Lcom/zebra/sdk/printer/internal/FileUtilZpl$FileObjectWithCrc32Data;->crc32:J

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/apache/commons/io/FilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v3, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesZpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesZpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v3}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->add(Lcom/zebra/sdk/printer/PrinterObjectProperties;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private getObjectsListForDriveTypes(Ljava/util/List;Ljava/util/Set;Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/StorageInfo;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/zebra/sdk/printer/DriveType;",
            ">;",
            "Lcom/zebra/sdk/printer/PrinterLanguage;",
            ")",
            "Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    invoke-direct {v0}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zebra/sdk/printer/StorageInfo;

    iget-object v2, v1, Lcom/zebra/sdk/printer/StorageInfo;->driveType:Lcom/zebra/sdk/printer/DriveType;

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-char v1, v1, Lcom/zebra/sdk/printer/StorageInfo;->driveLetter:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->getObjectsListFromDrive(Ljava/lang/String;Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->getObjectsProperties()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->addAll(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getObjectsListFromAllDrives(Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->getObjectsListFromDrive(Ljava/lang/String;Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    move-result-object p1

    return-object p1
.end method

.method private getObjectsListFromDrive(Ljava/lang/String;Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    sget-object v0, Lcom/zebra/sdk/printer/PrinterLanguage;->LINE_PRINT:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    instance-of v0, v0, Lcom/zebra/sdk/comm/StatusConnection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "! U1 setvar \"file.drive_listing\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    new-instance p1, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;

    const-string v0, "! U1 getvar \"file.drive_listing\"\r\n"

    invoke-direct {p1, v0}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{}{\"file.drive_listing\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-virtual {p1, v1}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;->sendAndWaitForValidJsonResponse(Lcom/zebra/sdk/comm/Connection;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    sget-object p1, Lcom/zebra/sdk/printer/PrinterLanguage;->LINE_PRINT:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    instance-of p1, p1, Lcom/zebra/sdk/comm/StatusConnection;

    if-nez p1, :cond_1

    const-string p1, "^\"|\"$"

    const-string p2, ""

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\"file.drive_listing\":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->extractFilePropertiesFromJsonFileDriveListingResponse(Ljava/lang/String;)Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public extractFilePropertiesFromDirResult(Ljava/lang/String;)Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<?xml version=\'1.0\'?>\r\n<ZEBRA-ELTRON-PERSONALITY>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->extractFilePropertiesFromHZLResponse(Ljava/lang/String;)Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zebra/sdk/settings/internal/JsonHelper;->isValidJson([B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->extractFilePropertiesFromJsonFileDriveListingResponse(Ljava/lang/String;)Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/zebra/sdk/printer/internal/FileUtilA;->extractFilePropertiesFromDirResult(Ljava/lang/String;)Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getStorageInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/StorageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;

    sget-object v1, Lcom/zebra/sdk/util/internal/ZPLUtilities;->PRINTER_GET_STORAGE_INFO_COMMAND:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    iget-object v3, p0, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v3}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v3

    iget-object v4, p0, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v4}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/zebra/sdk/comm/internal/PrinterCommand;->sendAndWaitForResponse(Lcom/zebra/sdk/comm/Connection;II)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/zebra/sdk/util/internal/ZPLUtilities;->parseHWCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStorageInfoViaJsonChannel()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/StorageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;

    const-string v1, "{}{\"file.drive_info\":null}"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-virtual {v0, v2}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;->sendAndWaitForValidJsonResponse(Lcom/zebra/sdk/comm/Connection;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/zebra/sdk/util/internal/ZPLUtilities;->parseFileDriveInfoJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStorageInfoViaSgd()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/StorageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;

    const-string v1, "! U1 getvar \"file.drive_info\"\r\n"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-virtual {v0, v2}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;->sendAndWaitForValidJsonResponse(Lcom/zebra/sdk/comm/Connection;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "^\"|\"$"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{ \"file.drive_info\" : %s }"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zebra/sdk/util/internal/ZPLUtilities;->parseFileDriveInfoJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public retrieveFileNames()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->retrieveFilePropertiesFromPrinter()Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->getFileNamesFromProperties()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public retrieveFileNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->retrieveFilePropertiesFromPrinter()Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->filterByExtension([Ljava/lang/String;)Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->getFileNamesFromProperties()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public retrieveObjectsProperties()Ljava/util/List;
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
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->retrieveFilePropertiesFromPrinter()Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->getObjectsProperties()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public retrieveObjectsProperties(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/StorageInfo;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/zebra/sdk/printer/DriveType;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterObjectProperties;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->retrieveFilePropertiesFromPrinter()Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    move-result-object v0

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zebra/sdk/printer/StorageInfo;

    iget-char v3, v2, Lcom/zebra/sdk/printer/StorageInfo;->driveLetter:C

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/zebra/sdk/printer/StorageInfo;->driveType:Lcom/zebra/sdk/printer/DriveType;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->getObjectsProperties()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zebra/sdk/printer/PrinterObjectProperties;

    invoke-virtual {v2}, Lcom/zebra/sdk/printer/PrinterObjectProperties;->getDrivePrefix()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v2, Lcom/zebra/sdk/printer/DriveType;->READ_ONLY:Lcom/zebra/sdk/printer/DriveType;

    goto :goto_2

    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zebra/sdk/printer/DriveType;

    :goto_2
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    sget-object v2, Lcom/zebra/sdk/printer/DriveType;->UNKNOWN:Lcom/zebra/sdk/printer/DriveType;

    :goto_3
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->getObjectsProperties()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public retrieveObjectsPropertiesWithCrc32(Ljava/util/List;Ljava/util/Set;Lcom/zebra/sdk/printer/PrinterLanguage;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/StorageInfo;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/zebra/sdk/printer/DriveType;",
            ">;",
            "Lcom/zebra/sdk/printer/PrinterLanguage;",
            ")",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterObjectProperties;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->getObjectsListForDriveTypes(Ljava/util/List;Ljava/util/Set;Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p3}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->getObjectsListFromAllDrives(Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->getObjectsProperties()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
