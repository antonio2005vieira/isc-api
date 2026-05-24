.class public Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field allLabelsAsCsv:Ljava/io/ByteArrayOutputStream;

.field columns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultQuantity:Ljava/lang/String;

.field labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field nameValuePairs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nodeValue:Ljava/lang/StringBuilder;

.field private workingVariable:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->allLabelsAsCsv:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->columns:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->labels:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->defaultQuantity:Ljava/lang/String;

    return-void
.end method

.method public static convert(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x400

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->convert([B)[B

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static convert([B)[B
    .locals 3

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    new-instance v1, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;

    invoke-direct {v1}, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;-><init>()V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    invoke-direct {v1}, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->getCsvOutput()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getCsvOutput()[B
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->allLabelsAsCsv:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->nodeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endDocument()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "\""

    const-string v1, "\n"

    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->columns:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ","

    if-ge v3, v4, :cond_1

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->allLabelsAsCsv:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_0
    iget-object v4, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->allLabelsAsCsv:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->columns:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->allLabelsAsCsv:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v3, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->labels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/4 v6, 0x0

    :goto_2
    iget-object v7, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->columns:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->allLabelsAsCsv:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_2
    iget-object v7, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->columns:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    const-string v7, ""

    goto :goto_3

    :cond_3
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_4
    iget-object v8, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->allLabelsAsCsv:Ljava/io/ByteArrayOutputStream;

    const-string v9, "utf8"

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->allLabelsAsCsv:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_6
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->nameValuePairs:Ljava/util/Map;

    if-eqz p1, :cond_2

    const-string p1, "variable"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->nameValuePairs:Ljava/util/Map;

    iget-object p2, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->workingVariable:Ljava/lang/String;

    iget-object p3, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->nodeValue:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "label"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->labels:Ljava/util/List;

    iget-object p2, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->nameValuePairs:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->nodeValue:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->nodeValue:Ljava/lang/StringBuilder;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string p1, "label"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "QUANTITY"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->nameValuePairs:Ljava/util/Map;

    iget-object p3, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->defaultQuantity:Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string p1, "variable"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "name"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->workingVariable:Ljava/lang/String;

    iget-object p2, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->columns:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->columns:Ljava/util/List;

    iget-object p2, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->workingVariable:Ljava/lang/String;

    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p1, "file"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "_QUANTITY"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->defaultQuantity:Ljava/lang/String;

    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->columns:Ljava/util/List;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
