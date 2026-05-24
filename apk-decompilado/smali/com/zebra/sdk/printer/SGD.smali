.class public Lcom/zebra/sdk/printer/SGD;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DO(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v0

    invoke-interface {p2}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/zebra/sdk/printer/SGD;->DO(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static DO(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const-string v0, ""

    invoke-static {p2}, Lcom/zebra/sdk/settings/internal/ConnectionUtil;->selectConnection(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/comm/Connection;

    move-result-object p2

    instance-of v1, p2, Lcom/zebra/sdk/comm/StatusConnection;

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/zebra/sdk/settings/internal/JsonHelper;->buildSetCommand(Ljava/util/Map;)[B

    move-result-object p1

    new-instance v1, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {v1}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    invoke-interface {p2, p1, p3, p4, v1}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lcom/zebra/sdk/settings/internal/JsonHelper;->parseGetResponse([B)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "! U1 do \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" \""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    new-instance p1, Lcom/zebra/sdk/settings/internal/SgdValidator;

    invoke-direct {p1}, Lcom/zebra/sdk/settings/internal/SgdValidator;-><init>()V

    invoke-interface {p2, p0, p3, p4, p1}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Lcom/zebra/sdk/util/internal/StringUtilities;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public static DO(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-interface {p3}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v4

    invoke-interface {p3}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/zebra/sdk/printer/SGD;->DO(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;II)V

    return-void
.end method

.method public static DO(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-static {p3}, Lcom/zebra/sdk/settings/internal/ConnectionUtil;->selectConnection(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    instance-of p3, v0, Lcom/zebra/sdk/comm/StatusConnection;

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/zebra/sdk/settings/internal/JsonHelper;->buildSetCommand(Ljava/util/Map;)[B

    move-result-object p2

    new-instance p3, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {p3}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    invoke-interface {v0, p2, p4, p5, p3}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    move-result-object p2

    const/4 p3, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/zebra/sdk/settings/internal/JsonHelper;->parseGetResponse([B)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p3, p1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v1, Lcom/zebra/sdk/printer/QuoteRemovingOutputStream;

    invoke-direct {v1, p0}, Lcom/zebra/sdk/printer/QuoteRemovingOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "! U1 do \""

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v5, Lcom/zebra/sdk/settings/internal/SgdValidator;

    invoke-direct {v5}, Lcom/zebra/sdk/settings/internal/SgdValidator;-><init>()V

    move v3, p4

    move v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse(Ljava/io/OutputStream;Ljava/io/InputStream;IILcom/zebra/sdk/comm/ResponseValidator;)V

    :goto_1
    return-void
.end method

.method public static GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v0

    invoke-interface {p1}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1}, Lcom/zebra/sdk/settings/internal/ConnectionUtil;->selectConnection(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    instance-of v1, p1, Lcom/zebra/sdk/comm/StatusConnection;

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/zebra/sdk/settings/internal/JsonHelper;->buildQuery(Ljava/util/List;)[B

    move-result-object v1

    new-instance v2, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {v2}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    invoke-interface {p1, v1, p2, p3, v2}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lcom/zebra/sdk/settings/internal/JsonHelper;->parseGetResponse([B)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "! U1 getvar \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    new-instance v0, Lcom/zebra/sdk/settings/internal/SgdValidator;

    invoke-direct {v0}, Lcom/zebra/sdk/settings/internal/SgdValidator;-><init>()V

    invoke-interface {p1, p0, p2, p3, v0}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Lcom/zebra/sdk/util/internal/StringUtilities;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public static SET(Ljava/lang/String;ILcom/zebra/sdk/comm/Connection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/zebra/sdk/printer/SGD;->SET(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)V

    return-void
.end method

.method public static SET(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-static {p2}, Lcom/zebra/sdk/settings/internal/ConnectionUtil;->selectConnection(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/comm/Connection;

    move-result-object p2

    instance-of v0, p2, Lcom/zebra/sdk/comm/StatusConnection;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/zebra/sdk/settings/internal/JsonHelper;->buildSetCommand(Ljava/util/Map;)[B

    move-result-object p0

    invoke-interface {p2}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result p1

    invoke-interface {p2}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v0

    new-instance v1, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {v1}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    invoke-interface {p2, p0, p1, v0, v1}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "! U1 setvar \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" \""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    :goto_0
    return-void
.end method
