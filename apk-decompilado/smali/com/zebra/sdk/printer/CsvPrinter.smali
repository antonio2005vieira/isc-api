.class public Lcom/zebra/sdk/printer/CsvPrinter;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToKeyedByFieldNumber([Ljava/lang/String;Lcom/zebra/sdk/printer/internal/TemplateInfo;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/zebra/sdk/printer/internal/TemplateInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/zebra/sdk/printer/internal/CsvPrinterHelper;->parseSingleLineFormat([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/zebra/sdk/printer/internal/TemplateInfo;->variableFields:[Lcom/zebra/sdk/printer/FieldDescriptionData;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    iget-object v7, v6, Lcom/zebra/sdk/printer/FieldDescriptionData;->fieldName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v6, v6, Lcom/zebra/sdk/printer/FieldDescriptionData;->fieldNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static csvDataIsSingleLineWithVariables(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Lcom/zebra/sdk/printer/internal/CsvPrinterHelper;->parseSingleLineFormat([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static doOutput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lcom/zebra/sdk/printer/internal/TemplateInfo;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Lcom/zebra/sdk/printer/internal/TemplateInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object p1, p4, Lcom/zebra/sdk/printer/internal/TemplateInfo;->pathOnPrinter:Ljava/lang/String;

    invoke-static {p1, p5, p2}, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->generateStoredFormat(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    const-string p2, "utf8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zebra/sdk/printer/CsvPrinter;->sendStuffToPrinter(Ljava/lang/String;[B)V

    :cond_1
    return-void
.end method

.method private static doesNotHavePrintChannel(Lcom/zebra/sdk/comm/Connection;)Z
    .locals 1

    instance-of v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/zebra/sdk/comm/MultichannelConnection;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/MultichannelConnection;->getPrintingChannel()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->isConnected()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    instance-of p0, p0, Lcom/zebra/sdk/comm/StatusConnection;

    :goto_0
    return p0
.end method

.method private static hasPrintingChannel(Lcom/zebra/sdk/comm/Connection;)Z
    .locals 1

    instance-of v0, p0, Lcom/zebra/sdk/comm/MultichannelConnection;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/zebra/sdk/comm/MultichannelConnection;

    invoke-virtual {p0}, Lcom/zebra/sdk/comm/MultichannelConnection;->getPrintingChannel()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->isConnected()Z

    move-result p0

    goto :goto_0

    :cond_0
    instance-of p0, p0, Lcom/zebra/sdk/comm/StatusConnection;

    xor-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method private static isChannelInvalidForZpl(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)Z
    .locals 1

    invoke-static {p0}, Lcom/zebra/sdk/printer/CsvPrinter;->hasPrintingChannel(Lcom/zebra/sdk/comm/Connection;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zebra/sdk/printer/PrinterLanguage;->LINE_PRINT:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/zebra/sdk/printer/CsvPrinter;->doesNotHavePrintChannel(Lcom/zebra/sdk/comm/Connection;)Z

    move-result p1

    :cond_1
    return p1
.end method

.method public static print(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/zebra/sdk/printer/CsvPrinter;->print(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public static print(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/zebra/sdk/printer/CsvPrinter;->print(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public static print(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/zebra/sdk/printer/CsvPrinter;->print(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public static print(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/internal/VerbosePrinter;

    invoke-direct {v0, p5}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;-><init>(Z)V

    const-string p5, "Reading CSV data..."

    invoke-virtual {v0, p5}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->println(Ljava/lang/String;)V

    new-instance p5, Lcom/zebra/sdk/printer/internal/UnicodeReader;

    const-string v1, "utf8"

    invoke-direct {p5, p1, v1}, Lcom/zebra/sdk/printer/internal/UnicodeReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance p1, Lau/com/bytecode/opencsv/CSVReader;

    invoke-direct {p1, p5}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p1}, Lau/com/bytecode/opencsv/CSVReader;->readAll()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lau/com/bytecode/opencsv/CSVReader;->close()V

    invoke-virtual {p5}, Ljava/io/Reader;->close()V

    const/4 p1, 0x1

    new-array p5, p1, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p5, v3

    const-string v2, "CSV Data contains %d lines..."

    invoke-static {v2, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->println(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    new-array v4, p1, [Ljava/lang/Object;

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "This lines contains %d items..."

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->print(Ljava/lang/String;)V

    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v2, v5

    new-array v7, p1, [Ljava/lang/Object;

    aput-object v6, v7, v3

    const-string v6, "<%s>"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p5, "...end of CSV Data"

    invoke-virtual {v0, p5}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->println(Ljava/lang/String;)V

    new-array p1, p1, [I

    const/4 p5, -0x1

    aput p5, p1, v3

    new-instance p5, Lcom/zebra/sdk/printer/internal/TemplateInfo;

    invoke-direct {p5}, Lcom/zebra/sdk/printer/internal/TemplateInfo;-><init>()V

    invoke-virtual {p5, p0, p2}, Lcom/zebra/sdk/printer/internal/TemplateInfo;->acquire(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Done acquiring template"

    invoke-virtual {v0, v2}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->println(Ljava/lang/String;)V

    iget-object v2, p5, Lcom/zebra/sdk/printer/internal/TemplateInfo;->variableFields:[Lcom/zebra/sdk/printer/FieldDescriptionData;

    array-length v2, v2

    new-array v4, v2, [I

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_2

    aput v5, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iget-boolean v2, p5, Lcom/zebra/sdk/printer/internal/TemplateInfo;->isLocalToComputer:Z

    if-eqz v2, :cond_3

    if-eqz p0, :cond_3

    invoke-static {p2}, Lcom/zebra/sdk/util/internal/FileReader;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zebra/sdk/printer/CsvPrinter;->sendStuffToPrinter(Ljava/lang/String;[B)V

    :cond_3
    invoke-static {v1}, Lcom/zebra/sdk/printer/CsvPrinter;->csvDataIsSingleLineWithVariables(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, "Is single line w/variables"

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->println(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1, p5}, Lcom/zebra/sdk/printer/CsvPrinter;->convertToKeyedByFieldNumber([Ljava/lang/String;Lcom/zebra/sdk/printer/internal/TemplateInfo;)Ljava/util/Map;

    move-result-object v9

    const-string p1, "Done convertToKeyedByFieldNumber"

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->println(Ljava/lang/String;)V

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v4 .. v9}, Lcom/zebra/sdk/printer/CsvPrinter;->doOutput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lcom/zebra/sdk/printer/internal/TemplateInfo;Ljava/util/Map;)V

    const-string p0, "Printed the line of CSV"

    :goto_3
    invoke-virtual {v0, p0}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_4
    const-string v2, "Is not single line w/variables"

    invoke-virtual {v0, v2}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->println(Ljava/lang/String;)V

    :try_start_0
    const-string v2, "Getting first line of data..."

    invoke-virtual {v0, v2}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->println(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const-string v5, "...extracted first line of data"

    invoke-virtual {v0, v5}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->println(Ljava/lang/String;)V

    iget-object v5, p5, Lcom/zebra/sdk/printer/internal/TemplateInfo;->variableFields:[Lcom/zebra/sdk/printer/FieldDescriptionData;

    invoke-static {v5, v2, p1}, Lcom/zebra/sdk/printer/internal/CsvPrinterHelper;->extractFdsByColumnHeading([Lcom/zebra/sdk/printer/FieldDescriptionData;[Ljava/lang/String;[I)[I

    move-result-object v4

    const-string v2, "Done extractFdsByColumnHeading"

    invoke-virtual {v0, v2}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->println(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/zebra/sdk/printer/internal/UseDefaultMappingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object v2, v4

    const-string v4, "Starting CSV processing..."

    invoke-virtual {v0, v4}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->println(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p5, Lcom/zebra/sdk/printer/internal/TemplateInfo;->variableFields:[Lcom/zebra/sdk/printer/FieldDescriptionData;

    array-length v5, v5

    array-length v6, v4

    if-gt v5, v6, :cond_5

    const/4 v5, 0x0

    :goto_5
    iget-object v6, p5, Lcom/zebra/sdk/printer/internal/TemplateInfo;->variableFields:[Lcom/zebra/sdk/printer/FieldDescriptionData;

    array-length v6, v6

    if-ge v5, v6, :cond_6

    iget-object v6, p5, Lcom/zebra/sdk/printer/internal/TemplateInfo;->variableFields:[Lcom/zebra/sdk/printer/FieldDescriptionData;

    aget-object v6, v6, v5

    iget v6, v6, Lcom/zebra/sdk/printer/FieldDescriptionData;->fieldNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, v2, v5

    aget-object v7, v4, v7

    invoke-interface {v9, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    aget v5, p1, v3

    if-ltz v5, :cond_7

    aget v5, p1, v3

    aget-object v4, v4, v5

    move-object v6, v4

    goto :goto_6

    :cond_7
    move-object v6, p3

    :goto_6
    move-object v4, p0

    move-object v5, p2

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v4 .. v9}, Lcom/zebra/sdk/printer/CsvPrinter;->doOutput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lcom/zebra/sdk/printer/internal/TemplateInfo;Ljava/util/Map;)V

    const-string v4, "...printed a line of CSV"

    invoke-virtual {v0, v4}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    const-string p0, "Done processing CSV"

    goto :goto_3

    :goto_7
    return-void
.end method

.method private static sendStuffToPrinter(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/comm/internal/ConnectionBuilderInternal;->build(Ljava/lang/String;)Lcom/zebra/sdk/comm/Connection;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->open()V

    sget-object v0, Lcom/zebra/sdk/printer/PrinterLanguage;->ZPL:Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-static {p0}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->getLinkOsPrinter(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v0

    :cond_0
    invoke-static {p0, v0}, Lcom/zebra/sdk/printer/CsvPrinter;->isChannelInvalidForZpl(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0, p1}, Lcom/zebra/sdk/comm/Connection;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    return-void

    :cond_2
    :try_start_2
    new-instance p1, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v0, "Cannot send Zpl - printer is in line mode or port is status port."

    invoke-direct {p1, v0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_3
    throw p1
.end method
