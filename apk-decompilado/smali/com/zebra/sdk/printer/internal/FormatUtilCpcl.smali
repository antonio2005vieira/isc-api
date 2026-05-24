.class public Lcom/zebra/sdk/printer/internal/FormatUtilCpcl;
.super Lcom/zebra/sdk/printer/internal/FormatUtilA;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/FormatUtilA;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    return-void
.end method


# virtual methods
.method protected countVariableFields(Ljava/lang/String;)I
    .locals 1

    const-string v0, "\\\\"

    invoke-static {p1, v0}, Lcom/zebra/sdk/util/internal/StringUtilities;->countSubstringOccurences(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getVariableFields(Ljava/lang/String;)[Lcom/zebra/sdk/printer/FieldDescriptionData;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/printer/internal/FormatUtilCpcl;->countVariableFields(Ljava/lang/String;)I

    move-result p1

    new-array v0, p1, [Lcom/zebra/sdk/printer/FieldDescriptionData;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    new-instance v2, Lcom/zebra/sdk/printer/FieldDescriptionData;

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/zebra/sdk/printer/FieldDescriptionData;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public printStoredFormat(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :try_start_0
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zebra/sdk/printer/internal/FormatUtilCpcl;->printStoredFormat(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public printStoredFormat(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "! UF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/FormatUtilCpcl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    return-void
.end method

.method public retrieveFormatFromPrinter(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FormatUtilCpcl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    const-string v1, "file.type"

    invoke-static {p1, v1, p2, v0}, Lcom/zebra/sdk/printer/SGD;->DO(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)V

    return-void
.end method

.method public retrieveFormatFromPrinter(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FormatUtilCpcl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    const-string v1, "file.type"

    invoke-static {v1, p1, v0}, Lcom/zebra/sdk/printer/SGD;->DO(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method
