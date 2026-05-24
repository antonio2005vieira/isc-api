.class public Lcom/zebra/sdk/printer/internal/FormatUtilZpl;
.super Lcom/zebra/sdk/printer/internal/FormatUtilA;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/FormatUtilA;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    return-void
.end method

.method public static extractDFName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const-string v1, "^"

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-le v2, v3, :cond_3

    sget-object v4, Lcom/zebra/sdk/printer/internal/CommandType;->dfCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    invoke-static {v1, v2, p0, v4}, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->findNextCommand(Ljava/lang/String;ILjava/lang/String;Lcom/zebra/sdk/printer/internal/CommandType;)Lcom/zebra/sdk/printer/internal/IndexAndCommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zebra/sdk/printer/internal/IndexAndCommandType;->getIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/zebra/sdk/printer/internal/IndexAndCommandType;->getCommand()Lcom/zebra/sdk/printer/internal/CommandType;

    move-result-object v2

    const/4 v5, 0x1

    if-le v4, v3, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x3

    sget-object v6, Lcom/zebra/sdk/printer/internal/CommandType;->ccCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    if-ne v2, v6, :cond_1

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    sget-object v6, Lcom/zebra/sdk/printer/internal/CommandType;->dfCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    if-ne v2, v6, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v0

    sget-object v6, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_FORMAT_PREFIX:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-static {p0, v2, v4}, Lcom/zebra/sdk/util/internal/StringUtilities;->indexOf(Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v2

    if-le v2, v3, :cond_2

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_2
    move v2, v4

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findNext(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zebra/sdk/printer/internal/CommandType;)Lcom/zebra/sdk/printer/internal/IndexAndCommandType;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/zebra/sdk/printer/internal/CommandType;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/zebra/sdk/printer/internal/CommandType;->ccCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/internal/CommandType;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/zebra/sdk/printer/internal/CommandType;->ccCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/internal/CommandType;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/zebra/sdk/printer/internal/CommandType;->xgCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/CommandType;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 p4, 0x1

    aput-object v0, v1, p4

    const/4 p4, 0x2

    aput-object p1, v1, p4

    const/4 p1, 0x3

    aput-object p0, v1, p1

    invoke-static {p2, p3, v1}, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->findSpecifiedCommand(ILjava/lang/String;[Ljava/lang/String;)Lcom/zebra/sdk/printer/internal/IndexAndCommandType;

    move-result-object p0

    return-object p0
.end method

.method private static findNextCommand(Ljava/lang/String;ILjava/lang/String;Lcom/zebra/sdk/printer/internal/CommandType;)Lcom/zebra/sdk/printer/internal/IndexAndCommandType;
    .locals 2

    const-string v0, "~"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->findNext(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zebra/sdk/printer/internal/CommandType;)Lcom/zebra/sdk/printer/internal/IndexAndCommandType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/IndexAndCommandType;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object p0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_FORMAT_PREFIX:Ljava/lang/String;

    sget-object v0, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_COMMAND_PREFIX:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->findNext(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zebra/sdk/printer/internal/CommandType;)Lcom/zebra/sdk/printer/internal/IndexAndCommandType;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static findOccurance(Ljava/util/List;Lcom/zebra/sdk/printer/FieldDescriptionData;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/FieldDescriptionData;",
            ">;",
            "Lcom/zebra/sdk/printer/FieldDescriptionData;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zebra/sdk/printer/FieldDescriptionData;

    iget v1, v1, Lcom/zebra/sdk/printer/FieldDescriptionData;->fieldNumber:I

    iget v2, p1, Lcom/zebra/sdk/printer/FieldDescriptionData;->fieldNumber:I

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private static findSpecifiedCommand(ILjava/lang/String;[Ljava/lang/String;)Lcom/zebra/sdk/printer/internal/IndexAndCommandType;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p0}, Lcom/zebra/sdk/util/internal/StringUtilities;->indexOf(Ljava/lang/String;[Ljava/lang/String;I)I

    move-result p0

    const/4 p2, -0x1

    if-le p0, p2, :cond_0

    add-int/lit8 p2, p0, 0x1

    add-int/lit8 v0, p0, 0x3

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zebra/sdk/printer/internal/CommandType;->getCommand(Ljava/lang/String;)Lcom/zebra/sdk/printer/internal/CommandType;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/zebra/sdk/printer/internal/CommandType;->unknownCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    :goto_0
    new-instance p2, Lcom/zebra/sdk/printer/internal/IndexAndCommandType;

    invoke-direct {p2, p0, p1}, Lcom/zebra/sdk/printer/internal/IndexAndCommandType;-><init>(ILcom/zebra/sdk/printer/internal/CommandType;)V

    return-object p2
.end method

.method public static generateStoredFormat(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->generateStoredFormat(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateStoredFormat(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
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
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "^XA\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "^XF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "^FS\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "^FN"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "^FD"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, ""

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "^PQ"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string p0, "^XZ"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zebra/sdk/util/internal/ZPLUtilities;->decorateWithFormatPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVariableFieldsS(Ljava/lang/String;)[Lcom/zebra/sdk/printer/FieldDescriptionData;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v2, "^"

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-le v3, v4, :cond_a

    sget-object v5, Lcom/zebra/sdk/printer/internal/CommandType;->fnCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    invoke-static {v2, v3, p0, v5}, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->findNextCommand(Ljava/lang/String;ILjava/lang/String;Lcom/zebra/sdk/printer/internal/CommandType;)Lcom/zebra/sdk/printer/internal/IndexAndCommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zebra/sdk/printer/internal/IndexAndCommandType;->getIndex()I

    move-result v5

    invoke-virtual {v3}, Lcom/zebra/sdk/printer/internal/IndexAndCommandType;->getCommand()Lcom/zebra/sdk/printer/internal/CommandType;

    move-result-object v3

    const/4 v6, 0x1

    if-le v5, v4, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_9

    add-int/lit8 v7, v5, 0x3

    sget-object v8, Lcom/zebra/sdk/printer/internal/CommandType;->ccCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    if-ne v3, v8, :cond_1

    add-int/lit8 v2, v7, 0x1

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    :cond_1
    sget-object v8, Lcom/zebra/sdk/printer/internal/CommandType;->fnCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    const/4 v9, 0x2

    if-ne v3, v8, :cond_5

    new-array v3, v9, [Ljava/lang/String;

    aput-object v2, v3, v1

    sget-object v5, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_FORMAT_PREFIX:Ljava/lang/String;

    aput-object v5, v3, v6

    invoke-static {p0, v3, v7}, Lcom/zebra/sdk/util/internal/StringUtilities;->indexOf(Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v3

    if-le v3, v4, :cond_8

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {v3}, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->parseFnCommand(Ljava/lang/String;)Lcom/zebra/sdk/printer/FieldDescriptionData;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->findOccurance(Ljava/util/List;Lcom/zebra/sdk/printer/FieldDescriptionData;)I

    move-result v5

    if-eq v5, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-ne v4, v6, :cond_4

    iget-object v4, v3, Lcom/zebra/sdk/printer/FieldDescriptionData;->fieldName:Ljava/lang/String;

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-ne v4, v6, :cond_8

    :goto_4
    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/zebra/sdk/printer/internal/MalformedFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :cond_5
    sget-object v8, Lcom/zebra/sdk/printer/internal/CommandType;->xgCommand:Lcom/zebra/sdk/printer/internal/CommandType;

    if-ne v3, v8, :cond_8

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v5, v5, 0x6

    new-array v3, v9, [Ljava/lang/String;

    const-string v8, ","

    aput-object v8, v3, v1

    sget-object v8, Lcom/zebra/sdk/util/internal/ZPLUtilities;->ZPL_INTERNAL_DELIMITER:Ljava/lang/String;

    aput-object v8, v3, v6

    invoke-static {p0, v3, v5}, Lcom/zebra/sdk/util/internal/StringUtilities;->indexOf(Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v3

    if-le v3, v4, :cond_8

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :try_start_1
    invoke-static {v3}, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->parseFnCommand(Ljava/lang/String;)Lcom/zebra/sdk/printer/FieldDescriptionData;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->findOccurance(Ljava/util/List;Lcom/zebra/sdk/printer/FieldDescriptionData;)I

    move-result v5

    if-eq v5, v4, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    if-ne v4, v6, :cond_4

    iget-object v4, v3, Lcom/zebra/sdk/printer/FieldDescriptionData;->fieldName:Ljava/lang/String;
    :try_end_1
    .catch Lcom/zebra/sdk/printer/internal/MalformedFormatException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    :goto_6
    if-ne v4, v6, :cond_8

    goto :goto_4

    :catch_0
    :cond_8
    :goto_7
    move v3, v7

    goto/16 :goto_0

    :cond_9
    move v3, v5

    goto/16 :goto_0

    :cond_a
    new-array p0, v1, [Lcom/zebra/sdk/printer/FieldDescriptionData;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/zebra/sdk/printer/FieldDescriptionData;

    return-object p0
.end method

.method private isOnlySettingsChannelOpen(Lcom/zebra/sdk/comm/MultichannelConnection;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/MultichannelConnection;->getStatusChannel()Lcom/zebra/sdk/comm/StatusConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/zebra/sdk/comm/StatusConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zebra/sdk/comm/MultichannelConnection;->getPrintingChannel()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    invoke-interface {p1}, Lcom/zebra/sdk/comm/Connection;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static parseFnCommand(Ljava/lang/String;)Lcom/zebra/sdk/printer/FieldDescriptionData;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/printer/internal/MalformedFormatException;
        }
    .end annotation

    const/16 v0, 0x22

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const-string v2, "\'^FN\' integer must be between 1 and 9999"

    const/16 v3, 0x270f

    const-string v4, "\'^FN\' must be followed by an integer"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-ne v0, v7, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lt p0, v6, :cond_0

    if-gt p0, v3, :cond_0

    new-instance v0, Lcom/zebra/sdk/printer/FieldDescriptionData;

    invoke-direct {v0, p0, v5}, Lcom/zebra/sdk/printer/FieldDescriptionData;-><init>(ILjava/lang/String;)V

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/zebra/sdk/printer/internal/MalformedFormatException;

    invoke-direct {p0, v2}, Lcom/zebra/sdk/printer/internal/MalformedFormatException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Lcom/zebra/sdk/printer/internal/MalformedFormatException;

    invoke-direct {p0, v4}, Lcom/zebra/sdk/printer/internal/MalformedFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zebra/sdk/util/internal/StringUtilities;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lt p0, v6, :cond_2

    if-gt p0, v3, :cond_2

    new-instance v0, Lcom/zebra/sdk/printer/FieldDescriptionData;

    invoke-direct {v0, p0, v5}, Lcom/zebra/sdk/printer/FieldDescriptionData;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/zebra/sdk/printer/internal/MalformedFormatException;

    invoke-direct {p0, v2}, Lcom/zebra/sdk/printer/internal/MalformedFormatException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    new-instance p0, Lcom/zebra/sdk/printer/internal/MalformedFormatException;

    invoke-direct {p0, v4}, Lcom/zebra/sdk/printer/internal/MalformedFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-object v5
.end method

.method private throwExceptionStatusOnly()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    instance-of v0, v0, Lcom/zebra/sdk/comm/MultichannelConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    check-cast v0, Lcom/zebra/sdk/comm/MultichannelConnection;

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->isOnlySettingsChannelOpen(Lcom/zebra/sdk/comm/MultichannelConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Operation cannot be performed with only the status channel open"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    instance-of v0, v0, Lcom/zebra/sdk/comm/StatusConnection;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Operation cannot be performed over the status channel"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getVariableFields(Ljava/lang/String;)[Lcom/zebra/sdk/printer/FieldDescriptionData;
    .locals 0

    invoke-static {p1}, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->getVariableFieldsS(Ljava/lang/String;)[Lcom/zebra/sdk/printer/FieldDescriptionData;

    move-result-object p1

    return-object p1
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

    invoke-virtual {p0, p1, p2, v0}, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->printStoredFormat(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
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
    .locals 1
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

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->throwExceptionStatusOnly()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-static {p1, p2}, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->generateStoredFormat(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    return-void
.end method

.method public retrieveFormatFromPrinter(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^XA^HF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "^XZ"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zebra/sdk/util/internal/ZPLUtilities;->decorateWithFormatPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/comm/internal/PrinterCommand;->sendAndWaitForResponse(Ljava/io/OutputStream;Lcom/zebra/sdk/comm/Connection;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public retrieveFormatFromPrinter(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^XA^HF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "^XZ"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zebra/sdk/util/internal/ZPLUtilities;->decorateWithFormatPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/comm/internal/PrinterCommand;->sendAndWaitForResponse(Lcom/zebra/sdk/comm/Connection;)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
