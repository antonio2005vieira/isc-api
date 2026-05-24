.class public Lcom/zebra/sdk/printer/XmlPrinter;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static print(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/zebra/sdk/printer/XmlPrinter;->print(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public static print(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Z)V
    .locals 6

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/zebra/sdk/printer/XmlPrinter;->print(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public static print(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/zebra/sdk/printer/XmlPrinter;->print(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public static print(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Z)V
    .locals 8

    :try_start_0
    new-instance v0, Lcom/zebra/sdk/printer/internal/VerbosePrinter;

    invoke-direct {v0, p5}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;-><init>(Z)V

    const-string v1, "Starting XML print..."

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->println(Ljava/lang/String;)V

    const-string v1, "Converting XML data to CSV..."

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->print(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zebra/sdk/printer/internal/XmlToCsvConverter;->convert(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    const-string p1, "done."

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->println(Ljava/lang/String;)V

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/zebra/sdk/printer/CsvPrinter;->print(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    const-string p2, "org.xml.sax.SAXParseException"

    const-string p3, "Error parsing xml"

    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
